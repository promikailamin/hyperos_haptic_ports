.class public Lcom/android/server/usage/UsageStatsService$1;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 9

    .line 284
    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    const/16 v0, 0xb

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p3, v0, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    shl-int/lit8 p4, p4, 0x10

    const v0, 0xffff

    and-int/2addr p5, v0

    or-int/2addr p4, p5

    .line 286
    iput p4, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 287
    iput-object p1, p3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 288
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method
