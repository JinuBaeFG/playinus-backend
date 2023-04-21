/*
  Warnings:

  - You are about to drop the column `tutorInquiryId` on the `Tutor` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "TutorInquiry" DROP CONSTRAINT "TutorInquiry_userId_fkey";

-- AlterTable
ALTER TABLE "Tutor" DROP COLUMN "tutorInquiryId";

-- AlterTable
ALTER TABLE "TutorInquiry" ALTER COLUMN "userId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "TutorInquiry" ADD CONSTRAINT "TutorInquiry_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
