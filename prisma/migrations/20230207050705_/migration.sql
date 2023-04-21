-- DropForeignKey
ALTER TABLE "Tutor" DROP CONSTRAINT "Tutor_tutorImageId_fkey";

-- AlterTable
ALTER TABLE "Tutor" ALTER COLUMN "tutorImageId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Tutor" ADD CONSTRAINT "Tutor_tutorImageId_fkey" FOREIGN KEY ("tutorImageId") REFERENCES "TutorImage"("id") ON DELETE SET NULL ON UPDATE CASCADE;
