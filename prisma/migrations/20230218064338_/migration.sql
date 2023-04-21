/*
  Warnings:

  - Added the required column `payload` to the `BoardComment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `payload` to the `NoticeComment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "BoardComment" ADD COLUMN     "payload" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "NoticeComment" ADD COLUMN     "payload" TEXT NOT NULL;
