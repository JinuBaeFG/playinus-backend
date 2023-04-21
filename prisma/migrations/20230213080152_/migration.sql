/*
  Warnings:

  - You are about to drop the column `reponseTitle` on the `TutorInquiryComment` table. All the data in the column will be lost.
  - Added the required column `responseTitle` to the `TutorInquiryComment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "TutorInquiryComment" DROP COLUMN "reponseTitle",
ADD COLUMN     "responseTitle" TEXT NOT NULL;
