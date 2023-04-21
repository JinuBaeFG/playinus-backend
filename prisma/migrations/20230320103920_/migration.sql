/*
  Warnings:

  - You are about to drop the column `imagePath` on the `Banner` table. All the data in the column will be lost.
  - Added the required column `bannerImagePath` to the `Banner` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Banner" DROP COLUMN "imagePath",
ADD COLUMN     "bannerImagePath" TEXT NOT NULL,
ADD COLUMN     "sortation" TEXT;

-- CreateTable
CREATE TABLE "AdminNotice" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "AdminNotice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AdminNoticeImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "adminNoticeId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "AdminNoticeImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BannerDiscImagePath" (
    "id" SERIAL NOT NULL,
    "bannerId" INTEGER,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BannerDiscImagePath_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "AdminNoticeImage_imagePath_key" ON "AdminNoticeImage"("imagePath");

-- AddForeignKey
ALTER TABLE "AdminNoticeImage" ADD CONSTRAINT "AdminNoticeImage_adminNoticeId_fkey" FOREIGN KEY ("adminNoticeId") REFERENCES "AdminNotice"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BannerDiscImagePath" ADD CONSTRAINT "BannerDiscImagePath_bannerId_fkey" FOREIGN KEY ("bannerId") REFERENCES "Banner"("id") ON DELETE SET NULL ON UPDATE CASCADE;
