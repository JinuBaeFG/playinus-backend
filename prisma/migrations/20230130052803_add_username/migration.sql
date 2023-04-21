/*
  Warnings:

  - A unique constraint covering the columns `[username]` on the table `GroupPresident` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "GroupPresident_username_key" ON "GroupPresident"("username");
