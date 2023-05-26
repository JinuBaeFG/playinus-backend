/*
  Warnings:

  - You are about to drop the column `key` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `key` on the `SportsEvent` table. All the data in the column will be lost.
  - You are about to drop the column `key` on the `Tag` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Category_key_key";

-- DropIndex
DROP INDEX "SportsEvent_key_key";

-- DropIndex
DROP INDEX "Tag_key_key";

-- AlterTable
ALTER TABLE "Category" DROP COLUMN "key";

-- AlterTable
ALTER TABLE "SportsEvent" DROP COLUMN "key";

-- AlterTable
ALTER TABLE "Tag" DROP COLUMN "key";
