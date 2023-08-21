/*
  Warnings:

  - You are about to drop the column `totalScore` on the `ContestGroupMatchHistroy` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ContestGroupMatchHistroy" DROP COLUMN "totalScore",
ADD COLUMN     "matchTime" TEXT,
ADD COLUMN     "resultScore" TEXT;
