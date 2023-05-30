/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `FacilitySports` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "FacilitySports_name_key" ON "FacilitySports"("name");
