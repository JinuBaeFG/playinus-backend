/*
  Warnings:

  - You are about to drop the column `imagePath` on the `Group` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Group" DROP COLUMN "imagePath";

-- CreateTable
CREATE TABLE "GroupImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_GroupToGroupImage" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "GroupImage_imagePath_key" ON "GroupImage"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "_GroupToGroupImage_AB_unique" ON "_GroupToGroupImage"("A", "B");

-- CreateIndex
CREATE INDEX "_GroupToGroupImage_B_index" ON "_GroupToGroupImage"("B");

-- AddForeignKey
ALTER TABLE "_GroupToGroupImage" ADD CONSTRAINT "_GroupToGroupImage_A_fkey" FOREIGN KEY ("A") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToGroupImage" ADD CONSTRAINT "_GroupToGroupImage_B_fkey" FOREIGN KEY ("B") REFERENCES "GroupImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;
