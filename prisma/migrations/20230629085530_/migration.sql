-- DropIndex
DROP INDEX "ContestUser_userId_key";

-- AlterTable
ALTER TABLE "ContestUser" ALTER COLUMN "contestId" DROP NOT NULL,
ALTER COLUMN "userId" DROP NOT NULL;
