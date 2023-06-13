/*
  Warnings:

  - A unique constraint covering the columns `[userId]` on the table `BlockUser` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "BlockUser_userId_key" ON "BlockUser"("userId");
