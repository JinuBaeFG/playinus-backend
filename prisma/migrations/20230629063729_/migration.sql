/*
  Warnings:

  - You are about to drop the column `userId` on the `ContestPartner` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[contestUserId]` on the table `ContestPartner` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "ContestPartner" DROP CONSTRAINT "ContestPartner_userId_fkey";

-- AlterTable
ALTER TABLE "ContestPartner" DROP COLUMN "userId";

-- CreateTable
CREATE TABLE "_ContestPartnerToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_ContestPartnerToUser_AB_unique" ON "_ContestPartnerToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_ContestPartnerToUser_B_index" ON "_ContestPartnerToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "ContestPartner_contestUserId_key" ON "ContestPartner"("contestUserId");

-- AddForeignKey
ALTER TABLE "_ContestPartnerToUser" ADD CONSTRAINT "_ContestPartnerToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "ContestPartner"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ContestPartnerToUser" ADD CONSTRAINT "_ContestPartnerToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
