/*
  Warnings:

  - A unique constraint covering the columns `[userId]` on the table `GroupPresident` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "GroupPresident_userId_key" ON "GroupPresident"("userId");
