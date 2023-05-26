-- CreateTable
CREATE TABLE "RequestAddFacility" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RequestAddFacility_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "RequestAddFacility" ADD CONSTRAINT "RequestAddFacility_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
