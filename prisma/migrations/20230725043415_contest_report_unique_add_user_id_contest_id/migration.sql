/*
  Warnings:

  - A unique constraint covering the columns `[contestId,userId]` on the table `ContestReport` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `userId` to the `ContestReport` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ContestReport" ADD COLUMN     "userId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "ContestReport_contestId_userId_key" ON "ContestReport"("contestId", "userId");

-- AddForeignKey
ALTER TABLE "ContestReport" ADD CONSTRAINT "ContestReport_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
