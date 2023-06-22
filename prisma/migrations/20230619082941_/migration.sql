/*
  Warnings:

  - You are about to drop the column `contestDescription` on the `Contest` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Contest" DROP COLUMN "contestDescription",
ADD COLUMN     "contestDiscription" TEXT;
