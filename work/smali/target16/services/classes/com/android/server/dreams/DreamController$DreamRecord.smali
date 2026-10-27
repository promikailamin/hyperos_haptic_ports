.class public final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mAppTask:Landroid/app/IAppTask;

.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field public mDreamIsObscured:Z

.field public mDreamStartTime:J

.field public final mDreamingStartedCallback:Landroid/os/IRemoteCallback;

.field public final mIsPreviewMode:Z

.field public final mName:Landroid/content/ComponentName;

.field public final mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

.field public mStopReason:Ljava/lang/String;

.field public final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field public final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public static synthetic $r8$lambda$0dZk_9NvDR3x53aKK_IeEsJQuSk(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceConnected$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Skr7f1qhnwF4vzCPd5Ay9Te7IWU(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X0EFHI4eKxvwQqFLtcNIA3oV6dA(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceDisconnected$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$geq5JavYTREAgfuv_JBWhoPZgeA(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lRUHH2HyR-uXlQCXn_ZiXFC2rTE(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$binderDied$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDreamingStartedCallback(Lcom/android/server/dreams/DreamController$DreamRecord;)Landroid/os/IRemoteCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReleaseWakeLockIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopPreviousDreamsIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopStubbornDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopUnconnectedDreamRunnable(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDreamIsObscured(Lcom/android/server/dreams/DreamController$DreamRecord;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamIsObscured:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDreamStartTime(Lcom/android/server/dreams/DreamController$DreamRecord;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStopReason(Lcom/android/server/dreams/DreamController$DreamRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 10

    .line 511
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Ljava/lang/Runnable;

    .line 466
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    .line 468
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 475
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 481
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    .line 512
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 513
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 514
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 515
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 516
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 517
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p7, :cond_39

    .line 521
    invoke-virtual {p7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 523
    :cond_39
    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0x2710

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dreamIsFrontmost()Z
    .registers 1

    .line 583
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamIsObscured:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$binderDied$2()V
    .registers 3

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 531
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 532
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmResetScreenTimeoutOnUnexpectedDreamExit(Lcom/android/server/dreams/DreamController;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 533
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mresetScreenTimeout(Lcom/android/server/dreams/DreamController;)V

    .line 535
    :cond_18
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string v1, "binder died"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_20
    return-void
.end method

.method public final synthetic lambda$new$0()V
    .registers 3

    .line 469
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_18

    .line 470
    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "slow to connect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final synthetic lambda$new$1()V
    .registers 4

    .line 476
    const-string v0, "DreamController"

    const-string v1, "Stubborn dream did not finish itself in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    const-string/jumbo v2, "slow to finish"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-void
.end method

.method public final synthetic lambda$onServiceConnected$3(Landroid/os/IBinder;)V
    .registers 3

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 545
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_19

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v0, :cond_19

    .line 546
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$mattach(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    return-void

    .line 549
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    return-void
.end method

.method public final synthetic lambda$onServiceDisconnected$4()V
    .registers 3

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 559
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_21

    .line 560
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmResetScreenTimeoutOnUnexpectedDreamExit(Lcom/android/server/dreams/DreamController;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 561
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mresetScreenTimeout(Lcom/android/server/dreams/DreamController;)V

    .line 563
    :cond_18
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "service disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 543
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 557
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseWakeLockIfNeeded()V
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_15

    .line 576
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 578
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public stopPreviousDreamsIfNeeded()V
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_d

    .line 570
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p0}, Lcom/android/server/dreams/DreamController;->-$$Nest$mstopPreviousDreams(Lcom/android/server/dreams/DreamController;)V

    :cond_d
    return-void
.end method
