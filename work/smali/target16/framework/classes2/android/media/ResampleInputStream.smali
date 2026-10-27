.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final greylist-max-o mFirLength:I = 0x1d


# instance fields
.field private greylist-max-o mBuf:[B

.field private greylist-max-o mBufCount:I

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mOneByte:[B

.field private final greylist-max-o mRateIn:I

.field private final greylist-max-o mRateOut:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;II)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 61
    const/4 v1, 0x2

    mul-int/2addr p3, v1

    if-ne p2, p3, :cond_15

    .line 62
    nop

    .line 63
    nop

    .line 65
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 66
    iput v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 67
    iput v0, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 68
    return-void

    .line 61
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only support 2:1 at the moment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native greylist-max-o fir21([BI[BII)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 132
    :cond_a
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_e
    move-exception v1

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 133
    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    .line 142
    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .line 73
    if-ne v0, v2, :cond_11

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7a

    .line 86
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x2

    .line 87
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 88
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_2a

    .line 89
    :cond_1a
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_2a

    .line 90
    new-array v1, v1, [B

    .line 91
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 97
    :cond_2a
    :goto_2a
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1d

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 98
    if-lez v1, :cond_60

    .line 99
    if-ge v1, p3, :cond_3d

    goto :goto_3f

    :cond_3d
    mul-int/lit8 v1, v0, 0x2

    .line 100
    :goto_3f
    nop

    .line 109
    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v0, v1, 0x2

    invoke-static {p3, v3, p1, p2, v0}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 112
    iget p1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr p1, v1

    iget p2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr p1, p2

    .line 113
    iget p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 114
    iget p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez p2, :cond_5f

    iget-object p2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v0, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {p2, p1, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_5f
    return v1

    .line 103
    :cond_60
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v5, v5

    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 104
    const/4 v2, -0x1

    if-ne v1, v2, :cond_74

    return v2

    .line 105
    :cond_74
    iget v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 106
    goto :goto_2a

    .line 83
    :cond_7a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
