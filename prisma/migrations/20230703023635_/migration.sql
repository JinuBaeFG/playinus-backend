-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestTierGroupId_fkey";

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;
