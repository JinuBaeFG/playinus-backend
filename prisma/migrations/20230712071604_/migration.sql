/*
  Warnings:

  - You are about to drop the column `contestMatchGroupId` on the `ContestTournamentGroup` table. All the data in the column will be lost.
  - You are about to drop the column `contestMatchGroupId` on the `ContestTournamentHistory` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "ContestTournamentGroup" DROP CONSTRAINT "ContestTournamentGroup_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestMatchGroupId_fkey";

-- AlterTable
ALTER TABLE "ContestTournamentGroup" DROP COLUMN "contestMatchGroupId";

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP COLUMN "contestMatchGroupId";
