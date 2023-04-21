/*
  Warnings:

  - A unique constraint covering the columns `[key]` on the table `FeedCategoryList` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[key]` on the table `SportsEvent` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `key` to the `FeedCategoryList` table without a default value. This is not possible if the table is not empty.
  - Added the required column `key` to the `SportsEvent` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "FeedCategoryList" ADD COLUMN     "key" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "SportsEvent" ADD COLUMN     "key" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "FeedCategoryList_key_key" ON "FeedCategoryList"("key");

-- CreateIndex
CREATE UNIQUE INDEX "SportsEvent_key_key" ON "SportsEvent"("key");
