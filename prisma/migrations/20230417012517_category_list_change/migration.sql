/*
  Warnings:

  - You are about to drop the column `key` on the `FeedCategoryList` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[Sortkey]` on the table `FeedCategoryList` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `Sortkey` to the `FeedCategoryList` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "FeedCategoryList_key_key";

-- AlterTable
ALTER TABLE "FeedCategoryList" DROP COLUMN "key",
ADD COLUMN     "Sortkey" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "FeedCategoryList_Sortkey_key" ON "FeedCategoryList"("Sortkey");
