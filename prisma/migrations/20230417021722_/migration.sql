/*
  Warnings:

  - You are about to drop the column `sortkey` on the `FeedCategoryList` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[sortKey]` on the table `FeedCategoryList` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `sortKey` to the `FeedCategoryList` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "FeedCategoryList_sortkey_key";

-- AlterTable
ALTER TABLE "FeedCategoryList" DROP COLUMN "sortkey",
ADD COLUMN     "sortKey" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "FeedCategoryList_sortKey_key" ON "FeedCategoryList"("sortKey");
