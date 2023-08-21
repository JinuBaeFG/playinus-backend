-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchResult" DROP CONSTRAINT "ContestGroupMatchResult_contestMatchGroupId_fkey";

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey" FOREIGN KEY ("contestGroupMatchResultId") REFERENCES "ContestGroupMatchResult"("id") ON DELETE SET NULL ON UPDATE CASCADE;
