-- DropForeignKey
ALTER TABLE "Group" DROP CONSTRAINT "Group_groupImageId_fkey";

-- AlterTable
ALTER TABLE "Group" ALTER COLUMN "groupImageId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupImageId_fkey" FOREIGN KEY ("groupImageId") REFERENCES "GroupImage"("id") ON DELETE SET NULL ON UPDATE CASCADE;
