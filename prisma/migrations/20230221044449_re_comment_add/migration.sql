-- AlterTable
ALTER TABLE "BoardComment" ADD COLUMN     "delYn" BOOLEAN NOT NULL DEFAULT false;

-- CreateTable
CREATE TABLE "BoardReComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "boardCommentId" INTEGER NOT NULL,
    "payload" TEXT NOT NULL,
    "delYn" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BoardReComment_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "BoardReComment" ADD CONSTRAINT "BoardReComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardReComment" ADD CONSTRAINT "BoardReComment_boardCommentId_fkey" FOREIGN KEY ("boardCommentId") REFERENCES "BoardComment"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
