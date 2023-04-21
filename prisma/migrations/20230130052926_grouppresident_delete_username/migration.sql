/*
  Warnings:

  - You are about to drop the column `username` on the `GroupPresident` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "GroupPresident_username_key";

-- AlterTable
ALTER TABLE "GroupPresident" DROP COLUMN "username";
