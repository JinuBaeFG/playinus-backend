-- CreateTable
CREATE TABLE "Config" (
    "id" SERIAL NOT NULL,
    "privacyTerms" TEXT,
    "gpsTerms" TEXT,
    "useTerms" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Config_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AdminNotice" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "AdminNotice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AdminFaq" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "AdminFaq_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "avatar" TEXT,
    "gender" TEXT DEFAULT '선택 안함',
    "googleConnect" BOOLEAN NOT NULL DEFAULT false,
    "googleID" TEXT,
    "kakaoConnect" BOOLEAN NOT NULL DEFAULT false,
    "kakaoID" TEXT,
    "naverConnect" BOOLEAN NOT NULL DEFAULT false,
    "naverID" TEXT,
    "appleConnect" BOOLEAN NOT NULL DEFAULT false,
    "appleID" TEXT,
    "phoneNumber" TEXT NOT NULL,
    "privacyAccess" BOOLEAN NOT NULL DEFAULT false,
    "usetermAccess" BOOLEAN NOT NULL DEFAULT false,
    "locationAccess" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BlockUser" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "blockedById" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BlockUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Photo" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "caption" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "sportsEvent" TEXT,
    "publicLevel" TEXT,
    "feedCategory" TEXT,

    CONSTRAINT "Photo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FeedCategoryList" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "sortKey" INTEGER NOT NULL,

    CONSTRAINT "FeedCategoryList_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FeedUpload" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FeedUpload_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Hashtag" (
    "id" SERIAL NOT NULL,
    "hashtag" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Hashtag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Like" (
    "id" SERIAL NOT NULL,
    "photoId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Like_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Comment" (
    "id" SERIAL NOT NULL,
    "payload" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "photoId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Comment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ReComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "commentId" INTEGER NOT NULL,
    "payload" TEXT NOT NULL,
    "delYn" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ReComment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Group" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "discription" TEXT,
    "activeArea" TEXT,
    "address" TEXT,
    "addrRoad" TEXT,
    "areaLatitude" TEXT,
    "areaLongitude" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "sportsEvent" TEXT NOT NULL,
    "buildingNumber" TEXT,
    "dongEubMyunName" TEXT,
    "gusiName" TEXT,
    "riName" TEXT,
    "roadName" TEXT,
    "sidoName" TEXT,
    "zipcode" TEXT,
    "groupPresidentId" INTEGER NOT NULL,
    "maxMember" TEXT NOT NULL,
    "groupImageId" INTEGER,

    CONSTRAINT "Group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupPresident" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupPresident_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupInfo" (
    "id" SERIAL NOT NULL,
    "discription" TEXT NOT NULL,
    "awardDate" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupTag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "imagePath" TEXT,

    CONSTRAINT "GroupTag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GroupJoinRequest" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "groupId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GroupJoinRequest_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tutor" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "activeArea" TEXT,
    "address" TEXT,
    "addrRoad" TEXT,
    "detailAddress" TEXT,
    "areaLatitude" TEXT,
    "areaLongitude" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "buildingNumber" TEXT,
    "dongEubMyunName" TEXT,
    "gusiName" TEXT,
    "riName" TEXT,
    "roadName" TEXT,
    "sidoName" TEXT,
    "zipcode" TEXT,
    "tutorImageId" INTEGER,
    "discription" TEXT,
    "access" BOOLEAN NOT NULL DEFAULT false,
    "maxMember" INTEGER NOT NULL DEFAULT 0,
    "tutorPresidentId" INTEGER,

    CONSTRAINT "Tutor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorPresident" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorPresident_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorSportsEvent" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "tutorId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorSportsEvent_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorInquiry" (
    "id" SERIAL NOT NULL,
    "tutorId" INTEGER NOT NULL,
    "userId" INTEGER,
    "inquiryTitle" TEXT NOT NULL,
    "inquiryDiscription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "inquiryResponse" BOOLEAN DEFAULT false,

    CONSTRAINT "TutorInquiry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorInquiryComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "tutorId" INTEGER NOT NULL,
    "answerOk" BOOLEAN DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "responseDiscription" TEXT NOT NULL,
    "responseTitle" TEXT NOT NULL,
    "tutorInquiryId" INTEGER NOT NULL,

    CONSTRAINT "TutorInquiryComment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorInfo" (
    "id" SERIAL NOT NULL,
    "discription" TEXT NOT NULL,
    "awardDate" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TutorTag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "imagePath" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TutorTag_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "Facility" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "activeArea" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "addrRoad" TEXT NOT NULL,
    "detailAddress" TEXT,
    "areaLatitude" DOUBLE PRECISION,
    "areaLongitude" DOUBLE PRECISION,
    "operTime" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "discription" TEXT NOT NULL,
    "buildingNumber" TEXT NOT NULL,
    "dongEubMyunName" TEXT NOT NULL,
    "gusiName" TEXT NOT NULL,
    "riName" TEXT NOT NULL,
    "roadName" TEXT NOT NULL,
    "sidoName" TEXT NOT NULL,
    "zipcode" TEXT NOT NULL,

    CONSTRAINT "Facility_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FacilityImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FacilityImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FacilityInfo" (
    "id" SERIAL NOT NULL,
    "discription" TEXT NOT NULL,
    "awardDate" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FacilityInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FacilityTag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "imagePath" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FacilityTag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FacilitySports" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FacilitySports_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "Board" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "groupId" INTEGER,
    "tutorId" INTEGER,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "sortation" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "hits" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Board_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BoardComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "boardId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "payload" TEXT NOT NULL,
    "delYn" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "BoardComment_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "BoardLike" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "boardId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BoardLike_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Notice" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "groupId" INTEGER,
    "tutorId" INTEGER,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "sortation" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "hits" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Notice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NoticeComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "noticeId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "payload" TEXT NOT NULL,

    CONSTRAINT "NoticeComment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NoticeReComment" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "noticeCommentId" INTEGER NOT NULL,
    "payload" TEXT NOT NULL,
    "delYn" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "NoticeReComment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NoticeLike" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "noticeId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "NoticeLike_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Gallery" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "groupId" INTEGER,
    "tutorId" INTEGER,
    "title" TEXT NOT NULL,
    "discription" TEXT NOT NULL,
    "sortation" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Gallery_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GalleryImage" (
    "id" SERIAL NOT NULL,
    "imagePath" TEXT NOT NULL,
    "galleryId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "GalleryImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SportsEvent" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "imagePath" TEXT,

    CONSTRAINT "SportsEvent_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "imagePath" TEXT,
    "sortation" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Room" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Room_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Message" (
    "id" SERIAL NOT NULL,
    "payload" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "roomId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "read" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Message_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Banner" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "discription" TEXT,
    "sidoName" TEXT,
    "gusiName" TEXT,
    "dongEubMyunName" TEXT,
    "riName" TEXT,
    "roadName" TEXT,
    "buildingNumber" TEXT,
    "zipcode" TEXT,
    "activeArea" TEXT,
    "address" TEXT,
    "addrRoad" TEXT,
    "detailAddress" TEXT,
    "areaLatitude" TEXT,
    "areaLongitude" TEXT,
    "sportsEvent" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "bannerImagePath" TEXT,
    "sortation" TEXT,
    "externalLink" TEXT,

    CONSTRAINT "Banner_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BannerDiscImagePath" (
    "id" SERIAL NOT NULL,
    "bannerId" INTEGER,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BannerDiscImagePath_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Report" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "photoId" INTEGER,
    "boardId" INTEGER,
    "noticeId" INTEGER,
    "reportDiscription" TEXT NOT NULL,
    "reportSortation" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Report_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BugReport" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "reportTitle" TEXT NOT NULL,
    "reportDiscription" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BugReport_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BugReportImage" (
    "id" SERIAL NOT NULL,
    "bugReportId" INTEGER,
    "imagePath" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BugReportImage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Contest" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT NOT NULL,
    "contestName" TEXT,
    "contestStartDate" TEXT,
    "contestEndDate" TEXT,
    "contestRecruitStart" TEXT,
    "contestRecruitEnd" TEXT,
    "contestPlace" TEXT,
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
    "contestStadium" TEXT,
    "contestHost" TEXT,
    "contestSponsorShip" TEXT,
    "contestSports" TEXT,
    "contestSportsDetail" TEXT,
    "contestDiscription" TEXT,
    "contestTerms" TEXT,
    "contestEntryFee" TEXT,
    "contestStatus" TEXT DEFAULT '모집',
    "contestPaymentMethod" TEXT,
    "contestBanner" TEXT,
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
    "contestSportsType" TEXT NOT NULL,
    "contestPaymentStatus" TEXT NOT NULL DEFAULT '결제진행',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestPartner" (
    "id" SERIAL NOT NULL,
    "contestUserId" INTEGER,
    "userId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestPartner_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestNotice" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT,
    "noticeTitle" TEXT,
    "noticeDiscription" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestNotice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestReport" (
    "id" SERIAL NOT NULL,
    "contestId" TEXT,
    "reportType" TEXT,
    "reportTitle" TEXT,
    "reportDiscription" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContestReport_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_FeedUploadToPhoto" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_HashtagToPhoto" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_GroupToGroupInfo" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_GroupToGroupTag" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_GroupToTutor" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_GroupToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_TutorToTutorInfo" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_TutorToTutorTag" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_TutorToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToFacilityImage" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToFacilityInfo" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToFacilitySports" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToFacilityTag" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToGroup" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_FacilityToTutor" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_RoomToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_googleID_key" ON "User"("googleID");

-- CreateIndex
CREATE UNIQUE INDEX "User_kakaoID_key" ON "User"("kakaoID");

-- CreateIndex
CREATE UNIQUE INDEX "User_naverID_key" ON "User"("naverID");

-- CreateIndex
CREATE UNIQUE INDEX "User_appleID_key" ON "User"("appleID");

-- CreateIndex
CREATE UNIQUE INDEX "User_phoneNumber_key" ON "User"("phoneNumber");

-- CreateIndex
CREATE UNIQUE INDEX "BlockUser_blockedById_key" ON "BlockUser"("blockedById");

-- CreateIndex
CREATE UNIQUE INDEX "FeedCategoryList_sortKey_key" ON "FeedCategoryList"("sortKey");

-- CreateIndex
CREATE UNIQUE INDEX "FeedUpload_imagePath_key" ON "FeedUpload"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "Hashtag_hashtag_key" ON "Hashtag"("hashtag");

-- CreateIndex
CREATE UNIQUE INDEX "Like_photoId_userId_key" ON "Like"("photoId", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "Group_name_key" ON "Group"("name");

-- CreateIndex
CREATE UNIQUE INDEX "GroupImage_imagePath_key" ON "GroupImage"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "GroupPresident_userId_key" ON "GroupPresident"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "GroupInfo_discription_awardDate_key" ON "GroupInfo"("discription", "awardDate");

-- CreateIndex
CREATE UNIQUE INDEX "GroupTag_name_key" ON "GroupTag"("name");

-- CreateIndex
CREATE UNIQUE INDEX "GroupJoinRequest_userId_groupId_key" ON "GroupJoinRequest"("userId", "groupId");

-- CreateIndex
CREATE UNIQUE INDEX "TutorPresident_userId_key" ON "TutorPresident"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "TutorInfo_discription_awardDate_key" ON "TutorInfo"("discription", "awardDate");

-- CreateIndex
CREATE UNIQUE INDEX "TutorTag_name_key" ON "TutorTag"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Facility_name_key" ON "Facility"("name");

-- CreateIndex
CREATE UNIQUE INDEX "FacilityImage_imagePath_key" ON "FacilityImage"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "FacilityInfo_discription_awardDate_key" ON "FacilityInfo"("discription", "awardDate");

-- CreateIndex
CREATE UNIQUE INDEX "FacilityTag_name_key" ON "FacilityTag"("name");

-- CreateIndex
CREATE UNIQUE INDEX "FacilitySports_name_key" ON "FacilitySports"("name");

-- CreateIndex
CREATE UNIQUE INDEX "BoardLike_boardId_userId_key" ON "BoardLike"("boardId", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "NoticeLike_noticeId_userId_key" ON "NoticeLike"("noticeId", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "GalleryImage_imagePath_key" ON "GalleryImage"("imagePath");

-- CreateIndex
CREATE UNIQUE INDEX "Contest_contestId_key" ON "Contest"("contestId");

-- CreateIndex
CREATE UNIQUE INDEX "ContestUser_userId_key" ON "ContestUser"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "ContestPartner_userId_key" ON "ContestPartner"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "_FeedUploadToPhoto_AB_unique" ON "_FeedUploadToPhoto"("A", "B");

-- CreateIndex
CREATE INDEX "_FeedUploadToPhoto_B_index" ON "_FeedUploadToPhoto"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_HashtagToPhoto_AB_unique" ON "_HashtagToPhoto"("A", "B");

-- CreateIndex
CREATE INDEX "_HashtagToPhoto_B_index" ON "_HashtagToPhoto"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_GroupToGroupInfo_AB_unique" ON "_GroupToGroupInfo"("A", "B");

-- CreateIndex
CREATE INDEX "_GroupToGroupInfo_B_index" ON "_GroupToGroupInfo"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_GroupToGroupTag_AB_unique" ON "_GroupToGroupTag"("A", "B");

-- CreateIndex
CREATE INDEX "_GroupToGroupTag_B_index" ON "_GroupToGroupTag"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_GroupToTutor_AB_unique" ON "_GroupToTutor"("A", "B");

-- CreateIndex
CREATE INDEX "_GroupToTutor_B_index" ON "_GroupToTutor"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_GroupToUser_AB_unique" ON "_GroupToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_GroupToUser_B_index" ON "_GroupToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_TutorToTutorInfo_AB_unique" ON "_TutorToTutorInfo"("A", "B");

-- CreateIndex
CREATE INDEX "_TutorToTutorInfo_B_index" ON "_TutorToTutorInfo"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_TutorToTutorTag_AB_unique" ON "_TutorToTutorTag"("A", "B");

-- CreateIndex
CREATE INDEX "_TutorToTutorTag_B_index" ON "_TutorToTutorTag"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_TutorToUser_AB_unique" ON "_TutorToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_TutorToUser_B_index" ON "_TutorToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToFacilityImage_AB_unique" ON "_FacilityToFacilityImage"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToFacilityImage_B_index" ON "_FacilityToFacilityImage"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToFacilityInfo_AB_unique" ON "_FacilityToFacilityInfo"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToFacilityInfo_B_index" ON "_FacilityToFacilityInfo"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToFacilitySports_AB_unique" ON "_FacilityToFacilitySports"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToFacilitySports_B_index" ON "_FacilityToFacilitySports"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToFacilityTag_AB_unique" ON "_FacilityToFacilityTag"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToFacilityTag_B_index" ON "_FacilityToFacilityTag"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToGroup_AB_unique" ON "_FacilityToGroup"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToGroup_B_index" ON "_FacilityToGroup"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_FacilityToTutor_AB_unique" ON "_FacilityToTutor"("A", "B");

-- CreateIndex
CREATE INDEX "_FacilityToTutor_B_index" ON "_FacilityToTutor"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_RoomToUser_AB_unique" ON "_RoomToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_RoomToUser_B_index" ON "_RoomToUser"("B");

-- AddForeignKey
ALTER TABLE "BlockUser" ADD CONSTRAINT "BlockUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BlockUser" ADD CONSTRAINT "BlockUser_blockedById_fkey" FOREIGN KEY ("blockedById") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Photo" ADD CONSTRAINT "Photo_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Like" ADD CONSTRAINT "Like_photoId_fkey" FOREIGN KEY ("photoId") REFERENCES "Photo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Like" ADD CONSTRAINT "Like_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_photoId_fkey" FOREIGN KEY ("photoId") REFERENCES "Photo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ReComment" ADD CONSTRAINT "ReComment_commentId_fkey" FOREIGN KEY ("commentId") REFERENCES "Comment"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ReComment" ADD CONSTRAINT "ReComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupImageId_fkey" FOREIGN KEY ("groupImageId") REFERENCES "GroupImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupPresidentId_fkey" FOREIGN KEY ("groupPresidentId") REFERENCES "GroupPresident"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupPresident" ADD CONSTRAINT "GroupPresident_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupJoinRequest" ADD CONSTRAINT "GroupJoinRequest_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GroupJoinRequest" ADD CONSTRAINT "GroupJoinRequest_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tutor" ADD CONSTRAINT "Tutor_tutorImageId_fkey" FOREIGN KEY ("tutorImageId") REFERENCES "TutorImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tutor" ADD CONSTRAINT "Tutor_tutorPresidentId_fkey" FOREIGN KEY ("tutorPresidentId") REFERENCES "TutorPresident"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorPresident" ADD CONSTRAINT "TutorPresident_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorSportsEvent" ADD CONSTRAINT "TutorSportsEvent_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiry" ADD CONSTRAINT "TutorInquiry_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiry" ADD CONSTRAINT "TutorInquiry_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiryComment" ADD CONSTRAINT "TutorInquiryComment_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiryComment" ADD CONSTRAINT "TutorInquiryComment_tutorInquiryId_fkey" FOREIGN KEY ("tutorInquiryId") REFERENCES "TutorInquiry"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TutorInquiryComment" ADD CONSTRAINT "TutorInquiryComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequestAddTutor" ADD CONSTRAINT "RequestAddTutor_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequestAddFacility" ADD CONSTRAINT "RequestAddFacility_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Board" ADD CONSTRAINT "Board_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Board" ADD CONSTRAINT "Board_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Board" ADD CONSTRAINT "Board_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardComment" ADD CONSTRAINT "BoardComment_boardId_fkey" FOREIGN KEY ("boardId") REFERENCES "Board"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardComment" ADD CONSTRAINT "BoardComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardReComment" ADD CONSTRAINT "BoardReComment_boardCommentId_fkey" FOREIGN KEY ("boardCommentId") REFERENCES "BoardComment"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardReComment" ADD CONSTRAINT "BoardReComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardLike" ADD CONSTRAINT "BoardLike_boardId_fkey" FOREIGN KEY ("boardId") REFERENCES "Board"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BoardLike" ADD CONSTRAINT "BoardLike_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notice" ADD CONSTRAINT "Notice_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notice" ADD CONSTRAINT "Notice_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notice" ADD CONSTRAINT "Notice_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeComment" ADD CONSTRAINT "NoticeComment_noticeId_fkey" FOREIGN KEY ("noticeId") REFERENCES "Notice"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeComment" ADD CONSTRAINT "NoticeComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeReComment" ADD CONSTRAINT "NoticeReComment_noticeCommentId_fkey" FOREIGN KEY ("noticeCommentId") REFERENCES "NoticeComment"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeReComment" ADD CONSTRAINT "NoticeReComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeLike" ADD CONSTRAINT "NoticeLike_noticeId_fkey" FOREIGN KEY ("noticeId") REFERENCES "Notice"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NoticeLike" ADD CONSTRAINT "NoticeLike_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gallery" ADD CONSTRAINT "Gallery_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gallery" ADD CONSTRAINT "Gallery_tutorId_fkey" FOREIGN KEY ("tutorId") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gallery" ADD CONSTRAINT "Gallery_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GalleryImage" ADD CONSTRAINT "GalleryImage_galleryId_fkey" FOREIGN KEY ("galleryId") REFERENCES "Gallery"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Message" ADD CONSTRAINT "Message_roomId_fkey" FOREIGN KEY ("roomId") REFERENCES "Room"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Message" ADD CONSTRAINT "Message_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BannerDiscImagePath" ADD CONSTRAINT "BannerDiscImagePath_bannerId_fkey" FOREIGN KEY ("bannerId") REFERENCES "Banner"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_photoId_fkey" FOREIGN KEY ("photoId") REFERENCES "Photo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_boardId_fkey" FOREIGN KEY ("boardId") REFERENCES "Board"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_noticeId_fkey" FOREIGN KEY ("noticeId") REFERENCES "Notice"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BugReport" ADD CONSTRAINT "BugReport_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BugReportImage" ADD CONSTRAINT "BugReportImage_bugReportId_fkey" FOREIGN KEY ("bugReportId") REFERENCES "BugReport"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestPartner" ADD CONSTRAINT "ContestPartner_contestUserId_fkey" FOREIGN KEY ("contestUserId") REFERENCES "ContestUser"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestPartner" ADD CONSTRAINT "ContestPartner_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestNotice" ADD CONSTRAINT "ContestNotice_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestReport" ADD CONSTRAINT "ContestReport_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("contestId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FeedUploadToPhoto" ADD CONSTRAINT "_FeedUploadToPhoto_A_fkey" FOREIGN KEY ("A") REFERENCES "FeedUpload"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FeedUploadToPhoto" ADD CONSTRAINT "_FeedUploadToPhoto_B_fkey" FOREIGN KEY ("B") REFERENCES "Photo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_HashtagToPhoto" ADD CONSTRAINT "_HashtagToPhoto_A_fkey" FOREIGN KEY ("A") REFERENCES "Hashtag"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_HashtagToPhoto" ADD CONSTRAINT "_HashtagToPhoto_B_fkey" FOREIGN KEY ("B") REFERENCES "Photo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToGroupInfo" ADD CONSTRAINT "_GroupToGroupInfo_A_fkey" FOREIGN KEY ("A") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToGroupInfo" ADD CONSTRAINT "_GroupToGroupInfo_B_fkey" FOREIGN KEY ("B") REFERENCES "GroupInfo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToGroupTag" ADD CONSTRAINT "_GroupToGroupTag_A_fkey" FOREIGN KEY ("A") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToGroupTag" ADD CONSTRAINT "_GroupToGroupTag_B_fkey" FOREIGN KEY ("B") REFERENCES "GroupTag"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToTutor" ADD CONSTRAINT "_GroupToTutor_A_fkey" FOREIGN KEY ("A") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToTutor" ADD CONSTRAINT "_GroupToTutor_B_fkey" FOREIGN KEY ("B") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToUser" ADD CONSTRAINT "_GroupToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_GroupToUser" ADD CONSTRAINT "_GroupToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToTutorInfo" ADD CONSTRAINT "_TutorToTutorInfo_A_fkey" FOREIGN KEY ("A") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToTutorInfo" ADD CONSTRAINT "_TutorToTutorInfo_B_fkey" FOREIGN KEY ("B") REFERENCES "TutorInfo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToTutorTag" ADD CONSTRAINT "_TutorToTutorTag_A_fkey" FOREIGN KEY ("A") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToTutorTag" ADD CONSTRAINT "_TutorToTutorTag_B_fkey" FOREIGN KEY ("B") REFERENCES "TutorTag"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToUser" ADD CONSTRAINT "_TutorToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TutorToUser" ADD CONSTRAINT "_TutorToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityImage" ADD CONSTRAINT "_FacilityToFacilityImage_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityImage" ADD CONSTRAINT "_FacilityToFacilityImage_B_fkey" FOREIGN KEY ("B") REFERENCES "FacilityImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityInfo" ADD CONSTRAINT "_FacilityToFacilityInfo_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityInfo" ADD CONSTRAINT "_FacilityToFacilityInfo_B_fkey" FOREIGN KEY ("B") REFERENCES "FacilityInfo"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilitySports" ADD CONSTRAINT "_FacilityToFacilitySports_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilitySports" ADD CONSTRAINT "_FacilityToFacilitySports_B_fkey" FOREIGN KEY ("B") REFERENCES "FacilitySports"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityTag" ADD CONSTRAINT "_FacilityToFacilityTag_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToFacilityTag" ADD CONSTRAINT "_FacilityToFacilityTag_B_fkey" FOREIGN KEY ("B") REFERENCES "FacilityTag"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToGroup" ADD CONSTRAINT "_FacilityToGroup_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToGroup" ADD CONSTRAINT "_FacilityToGroup_B_fkey" FOREIGN KEY ("B") REFERENCES "Group"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToTutor" ADD CONSTRAINT "_FacilityToTutor_A_fkey" FOREIGN KEY ("A") REFERENCES "Facility"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_FacilityToTutor" ADD CONSTRAINT "_FacilityToTutor_B_fkey" FOREIGN KEY ("B") REFERENCES "Tutor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_RoomToUser" ADD CONSTRAINT "_RoomToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Room"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_RoomToUser" ADD CONSTRAINT "_RoomToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
