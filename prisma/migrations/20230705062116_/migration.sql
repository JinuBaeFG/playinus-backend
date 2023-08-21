-- AlterTable
ALTER TABLE "ContestGroupMatchHistroy" ADD COLUMN     "contestGroupMatchResultId" INTEGER;

-- CreateTable
CREATE TABLE "ContestGroupMatchResult" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT,
    "contestMatchGroupId" INTEGER,
    "contestTeamId" INTEGER,
    "totalWin" INTEGER NOT NULL DEFAULT 0,
    "totalLose" INTEGER NOT NULL DEFAULT 0,
    "totalWinScore" INTEGER NOT NULL DEFAULT 0,
    "totalLoseScore" INTEGER NOT NULL DEFAULT 0,
    "totalScore" INTEGER NOT NULL DEFAULT 0,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestGroupMatchResult_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestGroupMatchResultId_fkey" FOREIGN KEY ("contestGroupMatchResultId") REFERENCES "ContestGroupMatchResult"("id") ON DELETE SET NULL ON UPDATE CASCADE;
