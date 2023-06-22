/*
  Warnings:

  - You are about to drop the column `contestSportsDetail1` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail10` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail2` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail3` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail4` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail5` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail6` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail7` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail8` on the `Contest` table. All the data in the column will be lost.
  - You are about to drop the column `contestSportsDetail9` on the `Contest` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Contest" DROP COLUMN "contestSportsDetail1",
DROP COLUMN "contestSportsDetail10",
DROP COLUMN "contestSportsDetail2",
DROP COLUMN "contestSportsDetail3",
DROP COLUMN "contestSportsDetail4",
DROP COLUMN "contestSportsDetail5",
DROP COLUMN "contestSportsDetail6",
DROP COLUMN "contestSportsDetail7",
DROP COLUMN "contestSportsDetail8",
DROP COLUMN "contestSportsDetail9",
ADD COLUMN     "contestSportsDetail" TEXT;
