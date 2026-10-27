.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field private mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .registers 7
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p5, "eventsMask"    # J

    .line 2832
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2833
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 2834
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 2835
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 2836
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2837
    return-void
.end method

.method private shouldSendEvent(I)Z
    .registers 10
    .param p1, "event"    # I

    .line 2882
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2883
    .local v0, "mask":J
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_4a

    .line 2894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown display event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    return v5

    .line 2889
    :pswitch_26
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2e

    move v2, v5

    :cond_2e
    return v2

    .line 2891
    :pswitch_2f
    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_37

    move v2, v5

    :cond_37
    return v2

    .line 2887
    :pswitch_38
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_40

    move v2, v5

    :cond_40
    return v2

    .line 2885
    :pswitch_41
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_49

    move v2, v5

    :cond_49
    return v2

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_38
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2845
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 2849
    return-void
.end method

.method public notifyDisplayEventAsync(II)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 2852
    const-string v0, ", uid: "

    const-string v1, ", pid: "

    const-string/jumbo v2, "notifyDisplayEventAsync: Excessive delay in onDisplayEvent() latencyMs: "

    const-string v3, "DisplayManagerService"

    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendEvent(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2853
    return-void

    .line 2864
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2866
    .local v4, "start":J
    const-wide/16 v6, 0xc8

    :try_start_16
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v8, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_4f
    .catchall {:try_start_16 .. :try_end_1b} :catchall_4d

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 2873
    .local v8, "latencyMs":J
    cmp-long v6, v8, v6

    if-lez v6, :cond_4c

    .line 2874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    .end local v8    # "latencyMs":J
    :cond_4c
    goto :goto_80

    .line 2872
    :catchall_4d
    move-exception v8

    goto :goto_81

    .line 2867
    :catch_4f
    move-exception v8

    .line 2868
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to notify process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " that displays changed, assuming it died."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2870
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_4d

    .line 2872
    .end local v8    # "ex":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 2873
    .local v8, "latencyMs":J
    cmp-long v6, v8, v6

    if-lez v6, :cond_4c

    .line 2874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2879
    .end local v8    # "latencyMs":J
    :goto_80
    return-void

    .line 2872
    :goto_81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 2873
    .local v9, "latencyMs":J
    cmp-long v6, v9, v6

    if-lez v6, :cond_b2

    .line 2874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    .end local v9    # "latencyMs":J
    :cond_b2
    throw v8
.end method

.method public updateEventsMask(J)V
    .registers 4
    .param p1, "eventsMask"    # J

    .line 2840
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2841
    return-void
.end method
