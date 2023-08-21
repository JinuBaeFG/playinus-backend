/*
  Warnings:

  - You are about to drop the column `MatchName` on the `ContestTournamentGroup` table. All the data in the column will be lost.
  - You are about to drop the column `MatchNo` on the `ContestTournamentGroup` table. All the data in the column will be lost.
  - Added the required column `matchName` to the `ContestTournamentGroup` table without a default value. This is not possible if the table is not empty.
  - Added the required column `matchNo` to the `ContestTournamentGroup` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ContestTournamentGroup" DROP COLUMN "MatchName",
DROP COLUMN "MatchNo",
ADD COLUMN     "matchName" TEXT NOT NULL,
ADD COLUMN     "matchNo" INTEGER NOT NULL;
