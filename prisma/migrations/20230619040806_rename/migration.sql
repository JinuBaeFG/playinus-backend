/*
  Warnings:

  - You are about to drop the column `contestStatdium` on the `Contest` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Contest" DROP COLUMN "contestStatdium",
ADD COLUMN     "contestStadium" TEXT;
