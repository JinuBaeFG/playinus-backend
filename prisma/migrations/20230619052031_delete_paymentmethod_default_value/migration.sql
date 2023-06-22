-- AlterTable
ALTER TABLE "Contest" ALTER COLUMN "contestPaymentMethod" DROP NOT NULL,
ALTER COLUMN "contestPaymentMethod" DROP DEFAULT;
