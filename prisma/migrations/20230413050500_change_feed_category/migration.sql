/*
  Warnings:

  - You are about to drop the `_FeedCategoryListToPhoto` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_FeedCategoryListToPhoto" DROP CONSTRAINT "_FeedCategoryListToPhoto_A_fkey";

-- DropForeignKey
ALTER TABLE "_FeedCategoryListToPhoto" DROP CONSTRAINT "_FeedCategoryListToPhoto_B_fkey";

-- AlterTable
ALTER TABLE "Photo" ADD COLUMN     "feedCategory" TEXT;

-- DropTable
DROP TABLE "_FeedCategoryListToPhoto";
