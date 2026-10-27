.class Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;
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
    name = "DataInputStream"
.end annotation


# instance fields
.field private blacklist mInputFile:Ljava/io/InputStream;

.field private blacklist mInputPos:J


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 689
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

    .line 828
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 829
    return-void
.end method

.method public blacklist getFilePointer()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    return-wide v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 694
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 700
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api readChar()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 706
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 707
    .local v2, "c":C
    iget-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 708
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_24

    .line 709
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 710
    .end local v2    # "c":C
    .local v0, "c":C
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-char v2, v2

    .line 712
    .end local v0    # "c":C
    .restart local v2    # "c":C
    :cond_24
    return v2
.end method

.method public whitelist test-api readDouble()D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 7
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 728
    .local v0, "len":I
    iget-wide v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 729
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 9
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 734
    .local v0, "len":I
    iget-wide v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 735
    return-void
.end method

.method public whitelist test-api readInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 740
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 741
    .local v2, "i":I
    iget-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 742
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_34

    .line 743
    const/4 v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 744
    .end local v2    # "i":I
    .local v0, "i":I
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 745
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 746
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    .line 748
    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_34
    return v2
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 759
    .local v1, "b":[B
    const-wide/16 v2, 0x0

    .line 760
    .local v2, "l":J
    iget-wide v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 761
    iget-object v4, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v0, :cond_70

    .line 762
    const/4 v4, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v2, v4

    .line 763
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v0, v4, 0x8

    int-to-long v4, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 764
    const/4 v0, 0x5

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    int-to-long v4, v0

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 765
    const/4 v0, 0x4

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v4, v0

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 766
    const/4 v0, 0x3

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 767
    const/4 v0, 0x2

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 768
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 769
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 771
    :cond_70
    return-wide v2
.end method

.method public whitelist test-api readShort()S
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 777
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 778
    .local v2, "s":S
    iget-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 779
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_24

    .line 780
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 781
    .end local v2    # "s":S
    .local v0, "s":S
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-short v2, v2

    .line 783
    .end local v0    # "s":S
    .restart local v2    # "s":S
    :cond_24
    return v2
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 789
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 795
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 796
    .local v2, "s":S
    iget-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 797
    iget-object v3, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_24

    .line 798
    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 799
    .end local v2    # "s":S
    .local v0, "s":S
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-short v2, v2

    .line 801
    .end local v0    # "s":S
    .restart local v2    # "s":S
    :cond_24
    return v2
.end method

.method public blacklist seek(J)V
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 819
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_12

    .line 820
    iput-wide p1, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 824
    return-void

    .line 822
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 812
    iget-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/telephony/phonenumber/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 813
    return p1
.end method
