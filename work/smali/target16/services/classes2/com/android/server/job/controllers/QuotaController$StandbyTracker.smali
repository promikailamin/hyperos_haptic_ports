.class public final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "QuotaController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public static synthetic $r8$lambda$9XuSV0t6VFKXDiNQyFLLJYvliIo(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->lambda$onAppIdleStateChanged$0(IILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2

    .line 2526
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAppIdleStateChanged$0(IILjava/lang/String;I)V
    .registers 5

    .line 2533
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result p1

    .line 2534
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/job/controllers/QuotaController;->updateStandbyBucket(ILjava/lang/String;II)V

    return-void
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 12

    .line 2532
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p1

    move v3, p2

    move v2, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
