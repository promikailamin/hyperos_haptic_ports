.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;
    }
.end annotation


# instance fields
.field private final mClipboardClearHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 3

    .line 356
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 358
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    invoke-static {p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method

.method private checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 390
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_36

    .line 393
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 395
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 397
    return-void

    .line 399
    :cond_1d
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 400
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 401
    :try_start_29
    invoke-direct {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(II)V

    .line 402
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, p1, v0, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 403
    monitor-exit v2

    .line 404
    return-void

    .line 403
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw v3

    .line 391
    .end local v0    # "intendingUid":I
    .end local v1    # "intendingUserId":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTimeoutForAutoClear()J
    .registers 5

    .line 424
    const-string v0, "clipboard"

    const-string v1, "auto_clear_timeout"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private scheduleAutoClear(II)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "intendingUid"    # I

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 409
    .local v0, "oldIdentity":J
    :try_start_4
    const-string v2, "clipboard"

    const-string v3, "auto_clear_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 411
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 411
    const/16 v4, 0x65

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 413
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 413
    invoke-static {v2, v4, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 415
    .local v2, "clearMessage":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    .line 416
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getTimeoutForAutoClear()J

    move-result-wide v4

    .line 415
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_32

    .line 419
    .end local v2    # "clearMessage":Landroid/os/Message;
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    nop

    .line 421
    return-void

    .line 419
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw v2
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 10
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 545
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 547
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 548
    :try_start_11
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v4, v5, v0, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 550
    monitor-exit v2

    .line 551
    return-void

    .line 550
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v3
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 431
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 432
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 433
    .local v1, "intendingUserId":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_15

    .line 435
    return-void

    .line 437
    :cond_15
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 438
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    .line 439
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 438
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 440
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 441
    monitor-exit v2

    .line 442
    return-void

    .line 441
    :catchall_2f
    move-exception v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public getClipboardClickTrace()Ljava/util/Map;
    .registers 2

    .line 677
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardServiceStub;->getClipboardClickRuleData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 447
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 448
    .local v8, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 452
    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_8e

    .line 455
    :cond_23
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 457
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2f} :catch_7d
    .catchall {:try_start_2a .. :try_end_2f} :catchall_7b

    .line 463
    nop

    .line 465
    :try_start_30
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    move-object v10, v1

    .line 473
    .local v10, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    iget v6, v10, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    const/4 v7, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardServiceStub;->clipboardAccessResult(Landroid/content/ClipData;Ljava/lang/String;IIIZ)I

    move-result v1

    .line 475
    .local v1, "miuiResult":I
    if-nez v1, :cond_66

    .line 476
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p1, v0, v8, v10}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 477
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v10, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    .line 478
    iget-object v2, v10, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_5a

    .line 479
    invoke-direct {p0, p2, v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(II)V

    .line 483
    :cond_5a
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/clipboard/ClipboardServiceStub;->modifyClipDataIfNeed(Ljava/lang/String;Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v2

    monitor-exit v9

    return-object v2

    .line 485
    :cond_66
    const/4 v2, 0x1

    if-ne v1, v2, :cond_71

    .line 486
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardServiceStub;->EMPTY_CLIP:Landroid/content/ClipData;

    monitor-exit v9

    return-object v2

    .line 489
    .end local v1    # "miuiResult":I
    .end local v10    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_71
    monitor-exit v9
    :try_end_72
    .catchall {:try_start_30 .. :try_end_72} :catchall_7b

    .line 490
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/clipboard/ClipboardServiceStub;->waitUserChoice(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v1

    return-object v1

    .line 489
    :catchall_7b
    move-exception v1

    goto :goto_8c

    .line 458
    :catch_7d
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_7e
    const-string v3, "ClipboardService"

    const-string v4, "Could not grant permission to primary clip. Clearing clipboard."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v2, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 462
    monitor-exit v9

    return-object v2

    .line 489
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_8c
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_7e .. :try_end_8d} :catchall_7b

    throw v1

    .line 453
    :cond_8e
    :goto_8e
    return-object v2
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .registers 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 497
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 498
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 499
    .local v8, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZ)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 503
    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_73

    .line 506
    :cond_23
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 507
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    move-object v11, v1

    .line 511
    .local v11, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v1

    iget-object v2, v11, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    iget v6, v11, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    const/4 v7, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardServiceStub;->clipboardAccessResult(Landroid/content/ClipData;Ljava/lang/String;IIIZ)I

    move-result v1

    .line 514
    .local v1, "miuiResult":I
    if-nez v1, :cond_51

    .line 515
    iget-object v2, v11, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_4e

    .line 516
    iget-object v2, v11, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    goto :goto_4f

    :cond_4e
    nop

    :goto_4f
    monitor-exit v10

    .line 515
    return-object v9

    .line 517
    :cond_51
    const/4 v2, 0x1

    if-ne v1, v2, :cond_60

    .line 518
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardServiceStub;->EMPTY_CLIP:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    monitor-exit v10

    return-object v2

    .line 520
    .end local v1    # "miuiResult":I
    .end local v11    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_60
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_70

    .line 521
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/clipboard/ClipboardServiceStub;->waitUserChoice(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v1

    .line 522
    .local v1, "clip":Landroid/content/ClipData;
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    :cond_6f
    return-object v9

    .line 520
    .end local v1    # "clip":Landroid/content/ClipData;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v10
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    .line 504
    :cond_73
    :goto_73
    return-object v9
.end method

.method public getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 588
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 589
    .local v8, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 593
    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_4a

    .line 596
    :cond_30
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 597
    :try_start_37
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 598
    .local v3, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_45

    .line 599
    iget-object v2, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    monitor-exit v1

    return-object v2

    .line 601
    :cond_45
    monitor-exit v1

    return-object v2

    .line 602
    .end local v3    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_47

    throw v2

    .line 594
    :cond_4a
    :goto_4a
    return-object v2
.end method

.method public getStashPrimaryClip()Landroid/content/ClipData;
    .registers 2

    .line 667
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardServiceStub;->getStashClipboardData()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 635
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 636
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 637
    .local v9, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v9

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 639
    invoke-static {v1, v9}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_67

    .line 642
    :cond_24
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_30} :catch_56
    .catchall {:try_start_2b .. :try_end_30} :catchall_54

    .line 650
    nop

    .line 652
    :try_start_31
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v9}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 653
    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, p1, v0, v9, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 654
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    .line 655
    iget-object v3, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_48

    .line 656
    invoke-direct {p0, p2, v0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(II)V

    .line 660
    :cond_48
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/clipboard/ClipboardServiceStub;->modifyClipDataIfNeed(Ljava/lang/String;Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 662
    .end local v2    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_54
    move-exception v2

    goto :goto_65

    .line 645
    :catch_56
    move-exception v3

    .line 647
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "ClipboardService"

    const-string v5, "Could not grant permission to primary clip. Clearing clipboard."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v2, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 649
    monitor-exit v1

    return-object v2

    .line 662
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_31 .. :try_end_66} :catchall_54

    throw v2

    .line 640
    :cond_67
    :goto_67
    return-object v2
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 565
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 566
    .local v8, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 570
    invoke-static {v1, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_4e

    .line 573
    :cond_23
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 575
    .local v3, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_49

    .line 576
    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 577
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_47

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_47

    const/4 v2, 0x1

    :cond_47
    monitor-exit v1

    return v2

    .line 579
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_49
    monitor-exit v1

    return v2

    .line 580
    .end local v3    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_4b

    throw v2

    .line 571
    :cond_4e
    :goto_4e
    return v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 528
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 529
    .local v0, "intendingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 530
    .local v9, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p1

    move v4, v0

    move v5, v9

    invoke-static/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 534
    invoke-static {v1, v9}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3b

    .line 537
    :cond_24
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 538
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v9}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_36

    const/4 v2, 0x1

    :cond_36
    monitor-exit v1

    return v2

    .line 539
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v2

    .line 535
    :cond_3b
    :goto_3b
    return v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 366
    :catch_5
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 368
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    :cond_11
    throw v0
.end method

.method public pushClipboardRuleData(Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "clipboardRuleInfo"    # Landroid/content/pm/ParceledListSlice;

    .line 672
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/clipboard/ClipboardServiceStub;->updateClipboardRuleData(Ljava/util/List;)V

    .line 673
    return-void
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .registers 7
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 556
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    .line 557
    .local v0, "intendingUserId":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 558
    :try_start_d
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 559
    monitor-exit v1

    .line 560
    return-void

    .line 559
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .registers 4
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 377
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    return-void
.end method

.method public setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    return-void
.end method
