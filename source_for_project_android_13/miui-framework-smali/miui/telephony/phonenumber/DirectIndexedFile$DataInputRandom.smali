.class Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Lmiui/telephony/phonenumber/DirectIndexedFile$InputFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataInputRandom"
.end annotation


# instance fields
.field private blacklist mFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor blacklist <init>(Ljava/io/RandomAccessFile;)V
    .registers 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    .line 587
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 672
    return-void
.end method

.method public blacklist getFilePointer()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    return v0
.end method

.method public whitelist test-api readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v0

    return v0
.end method

.method public whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 3
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 617
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 5
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 622
    return-void
.end method

.method public whitelist test-api readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    return v0
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public blacklist seek(J)V
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 667
    return-void
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    return v0
.end method
