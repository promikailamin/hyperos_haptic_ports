.class public Lcom/android/internal/os/ProcessCpuTrackerImpl;
.super Lcom/android/internal/os/ProcessCpuTrackerStub;
.source "ProcessCpuTrackerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTrackerImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTrackerStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDisableThread(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 11
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "tst"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 13
    iget-wide v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v0, v0

    .line 14
    .local v0, "totalTime":I
    const/4 v1, 0x1

    if-gtz v0, :cond_7

    return v1

    .line 15
    :cond_7
    iget v2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    int-to-long v4, v0

    div-long/2addr v2, v4

    .line 16
    .local v2, "mThousands":J
    const-wide/16 v4, 0xa

    div-long v4, v2, v4

    .line 17
    .local v4, "mHundreds":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_1e

    .line 18
    const/4 v1, 0x0

    return v1

    .line 20
    :cond_1e
    return v1
.end method
