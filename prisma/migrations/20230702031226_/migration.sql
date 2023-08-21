-- AlterTable
ALTER TABLE "ContestTeam" ADD COLUMN     "contestMatchGroupId" INTEGER,
ADD COLUMN     "contestTournamentGroupId" INTEGER;

-- CreateTable
CREATE TABLE "ContestCourt" (
    "id" SERIAL NOT NULL,
    "courtName" TEXT NOT NULL,
    "contestId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestCourt_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestMatchGroup" (
    "id" SERIAL NOT NULL,
    "groupNo" INTEGER NOT NULL,
    "contestId" TEXT,
    "contestTierGroupId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestMatchGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestGroupMatchHistroy" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT,
    "contestTeamId" INTEGER,
    "opponetTeamId" INTEGER,
    "contestMatchGroupId" INTEGER,
    "winOrLose" TEXT,
    "totalScore" TEXT,
    "winScore" INTEGER,
    "loseScore" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestGroupMatchHistroy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestTournamentGroup" (
    "id" SERIAL NOT NULL,
    "MatchNo" INTEGER NOT NULL,
    "MatchName" TEXT NOT NULL,
    "contestId" TEXT,
    "contestTierGroupId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestTournamentGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestTournamentHistory" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT,
    "contestTournamentGroupId" INTEGER NOT NULL,
    "contestTeamId" INTEGER,
    "opponetTeamId" INTEGER,
    "winOrLose" TEXT,
    "totalScore" TEXT,
    "winScore" INTEGER,
    "loseScore" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestTournamentHistory_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ContestGroupMatchHistroy_opponetTeamId_key" ON "ContestGroupMatchHistroy"("opponetTeamId");

-- CreateIndex
CREATE UNIQUE INDEX "ContestTournamentHistory_opponetTeamId_key" ON "ContestTournamentHistory"("opponetTeamId");

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTournamentGroupId_fkey" FOREIGN KEY ("contestTournamentGroupId") REFERENCES "ContestTournamentGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestCourt" ADD CONSTRAINT "ContestCourt_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestMatchGroup" ADD CONSTRAINT "ContestMatchGroup_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestMatchGroup" ADD CONSTRAINT "ContestMatchGroup_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_opponetTeamId_fkey" FOREIGN KEY ("opponetTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentGroup" ADD CONSTRAINT "ContestTournamentGroup_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentGroup" ADD CONSTRAINT "ContestTournamentGroup_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTournamentGroupId_fkey" FOREIGN KEY ("contestTournamentGroupId") REFERENCES "ContestTournamentGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_opponetTeamId_fkey" FOREIGN KEY ("opponetTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;
