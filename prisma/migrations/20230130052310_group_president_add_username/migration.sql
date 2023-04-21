/*
  Warnings:

  - Added the required column `username` to the `GroupPresident` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "GroupPresident" ADD COLUMN     "username" TEXT NOT NULL;
