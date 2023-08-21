/*
  Warnings:

  - You are about to drop the column `roundAdvance` on the `ContestTournamentGroup` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ContestTierGroup" ADD COLUMN     "roundAdvance" INTEGER;

-- AlterTable
ALTER TABLE "ContestTournamentGroup" DROP COLUMN "roundAdvance";
