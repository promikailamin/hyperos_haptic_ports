.class public Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# instance fields
.field public mBatchSession:Lcom/android/server/am/psc/AsyncBatchSession;

.field public final mLooper:Landroid/os/Looper;

.field public final mPsc:Lcom/android/server/am/ProcessStateController;

.field public mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public static synthetic $r8$lambda$1976lRztlr3DMI0TePV_MFCQeo4(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setHomeProcessAsync$4(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ds7ExH1FVc_51TaNfNOIO2SgwI(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setHasRecentTasksAsync$9(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7h_Pef2hFldCxxdo06ZVe0vvvaA(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$getBatchSession$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fb6ZTbf2v7ppP__h7Zp-LV-xcjA(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setExpandedNotificationShadeAsync$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GokRNMhQGnat4sxobaXQljaSit0(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setHasActivityAsync$7(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TbVq-rPb0eNZK1HOqsqbAEQw934(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setTopProcessAsync$1(Lcom/android/server/am/ProcessRecord;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIkM_eLdT094IuKwZudyix-44Io(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setVisibleDozeUiProcessAsync$6(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_aZCDmhDZ7Ma6D4ggCPY91lU7dI(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setPreviousProcessAsync$3(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ftseUYZp72LuRZG_8TT9SHpm7Go(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setActivityStateAsync$8(Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ne6zvf6LL-5EORYYiRvxbz6voO0(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setTopProcessStateAsync$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJ665OIIOyncudj8ldf7M9SE3M0(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->lambda$setHeavyWeightProcessAsync$5(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Looper;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 4

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    .line 946
    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mLooper:Landroid/os/Looper;

    .line 947
    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Looper;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/android/server/am/ProcessStateController-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;-><init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Looper;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-void
.end method


# virtual methods
.method public final getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;
    .registers 6

    .line 1095
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mBatchSession:Lcom/android/server/am/psc/AsyncBatchSession;

    if-nez v0, :cond_1f

    .line 1096
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1097
    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;)V

    .line 1098
    new-instance v2, Lcom/android/server/am/psc/AsyncBatchSession;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {v3}, Lcom/android/server/am/ProcessStateController;->-$$Nest$fgetmLock(Lcom/android/server/am/ProcessStateController;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/server/am/psc/AsyncBatchSession;-><init>(Landroid/os/Handler;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mBatchSession:Lcom/android/server/am/psc/AsyncBatchSession;

    .line 1100
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mBatchSession:Lcom/android/server/am/psc/AsyncBatchSession;

    return-object p0
.end method

.method public final synthetic lambda$getBatchSession$10()V
    .registers 2

    .line 1097
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateController;->runFullUpdate(I)V

    return-void
.end method

.method public final synthetic lambda$setActivityStateAsync$8(Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V
    .registers 6

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetActivityStateFlags(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 1079
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1, p3, p4}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetPerceptibleTaskStoppedTimeMillis(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    return-void
.end method

.method public final synthetic lambda$setExpandedNotificationShadeAsync$0(Z)V
    .registers 2

    .line 984
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetExpandedNotificationShade(Lcom/android/server/am/ProcessStateController;Z)V

    return-void
.end method

.method public final synthetic lambda$setHasActivityAsync$7(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 1066
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetHasActivity(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public final synthetic lambda$setHasRecentTasksAsync$9(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 1091
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetHasRecentTasks(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public final synthetic lambda$setHeavyWeightProcessAsync$5(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 1046
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetHeavyWeightProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public final synthetic lambda$setHomeProcessAsync$4(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 1035
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetHomeProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public final synthetic lambda$setPreviousProcessAsync$3(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetPreviousProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public final synthetic lambda$setTopProcessAsync$1(Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 5

    .line 996
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetTopProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ProcessRecord;)V

    if-eqz p2, :cond_d

    .line 998
    iget-object p1, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetPreviousProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_d
    if-eqz p3, :cond_15

    .line 1001
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetExpandedNotificationShade(Lcom/android/server/am/ProcessStateController;Z)V

    :cond_15
    return-void
.end method

.method public final synthetic lambda$setTopProcessStateAsync$2(I)V
    .registers 2

    .line 1012
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetTopProcessState(Lcom/android/server/am/ProcessStateController;I)V

    return-void
.end method

.method public final synthetic lambda$setVisibleDozeUiProcessAsync$6(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 1056
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController;->-$$Nest$msetVisibleDozeUiProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public runUpdateAsync()V
    .registers 1

    .line 966
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/psc/AsyncBatchSession;->runUpdate()V

    return-void
.end method

.method public setActivityStateAsync(Lcom/android/server/wm/WindowProcessController;IJ)V
    .registers 11

    .line 1076
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;IJ)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeviceUnlocking(Z)V
    .registers 2

    .line 975
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->mPsc:Lcom/android/server/am/ProcessStateController;

    invoke-static {p0}, Lcom/android/server/am/ProcessStateController;->-$$Nest$fgetmGlobalState(Lcom/android/server/am/ProcessStateController;)Lcom/android/server/am/ProcessStateController$GlobalState;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmUnlockingStaged(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V

    return-void
.end method

.method public setExpandedNotificationShadeAsync(Z)V
    .registers 4

    .line 984
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHasActivityAsync(Lcom/android/server/wm/WindowProcessController;Z)V
    .registers 5

    .line 1065
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHasRecentTasksAsync(Lcom/android/server/wm/WindowProcessController;Z)V
    .registers 5

    .line 1090
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHeavyWeightProcessAsync(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1045
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1046
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHomeProcessAsync(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1034
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/psc/ProcessRecordInternal;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1035
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreviousProcessAsync(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1022
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/psc/ProcessRecordInternal;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1023
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTopProcessAsync(Lcom/android/server/wm/WindowProcessController;ZZ)V
    .registers 6

    if-eqz p1, :cond_7

    .line 994
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 995
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTopProcessStateAsync(I)V
    .registers 4

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleDozeUiProcessAsync(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1055
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1056
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession;->stage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;
    .registers 2

    .line 957
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->getBatchSession()Lcom/android/server/am/psc/AsyncBatchSession;

    move-result-object p0

    const/4 v0, 0x1

    .line 958
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/BatchSession;->start(I)V

    return-object p0
.end method
