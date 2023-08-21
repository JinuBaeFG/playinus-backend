/*
  Warnings:

  - The primary key for the `AdminFaq` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `AdminNotice` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Banner` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BannerDiscImagePath` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BlockUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Board` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BoardComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BoardLike` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BoardReComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BugReport` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BugReportImage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Category` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Comment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Config` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Contest` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestCourt` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestGroupMatchHistory` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `winOrLose` on the `ContestGroupMatchHistory` table. All the data in the column will be lost.
  - The primary key for the `ContestGroupMatchResult` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestMatchGroup` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createMatchListYN` on the `ContestMatchGroup` table. All the data in the column will be lost.
  - The primary key for the `ContestNotice` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestReport` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestTeam` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestTierGroup` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ContestTournamentGroup` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `matchName` on the `ContestTournamentGroup` table. All the data in the column will be lost.
  - You are about to drop the column `matchNo` on the `ContestTournamentGroup` table. All the data in the column will be lost.
  - The primary key for the `ContestTournamentHistory` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `contestTeamId` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - You are about to drop the column `opponentTeamId` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - You are about to drop the column `winOrLose` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - You are about to drop the column `winScore` on the `ContestTournamentHistory` table. All the data in the column will be lost.
  - The primary key for the `ContestUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Facility` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FacilityImage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FacilityInfo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FacilitySports` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FacilityTag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FeedCategoryList` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FeedUpload` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Gallery` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GalleryImage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Group` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GroupImage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GroupInfo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GroupJoinRequest` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GroupPresident` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `GroupTag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Hashtag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Like` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Message` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Notice` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `NoticeComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `NoticeLike` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `NoticeReComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Photo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ReComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Report` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `RequestAddFacility` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `RequestAddTutor` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Room` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `SportsEvent` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Tag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Tutor` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorImage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorInfo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorInquiry` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorInquiryComment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorPresident` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorSportsEvent` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TutorTag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[opponentTeamName]` on the table `ContestTournamentHistory` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "BannerDiscImagePath" DROP CONSTRAINT "BannerDiscImagePath_bannerId_fkey";

-- DropForeignKey
ALTER TABLE "BlockUser" DROP CONSTRAINT "BlockUser_blockedById_fkey";

-- DropForeignKey
ALTER TABLE "BlockUser" DROP CONSTRAINT "BlockUser_userId_fkey";

-- DropForeignKey
ALTER TABLE "Board" DROP CONSTRAINT "Board_groupId_fkey";

-- DropForeignKey
ALTER TABLE "Board" DROP CONSTRAINT "Board_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "Board" DROP CONSTRAINT "Board_userId_fkey";

-- DropForeignKey
ALTER TABLE "BoardComment" DROP CONSTRAINT "BoardComment_boardId_fkey";

-- DropForeignKey
ALTER TABLE "BoardComment" DROP CONSTRAINT "BoardComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "BoardLike" DROP CONSTRAINT "BoardLike_boardId_fkey";

-- DropForeignKey
ALTER TABLE "BoardLike" DROP CONSTRAINT "BoardLike_userId_fkey";

-- DropForeignKey
ALTER TABLE "BoardReComment" DROP CONSTRAINT "BoardReComment_boardCommentId_fkey";

-- DropForeignKey
ALTER TABLE "BoardReComment" DROP CONSTRAINT "BoardReComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "BugReport" DROP CONSTRAINT "BugReport_userId_fkey";

-- DropForeignKey
ALTER TABLE "BugReportImage" DROP CONSTRAINT "BugReportImage_bugReportId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_photoId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_userId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestCourtId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_opponentTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchResult" DROP CONSTRAINT "ContestGroupMatchResult_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestGroupMatchResult" DROP CONSTRAINT "ContestGroupMatchResult_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestMatchGroup" DROP CONSTRAINT "ContestMatchGroup_contestTierGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestMatchGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestTierGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_contestTournamentGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentGroup" DROP CONSTRAINT "ContestTournamentGroup_contestTierGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestCourtId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_contestTournamentGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_opponentTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_contestTeamId_fkey";

-- DropForeignKey
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_contestTierGroupId_fkey";

-- DropForeignKey
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_userId_fkey";

-- DropForeignKey
ALTER TABLE "Gallery" DROP CONSTRAINT "Gallery_groupId_fkey";

-- DropForeignKey
ALTER TABLE "Gallery" DROP CONSTRAINT "Gallery_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "Gallery" DROP CONSTRAINT "Gallery_userId_fkey";

-- DropForeignKey
ALTER TABLE "GalleryImage" DROP CONSTRAINT "GalleryImage_galleryId_fkey";

-- DropForeignKey
ALTER TABLE "Group" DROP CONSTRAINT "Group_groupImageId_fkey";

-- DropForeignKey
ALTER TABLE "Group" DROP CONSTRAINT "Group_groupPresidentId_fkey";

-- DropForeignKey
ALTER TABLE "GroupJoinRequest" DROP CONSTRAINT "GroupJoinRequest_groupId_fkey";

-- DropForeignKey
ALTER TABLE "GroupJoinRequest" DROP CONSTRAINT "GroupJoinRequest_userId_fkey";

-- DropForeignKey
ALTER TABLE "GroupPresident" DROP CONSTRAINT "GroupPresident_userId_fkey";

-- DropForeignKey
ALTER TABLE "Like" DROP CONSTRAINT "Like_photoId_fkey";

-- DropForeignKey
ALTER TABLE "Like" DROP CONSTRAINT "Like_userId_fkey";

-- DropForeignKey
ALTER TABLE "Message" DROP CONSTRAINT "Message_roomId_fkey";

-- DropForeignKey
ALTER TABLE "Message" DROP CONSTRAINT "Message_userId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_groupId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_userId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeComment" DROP CONSTRAINT "NoticeComment_noticeId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeComment" DROP CONSTRAINT "NoticeComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeLike" DROP CONSTRAINT "NoticeLike_noticeId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeLike" DROP CONSTRAINT "NoticeLike_userId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeReComment" DROP CONSTRAINT "NoticeReComment_noticeCommentId_fkey";

-- DropForeignKey
ALTER TABLE "NoticeReComment" DROP CONSTRAINT "NoticeReComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "Photo" DROP CONSTRAINT "Photo_userId_fkey";

-- DropForeignKey
ALTER TABLE "ReComment" DROP CONSTRAINT "ReComment_commentId_fkey";

-- DropForeignKey
ALTER TABLE "ReComment" DROP CONSTRAINT "ReComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_boardId_fkey";

-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_noticeId_fkey";

-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_photoId_fkey";

-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_userId_fkey";

-- DropForeignKey
ALTER TABLE "RequestAddFacility" DROP CONSTRAINT "RequestAddFacility_userId_fkey";

-- DropForeignKey
ALTER TABLE "RequestAddTutor" DROP CONSTRAINT "RequestAddTutor_userId_fkey";

-- DropForeignKey
ALTER TABLE "Tutor" DROP CONSTRAINT "Tutor_tutorImageId_fkey";

-- DropForeignKey
ALTER TABLE "Tutor" DROP CONSTRAINT "Tutor_tutorPresidentId_fkey";

-- DropForeignKey
ALTER TABLE "TutorInquiry" DROP CONSTRAINT "TutorInquiry_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "TutorInquiry" DROP CONSTRAINT "TutorInquiry_userId_fkey";

-- DropForeignKey
ALTER TABLE "TutorInquiryComment" DROP CONSTRAINT "TutorInquiryComment_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "TutorInquiryComment" DROP CONSTRAINT "TutorInquiryComment_tutorInquiryId_fkey";

-- DropForeignKey
ALTER TABLE "TutorInquiryComment" DROP CONSTRAINT "TutorInquiryComment_userId_fkey";

-- DropForeignKey
ALTER TABLE "TutorPresident" DROP CONSTRAINT "TutorPresident_userId_fkey";

-- DropForeignKey
ALTER TABLE "TutorSportsEvent" DROP CONSTRAINT "TutorSportsEvent_tutorId_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityImage" DROP CONSTRAINT "_FacilityToFacilityImage_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityImage" DROP CONSTRAINT "_FacilityToFacilityImage_B_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityInfo" DROP CONSTRAINT "_FacilityToFacilityInfo_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityInfo" DROP CONSTRAINT "_FacilityToFacilityInfo_B_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilitySports" DROP CONSTRAINT "_FacilityToFacilitySports_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilitySports" DROP CONSTRAINT "_FacilityToFacilitySports_B_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityTag" DROP CONSTRAINT "_FacilityToFacilityTag_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToFacilityTag" DROP CONSTRAINT "_FacilityToFacilityTag_B_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToGroup" DROP CONSTRAINT "_FacilityToGroup_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToGroup" DROP CONSTRAINT "_FacilityToGroup_B_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToTutor" DROP CONSTRAINT "_FacilityToTutor_A_fkey";

-- DropForeignKey
ALTER TABLE "_FacilityToTutor" DROP CONSTRAINT "_FacilityToTutor_B_fkey";

-- DropForeignKey
ALTER TABLE "_FeedUploadToPhoto" DROP CONSTRAINT "_FeedUploadToPhoto_A_fkey";

-- DropForeignKey
ALTER TABLE "_FeedUploadToPhoto" DROP CONSTRAINT "_FeedUploadToPhoto_B_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToGroupInfo" DROP CONSTRAINT "_GroupToGroupInfo_A_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToGroupInfo" DROP CONSTRAINT "_GroupToGroupInfo_B_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToGroupTag" DROP CONSTRAINT "_GroupToGroupTag_A_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToGroupTag" DROP CONSTRAINT "_GroupToGroupTag_B_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToTutor" DROP CONSTRAINT "_GroupToTutor_A_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToTutor" DROP CONSTRAINT "_GroupToTutor_B_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToUser" DROP CONSTRAINT "_GroupToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_GroupToUser" DROP CONSTRAINT "_GroupToUser_B_fkey";

-- DropForeignKey
ALTER TABLE "_HashtagToPhoto" DROP CONSTRAINT "_HashtagToPhoto_A_fkey";

-- DropForeignKey
ALTER TABLE "_HashtagToPhoto" DROP CONSTRAINT "_HashtagToPhoto_B_fkey";

-- DropForeignKey
ALTER TABLE "_RoomToUser" DROP CONSTRAINT "_RoomToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_RoomToUser" DROP CONSTRAINT "_RoomToUser_B_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToTutorInfo" DROP CONSTRAINT "_TutorToTutorInfo_A_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToTutorInfo" DROP CONSTRAINT "_TutorToTutorInfo_B_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToTutorTag" DROP CONSTRAINT "_TutorToTutorTag_A_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToTutorTag" DROP CONSTRAINT "_TutorToTutorTag_B_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToUser" DROP CONSTRAINT "_TutorToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "_TutorToUser" DROP CONSTRAINT "_TutorToUser_B_fkey";

-- DropIndex
DROP INDEX "ContestTournamentHistory_opponentTeamId_key";

-- AlterTable
ALTER TABLE "AdminFaq" DROP CONSTRAINT "AdminFaq_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "AdminFaq_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "AdminFaq_id_seq";

-- AlterTable
ALTER TABLE "AdminNotice" DROP CONSTRAINT "AdminNotice_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "AdminNotice_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "AdminNotice_id_seq";

-- AlterTable
ALTER TABLE "Banner" DROP CONSTRAINT "Banner_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Banner_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Banner_id_seq";

-- AlterTable
ALTER TABLE "BannerDiscImagePath" DROP CONSTRAINT "BannerDiscImagePath_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "bannerId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BannerDiscImagePath_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BannerDiscImagePath_id_seq";

-- AlterTable
ALTER TABLE "BlockUser" DROP CONSTRAINT "BlockUser_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "blockedById" SET DATA TYPE TEXT,
ADD CONSTRAINT "BlockUser_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BlockUser_id_seq";

-- AlterTable
ALTER TABLE "Board" DROP CONSTRAINT "Board_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "groupId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Board_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Board_id_seq";

-- AlterTable
ALTER TABLE "BoardComment" DROP CONSTRAINT "BoardComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "boardId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BoardComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BoardComment_id_seq";

-- AlterTable
ALTER TABLE "BoardLike" DROP CONSTRAINT "BoardLike_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "boardId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BoardLike_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BoardLike_id_seq";

-- AlterTable
ALTER TABLE "BoardReComment" DROP CONSTRAINT "BoardReComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "boardCommentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BoardReComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BoardReComment_id_seq";

-- AlterTable
ALTER TABLE "BugReport" DROP CONSTRAINT "BugReport_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BugReport_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BugReport_id_seq";

-- AlterTable
ALTER TABLE "BugReportImage" DROP CONSTRAINT "BugReportImage_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "bugReportId" SET DATA TYPE TEXT,
ADD CONSTRAINT "BugReportImage_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BugReportImage_id_seq";

-- AlterTable
ALTER TABLE "Category" DROP CONSTRAINT "Category_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Category_id_seq";

-- AlterTable
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "photoId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Comment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Comment_id_seq";

-- AlterTable
ALTER TABLE "Config" DROP CONSTRAINT "Config_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Config_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Config_id_seq";

-- AlterTable
ALTER TABLE "Contest" DROP CONSTRAINT "Contest_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Contest_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Contest_id_seq";

-- AlterTable
ALTER TABLE "ContestCourt" DROP CONSTRAINT "ContestCourt_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestCourt_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestCourt_id_seq";

-- AlterTable
ALTER TABLE "ContestGroupMatchHistory" DROP CONSTRAINT "ContestGroupMatchHistory_pkey",
DROP COLUMN "winOrLose",
ADD COLUMN     "isWinner" BOOLEAN,
ADD COLUMN     "startTime" TEXT,
ADD COLUMN     "state" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestTeamId" SET DATA TYPE TEXT,
ALTER COLUMN "opponentTeamId" SET DATA TYPE TEXT,
ALTER COLUMN "contestMatchGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestGroupMatchResultId" SET DATA TYPE TEXT,
ALTER COLUMN "contestCourtId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestGroupMatchHistory_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestGroupMatchHistory_id_seq";

-- AlterTable
ALTER TABLE "ContestGroupMatchResult" DROP CONSTRAINT "ContestGroupMatchResult_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestMatchGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestTeamId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestGroupMatchResult_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestGroupMatchResult_id_seq";

-- AlterTable
ALTER TABLE "ContestMatchGroup" DROP CONSTRAINT "ContestMatchGroup_pkey",
DROP COLUMN "createMatchListYN",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestTierGroupId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestMatchGroup_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestMatchGroup_id_seq";

-- AlterTable
ALTER TABLE "ContestNotice" DROP CONSTRAINT "ContestNotice_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestNotice_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestNotice_id_seq";

-- AlterTable
ALTER TABLE "ContestReport" DROP CONSTRAINT "ContestReport_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestReport_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestReport_id_seq";

-- AlterTable
ALTER TABLE "ContestTeam" DROP CONSTRAINT "ContestTeam_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestTierGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestMatchGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestTournamentGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestTeam_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestTeam_id_seq";

-- AlterTable
ALTER TABLE "ContestTierGroup" DROP CONSTRAINT "ContestTierGroup_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestTierGroup_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestTierGroup_id_seq";

-- AlterTable
ALTER TABLE "ContestTournamentGroup" DROP CONSTRAINT "ContestTournamentGroup_pkey",
DROP COLUMN "matchName",
DROP COLUMN "matchNo",
ADD COLUMN     "name" TEXT,
ADD COLUMN     "nextMatchId" TEXT,
ADD COLUMN     "startTime" TEXT,
ADD COLUMN     "state" TEXT,
ADD COLUMN     "tournamentRoundText" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestTierGroupId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestTournamentGroup_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestTournamentGroup_id_seq";

-- AlterTable
ALTER TABLE "ContestTournamentHistory" DROP CONSTRAINT "ContestTournamentHistory_pkey",
DROP COLUMN "contestTeamId",
DROP COLUMN "opponentTeamId",
DROP COLUMN "winOrLose",
DROP COLUMN "winScore",
ADD COLUMN     "contestTeamName" TEXT,
ADD COLUMN     "isWinner" BOOLEAN,
ADD COLUMN     "matchNo" INTEGER,
ADD COLUMN     "opponentTeamName" TEXT,
ADD COLUMN     "resultText" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "contestTournamentGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestCourtId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestTournamentHistory_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestTournamentHistory_id_seq";

-- AlterTable
ALTER TABLE "ContestUser" DROP CONSTRAINT "ContestUser_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "contestTierGroupId" SET DATA TYPE TEXT,
ALTER COLUMN "contestTeamId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ContestUser_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ContestUser_id_seq";

-- AlterTable
ALTER TABLE "Facility" DROP CONSTRAINT "Facility_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Facility_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Facility_id_seq";

-- AlterTable
ALTER TABLE "FacilityImage" DROP CONSTRAINT "FacilityImage_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FacilityImage_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FacilityImage_id_seq";

-- AlterTable
ALTER TABLE "FacilityInfo" DROP CONSTRAINT "FacilityInfo_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FacilityInfo_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FacilityInfo_id_seq";

-- AlterTable
ALTER TABLE "FacilitySports" DROP CONSTRAINT "FacilitySports_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FacilitySports_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FacilitySports_id_seq";

-- AlterTable
ALTER TABLE "FacilityTag" DROP CONSTRAINT "FacilityTag_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FacilityTag_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FacilityTag_id_seq";

-- AlterTable
ALTER TABLE "FeedCategoryList" DROP CONSTRAINT "FeedCategoryList_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FeedCategoryList_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FeedCategoryList_id_seq";

-- AlterTable
ALTER TABLE "FeedUpload" DROP CONSTRAINT "FeedUpload_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FeedUpload_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FeedUpload_id_seq";

-- AlterTable
ALTER TABLE "Gallery" DROP CONSTRAINT "Gallery_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "groupId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Gallery_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Gallery_id_seq";

-- AlterTable
ALTER TABLE "GalleryImage" DROP CONSTRAINT "GalleryImage_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "galleryId" SET DATA TYPE TEXT,
ADD CONSTRAINT "GalleryImage_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GalleryImage_id_seq";

-- AlterTable
ALTER TABLE "Group" DROP CONSTRAINT "Group_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "groupPresidentId" SET DATA TYPE TEXT,
ALTER COLUMN "groupImageId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Group_id_seq";

-- AlterTable
ALTER TABLE "GroupImage" DROP CONSTRAINT "GroupImage_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "GroupImage_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GroupImage_id_seq";

-- AlterTable
ALTER TABLE "GroupInfo" DROP CONSTRAINT "GroupInfo_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "GroupInfo_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GroupInfo_id_seq";

-- AlterTable
ALTER TABLE "GroupJoinRequest" DROP CONSTRAINT "GroupJoinRequest_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "groupId" SET DATA TYPE TEXT,
ADD CONSTRAINT "GroupJoinRequest_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GroupJoinRequest_id_seq";

-- AlterTable
ALTER TABLE "GroupPresident" DROP CONSTRAINT "GroupPresident_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "GroupPresident_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GroupPresident_id_seq";

-- AlterTable
ALTER TABLE "GroupTag" DROP CONSTRAINT "GroupTag_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "GroupTag_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "GroupTag_id_seq";

-- AlterTable
ALTER TABLE "Hashtag" DROP CONSTRAINT "Hashtag_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Hashtag_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Hashtag_id_seq";

-- AlterTable
ALTER TABLE "Like" DROP CONSTRAINT "Like_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "photoId" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Like_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Like_id_seq";

-- AlterTable
ALTER TABLE "Message" DROP CONSTRAINT "Message_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "roomId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Message_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Message_id_seq";

-- AlterTable
ALTER TABLE "Notice" DROP CONSTRAINT "Notice_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "groupId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Notice_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Notice_id_seq";

-- AlterTable
ALTER TABLE "NoticeComment" DROP CONSTRAINT "NoticeComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "noticeId" SET DATA TYPE TEXT,
ADD CONSTRAINT "NoticeComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "NoticeComment_id_seq";

-- AlterTable
ALTER TABLE "NoticeLike" DROP CONSTRAINT "NoticeLike_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "noticeId" SET DATA TYPE TEXT,
ADD CONSTRAINT "NoticeLike_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "NoticeLike_id_seq";

-- AlterTable
ALTER TABLE "NoticeReComment" DROP CONSTRAINT "NoticeReComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "noticeCommentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "NoticeReComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "NoticeReComment_id_seq";

-- AlterTable
ALTER TABLE "Photo" DROP CONSTRAINT "Photo_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Photo_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Photo_id_seq";

-- AlterTable
ALTER TABLE "ReComment" DROP CONSTRAINT "ReComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "commentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "ReComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ReComment_id_seq";

-- AlterTable
ALTER TABLE "Report" DROP CONSTRAINT "Report_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "photoId" SET DATA TYPE TEXT,
ALTER COLUMN "boardId" SET DATA TYPE TEXT,
ALTER COLUMN "noticeId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Report_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Report_id_seq";

-- AlterTable
ALTER TABLE "RequestAddFacility" DROP CONSTRAINT "RequestAddFacility_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "RequestAddFacility_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "RequestAddFacility_id_seq";

-- AlterTable
ALTER TABLE "RequestAddTutor" DROP CONSTRAINT "RequestAddTutor_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "RequestAddTutor_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "RequestAddTutor_id_seq";

-- AlterTable
ALTER TABLE "Room" DROP CONSTRAINT "Room_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Room_id_seq";

-- AlterTable
ALTER TABLE "SportsEvent" DROP CONSTRAINT "SportsEvent_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "SportsEvent_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "SportsEvent_id_seq";

-- AlterTable
ALTER TABLE "Tag" DROP CONSTRAINT "Tag_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Tag_id_seq";

-- AlterTable
ALTER TABLE "Tutor" DROP CONSTRAINT "Tutor_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "tutorImageId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorPresidentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Tutor_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Tutor_id_seq";

-- AlterTable
ALTER TABLE "TutorImage" DROP CONSTRAINT "TutorImage_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorImage_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorImage_id_seq";

-- AlterTable
ALTER TABLE "TutorInfo" DROP CONSTRAINT "TutorInfo_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorInfo_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorInfo_id_seq";

-- AlterTable
ALTER TABLE "TutorInquiry" DROP CONSTRAINT "TutorInquiry_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorInquiry_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorInquiry_id_seq";

-- AlterTable
ALTER TABLE "TutorInquiryComment" DROP CONSTRAINT "TutorInquiryComment_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ALTER COLUMN "tutorInquiryId" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorInquiryComment_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorInquiryComment_id_seq";

-- AlterTable
ALTER TABLE "TutorPresident" DROP CONSTRAINT "TutorPresident_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorPresident_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorPresident_id_seq";

-- AlterTable
ALTER TABLE "TutorSportsEvent" DROP CONSTRAINT "TutorSportsEvent_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "tutorId" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorSportsEvent_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorSportsEvent_id_seq";

-- AlterTable
ALTER TABLE "TutorTag" DROP CONSTRAINT "TutorTag_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "TutorTag_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "TutorTag_id_seq";

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "User_id_seq";

-- AlterTable
ALTER TABLE "_FacilityToFacilityImage" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FacilityToFacilityInfo" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FacilityToFacilitySports" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FacilityToFacilityTag" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FacilityToGroup" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FacilityToTutor" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_FeedUploadToPhoto" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_GroupToGroupInfo" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_GroupToGroupTag" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_GroupToTutor" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_GroupToUser" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_HashtagToPhoto" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_RoomToUser" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_TutorToTutorInfo" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_TutorToTutorTag" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "_TutorToUser" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "ContestTournamentHistory_opponentTeamName_key" ON "ContestTournamentHistory"("opponentTeamName");

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
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupPresidentId_fkey" FOREIGN KEY ("groupPresidentId") REFERENCES "GroupPresident"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Group" ADD CONSTRAINT "Group_groupImageId_fkey" FOREIGN KEY ("groupImageId") REFERENCES "GroupImage"("id") ON DELETE CASCADE ON UPDATE CASCADE;

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
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestUser" ADD CONSTRAINT "ContestUser_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestId_fkey" FOREIGN KEY ("contestId") REFERENCES "Contest"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTeam" ADD CONSTRAINT "ContestTeam_contestTournamentGroupId_fkey" FOREIGN KEY ("contestTournamentGroupId") REFERENCES "ContestTournamentGroup"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestMatchGroup" ADD CONSTRAINT "ContestMatchGroup_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchResult" ADD CONSTRAINT "ContestGroupMatchResult_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestTeamId_fkey" FOREIGN KEY ("contestTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_opponentTeamId_fkey" FOREIGN KEY ("opponentTeamId") REFERENCES "ContestTeam"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestMatchGroupId_fkey" FOREIGN KEY ("contestMatchGroupId") REFERENCES "ContestMatchGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestGroupMatchResultId_fkey" FOREIGN KEY ("contestGroupMatchResultId") REFERENCES "ContestGroupMatchResult"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestGroupMatchHistory" ADD CONSTRAINT "ContestGroupMatchHistory_contestCourtId_fkey" FOREIGN KEY ("contestCourtId") REFERENCES "ContestCourt"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentGroup" ADD CONSTRAINT "ContestTournamentGroup_contestTierGroupId_fkey" FOREIGN KEY ("contestTierGroupId") REFERENCES "ContestTierGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTournamentGroupId_fkey" FOREIGN KEY ("contestTournamentGroupId") REFERENCES "ContestTournamentGroup"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestTeamName_fkey" FOREIGN KEY ("contestTeamName") REFERENCES "ContestTeam"("teamName") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_opponentTeamName_fkey" FOREIGN KEY ("opponentTeamName") REFERENCES "ContestTeam"("teamName") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTournamentHistory" ADD CONSTRAINT "ContestTournamentHistory_contestCourtId_fkey" FOREIGN KEY ("contestCourtId") REFERENCES "ContestCourt"("id") ON DELETE SET NULL ON UPDATE CASCADE;

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
