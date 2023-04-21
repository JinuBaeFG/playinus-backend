/*
  Warnings:

  - Added the required column `buildingNumber` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dongEubMyunName` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Added the required column `gusiName` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Added the required column `riName` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Added the required column `roadName` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sidoName` to the `Facility` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `zipcode` on the `Facility` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `buildingNumber` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dongEubMyunName` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `gusiName` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `riName` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `roadName` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sidoName` to the `Group` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `zipcode` on the `Group` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `buildingNumber` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dongEubMyunName` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `gusiName` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `riName` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `roadName` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sidoName` to the `Tutor` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `zipcode` on the `Tutor` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Facility" ADD COLUMN     "buildingNumber" INTEGER NOT NULL,
ADD COLUMN     "dongEubMyunName" TEXT NOT NULL,
ADD COLUMN     "gusiName" TEXT NOT NULL,
ADD COLUMN     "riName" TEXT NOT NULL,
ADD COLUMN     "roadName" TEXT NOT NULL,
ADD COLUMN     "sidoName" TEXT NOT NULL,
DROP COLUMN "zipcode",
ADD COLUMN     "zipcode" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Group" ADD COLUMN     "buildingNumber" INTEGER NOT NULL,
ADD COLUMN     "dongEubMyunName" TEXT NOT NULL,
ADD COLUMN     "gusiName" TEXT NOT NULL,
ADD COLUMN     "riName" TEXT NOT NULL,
ADD COLUMN     "roadName" TEXT NOT NULL,
ADD COLUMN     "sidoName" TEXT NOT NULL,
DROP COLUMN "zipcode",
ADD COLUMN     "zipcode" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Tutor" ADD COLUMN     "buildingNumber" INTEGER NOT NULL,
ADD COLUMN     "dongEubMyunName" TEXT NOT NULL,
ADD COLUMN     "gusiName" TEXT NOT NULL,
ADD COLUMN     "riName" TEXT NOT NULL,
ADD COLUMN     "roadName" TEXT NOT NULL,
ADD COLUMN     "sidoName" TEXT NOT NULL,
DROP COLUMN "zipcode",
ADD COLUMN     "zipcode" INTEGER NOT NULL;
