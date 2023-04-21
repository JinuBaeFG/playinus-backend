-- CreateTable
CREATE TABLE "Config" (
    "id" SERIAL NOT NULL,
    "privacyTerms" TEXT,
    "gpsTerms" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Config_pkey" PRIMARY KEY ("id")
);
