.class Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 5531
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 5536
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5537
    .local v1, "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_31

    .line 5538
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5539
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v3, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-static {v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5541
    :cond_26
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object v2

    .line 5535
    .end local v1    # "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5544
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5545
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .registers 5
    .param p1, "listener"    # Landroid/os/IBinder;

    .line 5550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 5551
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_24

    .line 5552
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object v1

    .line 5550
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5555
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5556
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .registers 12
    .param p1, "inflight"    # Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5560
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 5561
    .local v0, "nowELAPSED":J
    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5562
    .local v2, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5563
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_22

    .line 5564
    iput v4, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5565
    iget-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 5567
    :cond_22
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 5568
    .local v3, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5569
    iget v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v5, :cond_39

    .line 5570
    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5571
    iget-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 5574
    :cond_39
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v8, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    iget-object v9, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/ActivityManagerInternal;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 5578
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v5

    iget v6, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-interface {v5, v6, v4}, Lcom/android/server/am/SmartPowerServiceStub;->onAlarmStatusChanged(IZ)V

    .line 5579
    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .registers 8
    .param p1, "inflight"    # Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5582
    if-eqz p1, :cond_5

    .line 5583
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5585
    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 5587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBroadcastRefCount -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    if-eqz p1, :cond_45

    .line 5589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingIntent -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    :cond_45
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_f1

    .line 5593
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5596
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeskclockDelivering:Z

    if-eqz v0, :cond_76

    .line 5597
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-boolean v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeskclockDelivering:Z

    .line 5598
    const-string v0, "Delay release wakelock for deskclock."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5599
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d

    .line 5609
    :cond_76
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5612
    :goto_7d
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_122

    .line 5613
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished all dispatches with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining inflights"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e9

    .line 5616
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remaining #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5615
    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    .line 5618
    .end local v0    # "i":I
    :cond_e9
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_122

    .line 5622
    :cond_f1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_111

    .line 5623
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 5624
    .local v0, "inFlight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 5626
    .end local v0    # "inFlight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    goto :goto_122

    .line 5628
    :cond_111
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v1, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5629
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 5632
    :cond_122
    :goto_122
    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "who"    # Landroid/os/IBinder;

    .line 5639
    if-nez p1, :cond_2f

    .line 5640
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarmComplete: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5641
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5640
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5642
    return-void

    .line 5645
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5647
    .local v0, "ident":J
    :try_start_33
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5d

    .line 5648
    :try_start_38
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5649
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v3

    .line 5650
    .local v3, "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    if-eqz v3, :cond_54

    .line 5654
    invoke-direct {p0, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5655
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5663
    .end local v3    # "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    :cond_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_5a

    .line 5665
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5666
    nop

    .line 5667
    return-void

    .line 5663
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
    .end local p1    # "who":Landroid/os/IBinder;
    :try_start_5c
    throw v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 5665
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
    .restart local p1    # "who":Landroid/os/IBinder;
    :catchall_5d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5666
    throw v2
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "who"    # Landroid/os/IBinder;

    .line 5685
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5686
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v1

    .line 5687
    .local v1, "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    if-eqz v1, :cond_1a

    .line 5692
    invoke-direct {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5693
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    goto :goto_34

    .line 5698
    :cond_1a
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious timeout of listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 5700
    .end local v1    # "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    :goto_34
    monitor-exit v0

    .line 5701
    return-void

    .line 5700
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    .registers 23
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;
    .param p2, "nowELAPSED"    # J

    .line 5708
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 5709
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result v0

    .line 5708
    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v5

    .line 5711
    .local v5, "workSourceToken":J
    :try_start_e
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_7f

    .line 5713
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v0, v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5716
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 5717
    .local v9, "pkg":Ljava/lang/String;
    if-eqz v9, :cond_33

    const-string v0, "com.android.deskclock"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 5718
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-boolean v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeskclockDelivering:Z
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_247

    .line 5723
    :cond_33
    :try_start_33
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object v17

    .line 5724
    .local v17, "bundle":Landroid/os/Bundle;
    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v0

    const-string v13, "android.intent.extra.ALARM_COUNT"

    iget v14, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 5725
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v16, 0x0

    .line 5724
    invoke-virtual/range {v10 .. v17}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_33 .. :try_end_5d} :catch_60
    .catchall {:try_start_33 .. :try_end_5d} :catchall_247

    .line 5739
    .end local v17    # "bundle":Landroid/os/Bundle;
    nop

    .line 5740
    .end local v9    # "pkg":Ljava/lang/String;
    goto/16 :goto_e2

    .line 5727
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_60
    move-exception v0

    .line 5728
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_61
    iget-wide v10, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_71

    .line 5731
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 5737
    :cond_71
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v7, v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_247

    .line 5779
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5738
    return-void

    .line 5742
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_7f
    :try_start_7f
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v0, v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5744
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v9, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5747
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v9, :cond_c0

    .line 5748
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    invoke-static {v9, v11}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V

    aput-wide v3, v0, v10

    .line 5749
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v0

    const/16 v9, 0xa

    if-lt v0, v9, :cond_c0

    .line 5750
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    :try_end_c0
    .catchall {:try_start_7f .. :try_end_c0} :catchall_247

    .line 5760
    :cond_c0
    :try_start_c0
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 5761
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v10, 0x3

    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 5763
    invoke-interface {v11}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 5762
    invoke-virtual {v9, v10, v11}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 5761
    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_e1} :catch_238
    .catchall {:try_start_c0 .. :try_end_e1} :catchall_247

    .line 5776
    nop

    .line 5779
    :goto_e2
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5780
    nop

    .line 5784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mBroadcastRefCount -> "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v9, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "AlarmManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5786
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v9, 0x4

    if-nez v0, :cond_128

    .line 5787
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v11, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v12, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v12, v8}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 5788
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5789
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v9, v8, v7}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5791
    :cond_128
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$InFlight;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V

    .line 5792
    .local v0, "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5793
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v11, v8

    iput v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 5794
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->isBroadcast()Z

    move-result v10

    if-eqz v10, :cond_14a

    .line 5795
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v11, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5797
    :cond_14a
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v10, :cond_152

    move v10, v8

    goto :goto_153

    :cond_152
    move v10, v7

    .line 5798
    .local v10, "doze":Z
    :goto_153
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v11

    if-eqz v11, :cond_169

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v11

    .line 5799
    invoke-virtual {v11}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v11

    if-eqz v11, :cond_169

    move v7, v8

    goto :goto_16a

    :cond_169
    nop

    .line 5800
    .local v7, "batterySaver":Z
    :goto_16a
    if-nez v10, :cond_16e

    if-eqz v7, :cond_1ba

    .line 5801
    :cond_16e
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v11

    if-eqz v11, :cond_19b

    .line 5804
    iget v11, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_17e

    .line 5805
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_182

    .line 5806
    :cond_17e
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    :goto_182
    nop

    .line 5807
    .local v9, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v12, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 5808
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 5807
    invoke-virtual {v9, v11, v12, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 5809
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v12, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v2, v10, v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v11, v12}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .end local v9    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_1b9

    .line 5818
    :cond_19b
    iget v9, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_1b9

    .line 5819
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object v9

    iget v11, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v9, v11, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5820
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v11, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v2, v10, v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V

    invoke-interface {v9, v11}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_1ba

    .line 5818
    :cond_1b9
    :goto_1b9
    nop

    .line 5841
    :cond_1ba
    :goto_1ba
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v9

    if-nez v9, :cond_1dd

    .line 5842
    iget v9, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5843
    .local v9, "userId":I
    iget-boolean v11, v2, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz v11, :cond_1d4

    .line 5844
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    iget-object v12, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v9, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->recordUsage(Ljava/lang/String;IJ)V

    goto :goto_1dd

    .line 5846
    :cond_1d4
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v12, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v9, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 5850
    .end local v9    # "userId":I
    :cond_1dd
    :goto_1dd
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5851
    .local v9, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    iget v11, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v11, v8

    iput v11, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    .line 5852
    iget v11, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v11, :cond_1ed

    .line 5853
    iput v8, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5854
    iput-wide v3, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_1f2

    .line 5856
    :cond_1ed
    iget v11, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/2addr v11, v8

    iput v11, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5858
    :goto_1f2
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 5859
    .local v11, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v12, v8

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 5860
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-nez v12, :cond_202

    .line 5861
    iput v8, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5862
    iput-wide v3, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_207

    .line 5864
    :cond_202
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/2addr v12, v8

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 5866
    :goto_207
    iget v12, v2, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_214

    iget v12, v2, Lcom/android/server/alarm/Alarm;->type:I

    if-nez v12, :cond_211

    goto :goto_214

    :cond_211
    move-object/from16 v18, v0

    goto :goto_237

    .line 5868
    :cond_214
    :goto_214
    iget v12, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v12, v8

    iput v12, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 5869
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v12, v8

    iput v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 5870
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v14, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v15, v2, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v8, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .local v18, "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Landroid/app/ActivityManagerInternal;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 5874
    :goto_237
    return-void

    .line 5765
    .end local v7    # "batterySaver":Z
    .end local v9    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v10    # "doze":Z
    .end local v11    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v18    # "inflight":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    :catch_238
    move-exception v0

    .line 5774
    .local v0, "e":Ljava/lang/Exception;
    :try_start_239
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    :try_end_243
    .catchall {:try_start_239 .. :try_end_243} :catchall_247

    .line 5779
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5775
    return-void

    .line 5779
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_247
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5780
    throw v0
.end method

.method synthetic lambda$deliverLocked$0$com-android-server-alarm-AlarmManagerService$DeliveryTracker(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 9
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;
    .param p2, "doze"    # Z
    .param p3, "batterySaver"    # Z
    .param p4, "a"    # Lcom/android/server/alarm/Alarm;

    .line 5810
    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2f

    invoke-static {p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2f

    .line 5813
    :cond_e
    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 5814
    .local v1, "dozeAdjusted":Z
    :goto_1c
    if-eqz p3, :cond_28

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5815
    invoke-static {v3, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    .line 5816
    .local v3, "batterySaverAdjusted":Z
    :goto_29
    if-nez v1, :cond_2d

    if-eqz v3, :cond_2e

    :cond_2d
    move v2, v0

    :cond_2e
    return v2

    .line 5811
    .end local v1    # "dozeAdjusted":Z
    .end local v3    # "batterySaverAdjusted":Z
    :cond_2f
    :goto_2f
    return v2
.end method

.method synthetic lambda$deliverLocked$1$com-android-server-alarm-AlarmManagerService$DeliveryTracker(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z
    .registers 9
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;
    .param p2, "doze"    # Z
    .param p3, "batterySaver"    # Z
    .param p4, "a"    # Lcom/android/server/alarm/Alarm;

    .line 5821
    iget v0, p4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2f

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_e

    goto :goto_2f

    .line 5825
    :cond_e
    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 5826
    .local v1, "dozeAdjusted":Z
    :goto_1c
    if-eqz p3, :cond_28

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5827
    invoke-static {v3, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    .line 5828
    .local v3, "batterySaverAdjusted":Z
    :goto_29
    if-nez v1, :cond_2d

    if-eqz v3, :cond_2e

    :cond_2d
    move v2, v0

    :cond_2e
    return v2

    .line 5823
    .end local v1    # "dozeAdjusted":Z
    .end local v3    # "batterySaverAdjusted":Z
    :cond_2f
    :goto_2f
    return v2
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 5675
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5676
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 5677
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 5678
    monitor-exit v0

    .line 5679
    return-void

    .line 5678
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method
