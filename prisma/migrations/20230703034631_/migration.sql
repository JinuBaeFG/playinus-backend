-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistroy" DROP CONSTRAINT "ContestGroupMatchHistroy_opponentTeamId_fkey";

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistroy" ADD CONSTRAINT "ContestGroupMatchHistroy_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
