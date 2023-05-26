/*
  Warnings:

  - You are about to drop the `_FollowRelation` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_FollowRelation" DROP CONSTRAINT "_FollowRelation_A_fkey";

-- DropForeignKey
ALTER TABLE "_FollowRelation" DROP CONSTRAINT "_FollowRelation_B_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "locationAccess" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "privacyAccess" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "usetermAccess" BOOLEAN NOT NULL DEFAULT false;

-- DropTable
DROP TABLE "_FollowRelation";
