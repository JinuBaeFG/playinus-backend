/*
  Warnings:

  - Changed the type of `maxMember` on the `Group` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Group" DROP COLUMN "maxMember",
ADD COLUMN     "maxMember" INTEGER NOT NULL;
