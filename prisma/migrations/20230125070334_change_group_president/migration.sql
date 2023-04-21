/*
  Warnings:

  - You are about to drop the column `groupPresidentId` on the `Group` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userId,groupId]` on the table `GroupPresident` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `groupId` to the `GroupPresident` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Group" DROP CONSTRAINT "Group_groupPresidentId_fkey";

-- AlterTable
ALTER TABLE "Group" DROP COLUMN "groupPresidentId";

-- AlterTable
ALTER TABLE "GroupPresident" ADD COLUMN     "groupId" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "GroupPresident_userId_groupId_key" ON "GroupPresident"("userId", "groupId");

-- AddForeignKey
ALTER TABLE "GroupPresident" ADD CONSTRAINT "GroupPresident_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
