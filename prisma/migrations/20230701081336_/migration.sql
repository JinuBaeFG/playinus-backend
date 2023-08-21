-- DropForeignKey
ALTER TABLE "ContestTierGroup" DROP CONSTRAINT "ContestTierGroup_contestId_fkey";

-- AlterTable
ALTER TABLE "ContestTierGroup" ALTER COLUMN "contestId" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "ContestTierGroup" ADD CONSTRAINT "ContestTierGroup_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;
