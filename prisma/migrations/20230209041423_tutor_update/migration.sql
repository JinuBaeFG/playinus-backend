/*
  Warnings:

  - You are about to drop the column `isCustom` on the `TutorTag` table. All the data in the column will be lost.
  - You are about to drop the column `isUse` on the `TutorTag` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "TutorTag" DROP COLUMN "isCustom",
DROP COLUMN "isUse";
