-- CreateTable
CREATE TABLE "GroupBoard" (
    "id" SERIAL NOT NULL,
    "groupId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupBoard_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupNotice" (
    "id" SERIAL NOT NULL,
    "groupId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupNotice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupGallery" (
    "id" SERIAL NOT NULL,
    "groupId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupGallery_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupGalleryImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "groupGalleryId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupGalleryImage_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "GroupGalleryImage_imagePath_key" ON "GroupGalleryImage"("imagePath");

-- AddForeignKey
ALTER TABLE "GroupBoard" ADD CONSTRAINT "GroupBoard_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupNotice" ADD CONSTRAINT "GroupNotice_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupGallery" ADD CONSTRAINT "GroupGallery_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupGalleryImage" ADD CONSTRAINT "GroupGalleryImage_groupGalleryId_fkey" FOREIGN KEY ("groupGalleryId") REFERENCES "GroupGallery"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
