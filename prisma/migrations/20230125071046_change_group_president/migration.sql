/*
  Warnings:

  - You are about to drop the column `groupId` on the `GroupPresident` table. All the data in the column will be lost.
  - Added the required column `groupPresidentId` to the `Group` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "GroupPresident" DROP CONSTRAINT "GroupPresident_groupId_fkey";

-- DropIndex
DROP INDEX "GroupPresident_userId_groupId_key";

-- AlterTable
ALTER TABLE "Group" ADD COLUMN     "groupPresidentId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "GroupPresident" DROP COLUMN "groupId";

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupPresidentId_fkey" FOREIGN KEY ("groupPresidentId") REFERENCES "GroupPresident"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
