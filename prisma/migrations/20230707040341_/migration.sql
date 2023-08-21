/*
  Warnings:

  - You are about to drop the `ContestGroupMatchHistroy` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestCourtId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestGroupMatchResultId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_opponentTeamId_fkey";

-- DropTable
DROP TABLE "ContestGroupMatchHistroy";

-- CreateTable
CREATE TABLE "ContestGroupMatchHistory" (
    "id" SERIAL NOT NULL,
    "matchNo" INTEGER,
    "contestId" TEXT,
    "contestTeamId" INTEGER,
    "opponentTeamId" INTEGER,
    "contestMatchGroupId" INTEGER,
    "contestGroupMatchResultId" INTEGER,
    "contestCourtId" INTEGER,
    "matchTime" TEXT,
    "winOrLose" TEXT,
    "resultScore" TEXT,
    "winScore" INTEGER,
    "loseScore" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestGroupMatchHistory_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistory_contestTeamId_opponentTeamId_key" ON "ContestGroupMatchHistory"("contestTeamId", "opponentTeamId");

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey" FOREIGN KEY ("contestGroupMatchResultId") REFERENCES "ContestGroupMatchResult"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestCourtId_fkey" FOREIGN KEY ("contestCourtId") REFERENCES "ContestCourt"("id") ON DELETE SET NULL ON UPDATE CASCADE;
