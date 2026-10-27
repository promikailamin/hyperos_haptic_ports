.class Landroid/database/sqlite/SQLiteConnection$RateLimiter;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RateLimiter"
.end annotation


# instance fields
.field private final blacklist mCreationUptimeMs:J

.field private final blacklist mMaxCredits:I

.field private final blacklist mMsPerCredit:J

.field private blacklist mSpent:J


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 8

    .line 1680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1681
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    .line 1682
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    .line 1683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    iget p3, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mCreationUptimeMs:J

    .line 1684
    return-void
.end method


# virtual methods
.method blacklist tryAcquire()Z
    .registers 9

    .line 1688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1689
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mCreationUptimeMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMsPerCredit:J

    div-long/2addr v0, v2

    .line 1691
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    sub-long v2, v0, v2

    .line 1692
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_22

    .line 1693
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    iget v6, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mMaxCredits:I

    int-to-long v6, v6

    sub-long/2addr v2, v6

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1694
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    sub-long v2, v0, v2

    .line 1696
    :cond_22
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_31

    .line 1697
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->mSpent:J

    .line 1698
    const/4 v0, 0x1

    return v0

    .line 1700
    :cond_31
    const/4 v0, 0x0

    return v0
.end method
