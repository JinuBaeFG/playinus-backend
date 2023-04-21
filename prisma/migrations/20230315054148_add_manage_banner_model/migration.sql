-- CreateTable
CREATE TABLE "Banner" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT,
    "sidoName" TEXT,
    "gusiName" TEXT,
    "dongEubMyunName" TEXT,
    "riName" TEXT,
    "roadName" TEXT,
    "buildingNumber" TEXT,
    "zipcode" TEXT,
    "activeArea" TEXT,
    "address" TEXT,
    "addrRoad" TEXT,
    "areaLatitude" TEXT,
    "areaLongitude" TEXT,
    "sportsEvent" TEXT,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Banner_pkey" PRIMARY KEY ("id")
);
