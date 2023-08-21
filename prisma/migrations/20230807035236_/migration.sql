/*
  Warnings:

  - A unique constraint covering the columns `[contestPaymentId]` on the table `ContestUser` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `contestPaymentId` to the `ContestUser` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ContestUser" ADD COLUMN     "contestPaymentId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "ContestUser_contestPaymentId_key" ON "ContestUser"("contestPaymentId");
