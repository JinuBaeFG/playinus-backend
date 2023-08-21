-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestId_fkey";

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey" FOREIGN KEY ("contestGroupMatchResultId") REFERENCES "ContestGroupMatchResult"("id") ON DELETE CASCADE ON UPDATE CASCADE;
