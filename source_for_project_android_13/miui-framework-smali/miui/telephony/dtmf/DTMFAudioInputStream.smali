.class public Lmiui/telephony/dtmf/DTMFAudioInputStream;
.super Ljava/io/InputStream;
.source "DTMFAudioInputStream.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DTMFAudioInputStream"


# instance fields
.field private blacklist mByteBuff:[B

.field private blacklist mReadedCnt:I


# direct methods
.method public constructor whitelist <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B

    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    if-nez p1, :cond_d

    .line 21
    const-string v0, "DTMFAudioInputStream"

    const-string v1, "parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 24
    :cond_d
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 26
    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 28
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v1

    if-lt v0, v2, :cond_9

    .line 51
    const/4 v0, -0x1

    return v0

    .line 53
    :cond_9
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    aget-byte v0, v1, v0

    return v0
.end method

.method public whitelist read([BI)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    if-eqz v0, :cond_1f

    if-gtz p2, :cond_7

    goto :goto_1f

    .line 38
    :cond_7
    move v1, p2

    .line 39
    .local v1, "_len":I
    array-length v2, v0

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_11

    .line 40
    array-length v0, v0

    sub-int v1, v0, v3

    .line 42
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1e

    .line 43
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 45
    .end local v0    # "i":I
    :cond_1e
    return p2

    .line 33
    .end local v1    # "_len":I
    :cond_1f
    :goto_1f
    const-string v0, "DTMFAudioInputStream"

    const-string v1, "paramenter error:fail to get subdatalist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, -0x1

    return v0
.end method
