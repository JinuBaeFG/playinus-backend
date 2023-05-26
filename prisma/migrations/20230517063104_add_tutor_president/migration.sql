-- AlterTable
ALTER TABLE "Tutor" ADD COLUMN     "tutorPresidentId" INTEGER;

-- CreateTable
CREATE TABLE "TutorPresident" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorPresident_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TutorPresident_userId_key" ON "TutorPresident"("userId");

-- AddForeignKey
ALTER TABLE "Tutor" ADD CONSTRAINT "Tutor_tutorPresidentId_fkey" FOREIGN KEY ("tutorPresidentId") REFERENCES "TutorPresident"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorPresident" ADD CONSTRAINT "TutorPresident_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
