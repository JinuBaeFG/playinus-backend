-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestTierGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTierGroup" DROP CONSTRAINT "ContestTierGroup_contestId_fkey";

-- DropForeignKey
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_contestTierGroupId_fkey";

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTierGroup" ADD CONSTRAINT "ContestTierGroup_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("id") ON DELETE CASCADE ON UPDATE CASCADE;
