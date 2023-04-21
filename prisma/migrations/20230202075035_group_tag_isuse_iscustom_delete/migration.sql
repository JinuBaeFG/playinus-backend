/*
  Warnings:

  - You are about to drop the column `isCustom` on the `GroupTag` table. All the data in the column will be lost.
  - You are about to drop the column `isUse` on the `GroupTag` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "GroupTag" DROP COLUMN "isCustom",
DROP COLUMN "isUse";
