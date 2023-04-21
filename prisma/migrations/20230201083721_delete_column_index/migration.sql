/*
  Warnings:

  - You are about to drop the column `index` on the `GroupInfo` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[discription,awardDate]` on the table `GroupInfo` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "GroupInfo_index_discription_awardDate_key";

-- AlterTable
ALTER TABLE "GroupInfo" DROP COLUMN "index";

-- CreateIndex
CREATE UNIQUE INDEX "GroupInfo_discription_awardDate_key" ON "GroupInfo"("discription", "awardDate");
