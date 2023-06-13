/*
  Warnings:

  - You are about to drop the column `blockId` on the `BlockUser` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[blockedById]` on the table `BlockUser` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "BlockUser_blockId_key";

-- AlterTable
ALTER TABLE "BlockUser" DROP COLUMN "blockId",
ADD COLUMN     "blockedById" INTEGER;

-- CreateIndex
CREATE UNIQUE INDEX "BlockUser_blockedById_key" ON "BlockUser"("blockedById");

-- AddForeignKey
ALTER TABLE "BlockUser" ADD CONSTRAINT "BlockUser_blockedById_fkey" FOREIGN KEY ("blockedById") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
