-- CreateTable
CREATE TABLE "Contest" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT NOT NULL,
    "contestName" TEXT,
    "contestStartDate" TEXT NOT NULL,
    "contestEndDate" TEXT NOT NULL,
    "contestRecruitStart" TEXT NOT NULL,
    "contestRecruitEnd" TEXT NOT NULL,
    "contestPlace" TEXT NOT NULL,
    "buildingNumber" TEXT,
    "dongEubMyunName" TEXT,
    "gusiName" TEXT,
    "riName" TEXT,
    "roadName" TEXT,
    "sidoName" TEXT,
    "zipcode" TEXT,
    "areaLatitude" TEXT,
    "areaLongitude" TEXT,
    "contestPlaceAddress" TEXT,
    "contestStatdium" TEXT,
    "contestSponsorShip" TEXT,
    "contestSports" TEXT NOT NULL,
    "contestSportsDetail1" TEXT,
    "contestSportsDetail2" TEXT,
    "contestSportsDetail3" TEXT,
    "contestSportsDetail4" TEXT,
    "contestSportsDetail5" TEXT,
    "contestSportsDetail6" TEXT,
    "contestSportsDetail7" TEXT,
    "contestSportsDetail8" TEXT,
    "contestSportsDetail9" TEXT,
    "contestSportsDetail10" TEXT,
    "contestDescription" TEXT,
    "contestTerms" TEXT,
    "contestEntryFee" TEXT,
    "contestStatus" TEXT NOT NULL DEFAULT '모집',
    "contestPaymentMethod" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Contest_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestUser" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "teamName" TEXT NOT NULL,
    "userAge" INTEGER NOT NULL,
    "userGender" TEXT NOT NULL,
    "userTier" TEXT NOT NULL,
    "contestSports" TEXT NOT NULL,
    "contestPaymentStatus" TEXT NOT NULL DEFAULT '결제진행',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestNotice" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT NOT NULL,
    "noticeTitle" TEXT,
    "noticeDiscription" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestNotice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestReport" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT NOT NULL,
    "reportType" TEXT,
    "reportTitle" TEXT,
    "reportDiscription" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestReport_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Contest_contestId_key" ON "Contest"("contestId");

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestNotice" ADD CONSTRAINT "ContestNotice_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestReport" ADD CONSTRAINT "ContestReport_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;
