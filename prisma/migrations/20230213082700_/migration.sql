/*
  Warnings:

  - Added the required column `tutorInquiryId` to the `TutorInquiryComment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "TutorInquiryComment" ADD COLUMN     "tutorInquiryId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "TutorInquiryComment" ADD CONSTRAINT "TutorInquiryComment_tutorInquiryId_fkey" FOREIGN KEY ("tutorInquiryId") REFERENCES "TutorInquiry"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
