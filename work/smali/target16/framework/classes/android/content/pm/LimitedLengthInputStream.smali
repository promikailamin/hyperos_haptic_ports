.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedLengthInputStream.java"


# instance fields
.field private final greylist-max-o mEnd:J

.field private greylist-max-o mOffset:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/InputStream;JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    if-eqz p1, :cond_3d

    .line 40
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_34

    .line 44
    cmp-long p1, p4, v0

    if-ltz p1, :cond_2b

    .line 48
    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long p1, p4, v0

    if-gtz p1, :cond_22

    .line 52
    add-long/2addr p4, p2

    iput-wide p4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/LimitedLengthInputStream;->skip(J)J

    .line 55
    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 56
    return-void

    .line 49
    :cond_22
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "offset + length > Long.MAX_VALUE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2b
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_34
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 61
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 64
    :cond_c
    :try_start_c
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 65
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 59
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 71
    const/4 p1, -0x1

    return p1

    .line 74
    :cond_a
    array-length v0, p1

    .line 75
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 77
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v2, p3

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_35

    .line 81
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 82
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 85
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 86
    iget-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 88
    return p1

    .line 78
    :cond_35
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "offset out of bounds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " + "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
