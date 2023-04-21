/*
  Warnings:

  - A unique constraint covering the columns `[index,discription,awardDate]` on the table `GroupInfo` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "GroupInfo_index_key";

-- CreateIndex
CREATE UNIQUE INDEX "GroupInfo_index_discription_awardDate_key" ON "GroupInfo"("index", "discription", "awardDate");
