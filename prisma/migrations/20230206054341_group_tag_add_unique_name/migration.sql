/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `GroupTag` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "GroupTag_name_key" ON "GroupTag"("name");
