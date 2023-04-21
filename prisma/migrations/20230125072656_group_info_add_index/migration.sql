/*
  Warnings:

  - Added the required column `index` to the `GroupInfo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "GroupInfo" ADD COLUMN     "index" INTEGER NOT NULL;
