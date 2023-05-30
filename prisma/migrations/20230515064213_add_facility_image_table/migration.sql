-- CreateTable
CREATE TABLE "FacilityImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FacilityImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_FacilityToFacilityImage" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "FacilityImage_imagePath_key" ON "FacilityImage"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToFacilityImage_AB_unique" ON "_FacilityToFacilityImage"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToFacilityImage_B_index" ON "_FacilityToFacilityImage"("B");

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityImage" ADD CONSTRAINT "_FacilityToFacilityImage_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityImage" ADD CONSTRAINT "_FacilityToFacilityImage_B_fkey" FOREIGN KEY ("B") REFERENCES "FacilityImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;
