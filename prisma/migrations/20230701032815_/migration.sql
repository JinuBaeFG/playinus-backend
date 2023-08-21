/*
  Warnings:

  - You are about to drop the column `contestTeamId` on the `ContestTierGroup` table. All the data in the column will be lost.
  - You are about to drop the `_ContestTeamToContestUser` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `contestTierGroupId` to the `ContestTeam` table without a default value. This is not possible if the table is not empty.
  - Made the column `groupName` on table `ContestTierGroup` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "ContestTierGroup" DROP CONSTRAINT "ContestTierGroup_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "_ContestTeamToContestUser" DROP CONSTRAINT "_ContestTeamToContestUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_ContestTeamToContestUser" DROP CONSTRAINT "_ContestTeamToContestUser_B_fkey";

-- AlterTable
ALTER TABLE "ContestTeam" ADD COLUMN     "contestTierGroupId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "ContestTierGroup" DROP COLUMN "contestTeamId",
ALTER COLUMN "groupName" SET NOT NULL;

-- AlterTable
ALTER TABLE "ContestUser" ADD COLUMN     "contestTeamId" INTEGER;

-- DropTable
DROP TABLE "_ContestTeamToContestUser";

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
