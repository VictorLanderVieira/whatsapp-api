-- DropIndex
DROP INDEX "keyId";

-- AlterTable
ALTER TABLE "Message" ADD COLUMN     "keyLid" VARCHAR(100),
ADD COLUMN     "keyParticipantLid" VARCHAR(100),
ALTER COLUMN "keyRemoteJid" DROP NOT NULL;

-- CreateIndex
CREATE INDEX "key_props" ON "Message"("keyId", "keyLid", "keyRemoteJid");
