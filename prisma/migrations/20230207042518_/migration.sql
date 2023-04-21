/*
  Warnings:

  - You are about to drop the `_GroupToGroupImage` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[name]` on the table `Group` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId]` on the table `Tutor` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `groupImageId` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tutorImageId` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tutorInquiryId` to the `Tutor` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_GroupToGroupImage" DROP CONSTRAINT "_GroupToGroupImage_A_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToGroupImage" DROP CONSTRAINT "_GroupToGroupImage_B_fkey";

-- DropIndex
DROP INDEX "Tutor_name_key";

-- AlterTable
ALTER TABLE "Group" ADD COLUMN     "groupImageId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Tutor" ADD COLUMN     "tutorImageId" INTEGER NOT NULL,
ADD COLUMN     "tutorInquiryId" INTEGER NOT NULL,
ALTER COLUMN "buildingNumber" SET DATA TYPE TEXT,
ALTER COLUMN "zipcode" SET DATA TYPE TEXT;

-- DropTable
DROP TABLE "_GroupToGroupImage";

-- CreateTable
CREATE TABLE "TutorInquiry" (
    "id" SERIAL NOT NULL,
    "tutorId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,
    "inquiryTitle" TEXT NOT NULL,
    "inquiryDiscription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorInquiry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorImage_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Group_name_key" ON "Group"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Tutor_userId_key" ON "Tutor"("userId");

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupImageId_fkey" FOREIGN KEY ("groupImageId") REFERENCES "GroupImage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tutor" ADD CONSTRAINT "Tutor_tutorImageId_fkey" FOREIGN KEY ("tutorImageId") REFERENCES "TutorImage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiry" ADD CONSTRAINT "TutorInquiry_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiry" ADD CONSTRAINT "TutorInquiry_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
