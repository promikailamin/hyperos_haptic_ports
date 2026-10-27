.class public Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStatsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUsageLimitData"
.end annotation


# instance fields
.field private final mTotalUsageLimit:J

.field private final mUsageRemaining:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "totalUsageLimit"    # J
    .param p3, "usageRemaining"    # J

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-wide p1, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 317
    iput-wide p3, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    .line 318
    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .registers 3

    .line 321
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    return-wide v0
.end method

.method public getUsageRemaining()J
    .registers 3

    .line 324
    iget-wide v0, p0, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    return-wide v0
.end method
