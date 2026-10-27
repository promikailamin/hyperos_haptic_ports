.class public Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;
.super Ljava/lang/Thread;
.source "FlashNotificationsController.java"


# instance fields
.field public mColor:I

.field public final mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public mForceStop:Z

.field public mShouldDoCameraFlash:Z

.field public mShouldDoScreenFlash:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 3

    .line 753
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 748
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 750
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 751
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 754
    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 755
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;Lcom/android/server/accessibility/FlashNotificationsController-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 825
    monitor-enter p0

    .line 826
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 828
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final delay(J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 836
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_e

    .line 839
    :catch_e
    iget-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz p1, :cond_13

    goto :goto_1d

    .line 842
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    :cond_1d
    :goto_1d
    return-void
.end method

.method public run()V
    .registers 5

    const/4 v0, -0x8

    .line 761
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 762
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmColor(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 763
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 765
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 766
    monitor-enter p0

    .line 767
    :try_start_30
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_53

    .line 769
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->startFlashNotification()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_87

    .line 771
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_53

    .line 774
    :try_start_49
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_52} :catch_55
    .catchall {:try_start_49 .. :try_end_52} :catchall_53

    goto :goto_5c

    :catchall_53
    move-exception v0

    goto :goto_a4

    .line 776
    :catch_55
    :try_start_55
    const-string v0, "FlashNotifController"

    const-string v1, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_53

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 782
    :try_start_64
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_75

    .line 783
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmThread(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;)V

    goto :goto_75

    :catchall_73
    move-exception p0

    goto :goto_85

    .line 788
    :cond_75
    :goto_75
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v1, :cond_83

    .line 789
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->tryUnlinkToDeath()Z

    .line 790
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmCurrentFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 792
    :cond_83
    monitor-exit v0

    return-void

    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_64 .. :try_end_86} :catchall_73

    throw p0

    :catchall_87
    move-exception v0

    .line 771
    :try_start_88
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 772
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_53

    .line 774
    :try_start_92
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_9b} :catch_9c
    .catchall {:try_start_92 .. :try_end_9b} :catchall_53

    goto :goto_a3

    .line 776
    :catch_9c
    :try_start_9c
    const-string v1, "FlashNotifController"

    const-string v2, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_a3
    throw v0

    .line 780
    :goto_a4
    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_53

    throw v0
.end method

.method public final startFlashNotification()V
    .registers 4

    .line 797
    monitor-enter p0

    .line 798
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v0, :cond_64

    .line 799
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    if-ltz v0, :cond_26

    .line 801
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fputmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;I)V

    if-nez v1, :cond_26

    goto :goto_64

    :catchall_24
    move-exception v0

    goto :goto_66

    .line 805
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    if-eqz v0, :cond_37

    .line 806
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V

    .line 809
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    if-eqz v0, :cond_40

    .line 810
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 812
    :cond_40
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 815
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz v0, :cond_59

    goto :goto_64

    .line 818
    :cond_59
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    goto :goto_1

    .line 820
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_24

    throw v0
.end method
