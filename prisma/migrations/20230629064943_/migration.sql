/*
  Warnings:

  - You are about to drop the `_ContestPartnerToUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ContestPartner" DROP CONSTRAINT "ContestPartner_contestUserId_fkey";

-- DropForeignKey
ALTER TABLE "_ContestPartnerToUser" DROP CONSTRAINT "_ContestPartnerToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_ContestPartnerToUser" DROP CONSTRAINT "_ContestPartnerToUser_B_fkey";

-- DropTable
DROP TABLE "_ContestPartnerToUser";

-- CreateTable
CREATE TABLE "_UserToContestPartner" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_UserToContestPartner_AB_unique" ON "_UserToContestPartner"("A", "B");

-- CreateIndex
CREATE INDEX "_UserToContestPartner_B_index" ON "_UserToContestPartner"("B");

-- AddForeignKey
ALTER TABLE "ContestPartner" ADD CONSTRAINT "ContestPartner_contestUserId_fkey" FOREIGN KEY ("contestUserId") REFERENCES "ContestUser"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_UserToContestPartner" ADD CONSTRAINT "_UserToContestPartner_A_fkey" FOREIGN KEY ("A") REFERENCES "ContestPartner"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_UserToContestPartner" ADD CONSTRAINT "_UserToContestPartner_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
