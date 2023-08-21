/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `ContestPartner` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "ContestPartner_id_key" ON "ContestPartner"("id");
