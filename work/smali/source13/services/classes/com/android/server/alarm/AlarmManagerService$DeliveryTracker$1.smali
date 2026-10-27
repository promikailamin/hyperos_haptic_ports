.class Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 5599
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;->this$1:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5602
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;->this$1:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5603
    :try_start_7
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$1;->this$1:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5604
    const-string v1, "AlarmManager"

    const-string v2, "Wakelock for deskclock is released."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    monitor-exit v0

    .line 5606
    return-void

    .line 5605
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
