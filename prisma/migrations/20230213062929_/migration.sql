/*
  Warnings:

  - You are about to drop the column `payload` on the `TutorInquiryComment` table. All the data in the column will be lost.
  - Added the required column `reponseTitle` to the `TutorInquiryComment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `responseDiscription` to the `TutorInquiryComment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "TutorInquiryComment" DROP COLUMN "payload",
ADD COLUMN     "reponseTitle" TEXT NOT NULL,
ADD COLUMN     "responseDiscription" TEXT NOT NULL;
