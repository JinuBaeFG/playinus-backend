/*
  Warnings:

  - You are about to drop the column `userId` on the `Tutor` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Tutor" DROP CONSTRAINT "Tutor_userId_fkey";

-- DropIndex
DROP INDEX "Tutor_userId_key";

-- AlterTable
ALTER TABLE "Tutor" DROP COLUMN "userId";

-- CreateTable
CREATE TABLE "_TutorToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_TutorToUser_AB_unique" ON "_TutorToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_TutorToUser_B_index" ON "_TutorToUser"("B");

-- AddForeignKey
ALTER TABLE "_TutorToUser" ADD CONSTRAINT "_TutorToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToUser" ADD CONSTRAINT "_TutorToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
