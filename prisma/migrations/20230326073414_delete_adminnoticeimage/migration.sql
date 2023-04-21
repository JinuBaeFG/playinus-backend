/*
  Warnings:

  - You are about to drop the `AdminNoticeImage` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "AdminNoticeImage" DROP CONSTRAINT "AdminNoticeImage_adminNoticeId_fkey";

-- DropTable
DROP TABLE "AdminNoticeImage";
