/*
  Warnings:

  - Made the column `contestUserId` on table `ContestPartner` required. This step will fail if there are existing NULL values in that column.
  - Made the column `userId` on table `ContestPartner` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX "ContestPartner_id_key";

-- AlterTable
ALTER TABLE "ContestPartner" ALTER COLUMN "contestUserId" SET NOT NULL,
ALTER COLUMN "userId" SET NOT NULL;
