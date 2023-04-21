/*
  Warnings:

  - You are about to drop the column `Sortkey` on the `FeedCategoryList` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[sortkey]` on the table `FeedCategoryList` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `sortkey` to the `FeedCategoryList` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "FeedCategoryList_Sortkey_key";

-- AlterTable
ALTER TABLE "FeedCategoryList" DROP COLUMN "Sortkey",
ADD COLUMN     "sortkey" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "FeedCategoryList_sortkey_key" ON "FeedCategoryList"("sortkey");
