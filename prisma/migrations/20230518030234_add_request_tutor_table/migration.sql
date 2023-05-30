-- CreateTable
CREATE TABLE "RequestAddTutor" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RequestAddTutor_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "RequestAddTutor" ADD CONSTRAINT "RequestAddTutor_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
