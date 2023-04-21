/*
  Warnings:

  - A unique constraint covering the columns `[key]` on the table `Category` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[key]` on the table `Tag` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `key` to the `Category` table without a default value. This is not possible if the table is not empty.
  - Added the required column `key` to the `Tag` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Category" ADD COLUMN     "key" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Tag" ADD COLUMN     "key" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Category_key_key" ON "Category"("key");

-- CreateIndex
CREATE UNIQUE INDEX "Tag_key_key" ON "Tag"("key");
