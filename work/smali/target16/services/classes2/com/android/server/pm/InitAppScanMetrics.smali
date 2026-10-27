.class public final Lcom/android/server/pm/InitAppScanMetrics;
.super Ljava/lang/Object;
.source "InitAppScanMetrics.java"


# instance fields
.field public mInitAppScanOutcome:I

.field public mIsFsiEnabled:Z

.field public mNumApkSplits:I

.field public mSignatureSchemeVersion:I

.field public mTotalScanDurationMillis:J

.field public final mTotalScanStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    .line 39
    iput v0, p0, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/InitAppScanMetrics;->mTotalScanStartTimeMillis:J

    return-void
.end method

.method public static translateToInitAppScanOutcome(I)I
    .registers 2

    .line 0
    const/16 v0, -0x70

    if-eq p0, v0, :cond_29

    const/4 v0, -0x7

    if-eq p0, v0, :cond_27

    const/4 v0, -0x5

    if-eq p0, v0, :cond_29

    const/4 v0, -0x2

    if-eq p0, v0, :cond_29

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/16 v0, -0x17

    if-eq p0, v0, :cond_29

    const/16 v0, -0x16

    if-eq p0, v0, :cond_24

    packed-switch p0, :pswitch_data_2c

    const/16 p0, 0x8

    return p0

    :pswitch_1e
    const/4 p0, 0x2

    return p0

    :pswitch_20
    const/4 p0, 0x5

    return p0

    :pswitch_22
    const/4 p0, 0x6

    return p0

    :cond_24
    const/4 p0, 0x3

    return p0

    :cond_26
    return v0

    :cond_27
    const/4 p0, 0x4

    return p0

    :cond_29
    const/4 p0, 0x7

    return p0

    nop

    :pswitch_data_2c
    .packed-switch -0x69
        :pswitch_22
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method

.method public static translateToSignatureSchemeVersion(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method


# virtual methods
.method public log()V
    .registers 12

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InitAppScanMetrics;->mTotalScanStartTimeMillis:J

    sub-long v8, v0, v2

    iput-wide v8, p0, Lcom/android/server/pm/InitAppScanMetrics;->mTotalScanDurationMillis:J

    .line 165
    iget-boolean v5, p0, Lcom/android/server/pm/InitAppScanMetrics;->mIsFsiEnabled:Z

    iget v6, p0, Lcom/android/server/pm/InitAppScanMetrics;->mNumApkSplits:I

    iget v7, p0, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    iget v10, p0, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    const/16 v4, 0x493

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIJI)V

    return-void
.end method

.method public setInitAppScanOutcome(I)Lcom/android/server/pm/InitAppScanMetrics;
    .registers 2

    .line 157
    invoke-static {p1}, Lcom/android/server/pm/InitAppScanMetrics;->translateToInitAppScanOutcome(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    return-object p0
.end method

.method public setIsFsiEnabled(Z)Lcom/android/server/pm/InitAppScanMetrics;
    .registers 2

    .line 123
    iput-boolean p1, p0, Lcom/android/server/pm/InitAppScanMetrics;->mIsFsiEnabled:Z

    return-object p0
.end method

.method public setNumApkSplits(I)Lcom/android/server/pm/InitAppScanMetrics;
    .registers 2

    .line 134
    iput p1, p0, Lcom/android/server/pm/InitAppScanMetrics;->mNumApkSplits:I

    return-object p0
.end method

.method public setSignatureSchemeVersion(I)Lcom/android/server/pm/InitAppScanMetrics;
    .registers 2

    .line 146
    invoke-static {p1}, Lcom/android/server/pm/InitAppScanMetrics;->translateToSignatureSchemeVersion(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    return-object p0
.end method
