require("dotenv").config();
import * as express from "express";
import * as logger from "morgan";
import { ApolloServer } from "apollo-server-express";
import client from "./client";
import { typeDefs, resolvers } from "./schema";
import { getUser } from "./users/users.utils";
import * as http from "http";
import axios from "axios";
const multer = require("multer");
const path = require("path");
const mime = require("mime-types");
const { v4: uuid } = require("uuid");
var cors = require("cors");

const PORT = process.env.PORT;
const server = new ApolloServer({
  resolvers,
  typeDefs,
  context: async (ctx) => {
    if (ctx.req) {
      return {
        loggedInUser: await getUser(ctx.req.headers.token),
        client,
      };
    } else {
      const {
        connection: { context },
      } = ctx;
      return {
        loggedInUser: context.loggedInUser,
      };
    }
  },
  subscriptions: {
    onConnect: async ({ token }: any) => {
      if (!token) {
        throw new Error("You can not listen.");
      }
      const loggedInUser = await getUser(token);

      return {
        loggedInUser,
      };
    },
  },
});

const app = express();
app.use(logger("dev"));
server.applyMiddleware({ app });

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "uploads");
  },
  filename: (req, file, cb) => {
    cb(null, `${uuid()}.${mime.extension(file.mimetype)}`);
  },
});

const upload = multer({
  storage,
  fileFilter: (req, file, cb) => {
    if (["image/jpge", "image/jpg", "image/png"].includes(file.mimetype)) {
      cb(null, true);
    }
  },
  limits: {
    fileSize: 1024 * 1024 * 5,
  },
});

var corsOptions = {
  origin: "http://localhost:3000",
  optionsSuccessStatus: 200,
  credentials: true,
};

app.post("/api/uploads", upload.single("file"), (req, res) => {
  res.header("Access-Control-Allow-Origin", "*");
  res.status(200).json(req.file);
});

app.get("/api/navermaps", (req, res) => {
  axios
    .get("https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode", {
      params: {
        query: req.query.query,
      },
      headers: {
        "X-NCP-APIGW-API-KEY-ID": `${process.env.NAVER_MAPS_API_ID}`,
        "X-NCP-APIGW-API-KEY": `${process.env.NAVER_MAPS_API_KEY}`,
      },
    })
    .then((response) => {
      res.header("Access-Control-Allow-Origin", "*");
      res.status(200).json(response.data);
    })
    .catch((error) => {
      console.log("error", error.response.data);
    });
});

app.use(
  "/uploads",
  express.static("uploads"),
  express.json(),
  cors(corsOptions),
  upload.array("files")
);

const httpsServer = http.createServer(app);
server.installSubscriptionHandlers(httpsServer);

httpsServer.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}/`);
});
