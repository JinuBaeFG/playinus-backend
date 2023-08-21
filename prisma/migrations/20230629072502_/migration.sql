/*
  Warnings:

  - You are about to drop the `_UserToContestPartner` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[userId]` on the table `ContestPartner` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "_UserToContestPartner" DROP CONSTRAINT "_UserToContestPartner_A_fkey";

-- DropForeignKey
ALTER TABLE "_UserToContestPartner" DROP CONSTRAINT "_UserToContestPartner_B_fkey";

-- DropIndex
DROP INDEX "ContestPartner_contestUserId_key";

-- AlterTable
ALTER TABLE "ContestPartner" ADD COLUMN     "userId" INTEGER;

-- DropTable
DROP TABLE "_UserToContestPartner";

-- CreateIndex
CREATE UNIQUE INDEX "ContestPartner_userId_key" ON "ContestPartner"("userId");

-- AddForeignKey
ALTER TABLE "ContestPartner" ADD CONSTRAINT "ContestPartner_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
