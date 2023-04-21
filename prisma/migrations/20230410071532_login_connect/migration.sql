/*
  Warnings:

  - You are about to drop the column `bio` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "bio",
ADD COLUMN     "gender" TEXT,
ADD COLUMN     "googleConnect" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "googleID" TEXT,
ADD COLUMN     "kakaoConnect" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "kakaoID" TEXT,
ADD COLUMN     "naverConnect" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "naverID" TEXT;
