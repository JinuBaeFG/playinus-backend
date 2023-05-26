require("dotenv").config();
import * as express from "express";
import * as logger from "morgan";
import { ApolloServer } from "apollo-server-express";
import client from "./client";
import { typeDefs, resolvers } from "./schema";
import { getUser } from "./users/users.utils";
import * as http from "http";
import axios from "axios";
const CryptoJS = require("crypto-js");
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
app.use(
  express.json({
    limit: "50mb",
  })
);
app.use(
  express.urlencoded({
    limit: "50mb",
    extended: false,
  })
);

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

app.get("/api/certified", (req, res) => {
  const phNumber = req.query.number;
  let crtNumber = "";

  for (let i = 0; i < 4; i++) {
    crtNumber += Math.floor(Math.random() * 10);
  }

  var date = Date.now().toString();
  var signature = makeSignature();

  res.header("Access-Control-Allow-Origin", "*");
  res.status(200).json({ crtNumber: crtNumber });

  /*axios({
    method: "POST",
    url: `https://sens.apigw.ntruss.com/sms/v2/services/${process.env.NAVER_SMS_SERVICE_ID}/messages`,
    headers: {
      "Contenc-type": "application/json; charset=utf-8",
      "x-ncp-iam-access-key": `${process.env.NAVER_API_ACCESS_KEY}`,
      "x-ncp-apigw-timestamp": date,
      "x-ncp-apigw-signature-v2": signature,
    },
    data: {
      type: "SMS",
      contryCode: "82",
      from: `${process.env.NAVER_SMS_PHONE_NUMBER}`,
      content: `플레이인어스 - 인증번호 : [${crtNumber}]`,
      messages: [
        {
          to: `${phNumber}`,
        },
      ],
    },
  })
    .then((response) => {
      console.log(response.data);
      res.header("Access-Control-Allow-Origin", "*");
      res.status(200).json({ crtNumber: crtNumber });
    })
    .catch((err) => {
      console.log(err);
    });*/
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

app.use("*", cors(corsOptions));

const httpsServer = http.createServer(app);
server.installSubscriptionHandlers(httpsServer);

httpsServer.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}/`);
});

function makeSignature() {
  var space = " "; // one space
  var newLine = "\n"; // new line
  var method = "POST"; // method
  var url = `/sms/v2/services/${process.env.NAVER_SMS_SERVICE_ID}/messages`;
  var timestamp = Date.now().toString(); // current timestamp (epoch)
  var accessKey = `${process.env.NAVER_API_ACCESS_KEY}`; // access key id (from portal or Sub Account)
  var secretKey = `${process.env.NAVER_API_ACCESS_SECRET_KEY}`; // secret key (from portal or Sub Account)

  var hmac = CryptoJS.algo.HMAC.create(CryptoJS.algo.SHA256, secretKey);
  hmac.update(method);
  hmac.update(space);
  hmac.update(url);
  hmac.update(newLine);
  hmac.update(timestamp);
  hmac.update(newLine);
  hmac.update(accessKey);

  var hash = hmac.finalize();
  return hash.toString(CryptoJS.enc.Base64);
}
