/*
  Warnings:

  - A unique constraint covering the columns `[contestId,userId]` on the table `ContestUser` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestUser_contestId_userId_key" ON "ContestUser"("contestId", "userId");
