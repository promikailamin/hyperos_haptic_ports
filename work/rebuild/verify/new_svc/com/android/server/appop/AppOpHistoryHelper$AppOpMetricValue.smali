.class public Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;
.super Ljava/lang/Object;
.source "AppOpHistoryHelper.java"


# instance fields
.field public mBackgroundAccessCount:I

.field public mBackgroundDurationMillis:J

.field public mBackgroundRejectCount:I

.field public mForegroundAccessCount:I

.field public mForegroundDurationMillis:J

.field public mForegroundRejectCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackgroundAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundAccessCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundDurationMillis(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundDurationMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundRejectCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundAccessCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundDurationMillis(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundDurationMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundRejectCount:I

    return p0
.end method

.method public constructor <init>(JIIJII)V
    .registers 9

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundDurationMillis:J

    .line 537
    iput p3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundAccessCount:I

    .line 538
    iput p4, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundRejectCount:I

    .line 539
    iput-wide p5, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundDurationMillis:J

    .line 540
    iput p7, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundAccessCount:I

    .line 541
    iput p8, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundRejectCount:I

    return-void
.end method


# virtual methods
.method public addBackgroundAccessCount(I)V
    .registers 3

    .line 561
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundAccessCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundAccessCount:I

    return-void
.end method

.method public addBackgroundDurationMillis(J)V
    .registers 5

    .line 557
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundDurationMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundDurationMillis:J

    return-void
.end method

.method public addBackgroundRejectCount(I)V
    .registers 3

    .line 565
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundRejectCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mBackgroundRejectCount:I

    return-void
.end method

.method public addForegroundAccessCount(I)V
    .registers 3

    .line 549
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundAccessCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundAccessCount:I

    return-void
.end method

.method public addForegroundDurationMillis(J)V
    .registers 5

    .line 545
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundDurationMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundDurationMillis:J

    return-void
.end method

.method public addForegroundRejectCount(I)V
    .registers 3

    .line 553
    iget v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundRejectCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->mForegroundRejectCount:I

    return-void
.end method
