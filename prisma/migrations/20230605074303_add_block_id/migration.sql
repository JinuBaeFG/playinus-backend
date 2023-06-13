/*
  Warnings:

  - A unique constraint covering the columns `[blockId]` on the table `BlockUser` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `blockId` to the `BlockUser` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "BlockUser_userId_key";

-- AlterTable
ALTER TABLE "BlockUser" ADD COLUMN     "blockId" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "BlockUser_blockId_key" ON "BlockUser"("blockId");
