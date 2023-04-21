/*
  Warnings:

  - A unique constraint covering the columns `[discription,awardDate]` on the table `TutorInfo` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `TutorTag` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `discription` to the `Tutor` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Tutor" ADD COLUMN     "discription" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "TutorInfo_discription_awardDate_key" ON "TutorInfo"("discription", "awardDate");

-- CreateIndex
CREATE UNIQUE INDEX "TutorTag_name_key" ON "TutorTag"("name");
