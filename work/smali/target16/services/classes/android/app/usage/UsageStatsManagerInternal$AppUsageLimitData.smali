.class public Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# instance fields
.field public final mTotalUsageLimit:J

.field public final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 358
    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .registers 3

    .line 362
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    return-wide v0
.end method

.method public getUsageRemaining()J
    .registers 3

    .line 365
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-wide v0
.end method
