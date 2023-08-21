/*
  Warnings:

  - You are about to drop the column `state` on the `ContestGroupMatchHistory` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ContestGroupMatchHistory" DROP COLUMN "state",
ADD COLUMN     "status" TEXT;

-- AlterTable
ALTER TABLE "ContestTournamentHistory" ADD COLUMN     "status" TEXT;
