/*
  Warnings:

  - You are about to drop the column `teamName` on the `ContestUser` table. All the data in the column will be lost.
  - You are about to drop the `ContestPartner` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ContestPartner" DROP CONSTRAINT "ContestPartner_contestUserId_fkey";

-- DropForeignKey
ALTER TABLE "ContestPartner" DROP CONSTRAINT "ContestPartner_userId_fkey";

-- AlterTable
ALTER TABLE "ContestUser" DROP COLUMN "teamName",
ADD COLUMN     "contestTierGroupId" INTEGER;

-- DropTable
DROP TABLE "ContestPartner";

-- CreateTable
CREATE TABLE "ContestTeam" (
    "id" SERIAL NOT NULL,
    "teamName" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestTeam_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestTierGroup" (
    "id" SERIAL NOT NULL,
    "groupName" TEXT,
    "contestTeamId" INTEGER,
    "contestId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestTierGroup_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_ContestTeamToContestUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "ContestTeam_teamName_key" ON "ContestTeam"("teamName");

-- CreateIndex
CREATE UNIQUE INDEX "_ContestTeamToContestUser_AB_unique" ON "_ContestTeamToContestUser"("A", "B");

-- CreateIndex
CREATE INDEX "_ContestTeamToContestUser_B_index" ON "_ContestTeamToContestUser"("B");

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTierGroup" ADD CONSTRAINT "ContestTierGroup_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTierGroup" ADD CONSTRAINT "ContestTierGroup_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ContestTeamToContestUser" ADD CONSTRAINT "_ContestTeamToContestUser_A_fkey" FOREIGN KEY ("A") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ContestTeamToContestUser" ADD CONSTRAINT "_ContestTeamToContestUser_B_fkey" FOREIGN KEY ("B") REFERENCES "ContestUser"("id") ON DELETE CASCADE ON UPDATE CASCADE;
