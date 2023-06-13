-- DropForeignKey
ALTER TABLE "BannerDiscImagePath" DROP CONSTRAINT "BannerDiscImagePath_bannerId_fkey";

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

-- AddForeignKey
ALTER TABLE "Photo" ADD CONSTRAINT "Photo_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

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
