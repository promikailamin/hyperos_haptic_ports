.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# instance fields
.field public mCurrentRequest:I

.field public mCurrentUsbFunctionsRequested:Z

.field public final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 7

    .line 2334
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 2290
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2300
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 2335
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2338
    :try_start_14
    monitor-enter p1
    :try_end_15
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_15} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_3f

    const-wide/16 p3, 0x0

    .line 2339
    :try_start_17
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p3, 0x1

    .line 2340
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    const/4 p3, -0x1

    .line 2341
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    const/16 p3, 0xa

    .line 2342
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbGadgetHalVersion()V

    .line 2344
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_3b

    .line 2345
    :try_start_27
    new-instance p1, Ljava/io/File;

    const-string p3, "/sys/class/android_usb/android0/state"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2346
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_27 .. :try_end_3a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3f

    return-void

    :catchall_3b
    move-exception v0

    move-object p0, v0

    .line 2344
    :try_start_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3b

    :try_start_3e
    throw p0
    :try_end_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_3e .. :try_end_3f} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    move-object p0, v0

    .line 2350
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error initializing UsbHandler"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_4b
    move-exception v0

    move-object p0, v0

    .line 2348
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Usb gadget hal not found"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    return-void
.end method


# virtual methods
.method public getUsbSpeedCb(I)V
    .registers 2

    .line 2515
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 2382
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_19c

    .line 2490
    :pswitch_7
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 2477
    :pswitch_b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 2478
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mUsbGadgetHal is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2483
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getGadgetHalVersion()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 2485
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "update Usb gadget version failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18d

    .line 2464
    :pswitch_33
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    .line 2465
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object p1

    if-nez p1, :cond_5a

    .line 2466
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGadgetHal is null, operationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2471
    :cond_5a
    :try_start_5a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object p1

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getUsbSpeed(J)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception p0

    .line 2473
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get UsbSpeed failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18d

    .line 2442
    :pswitch_6f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 2443
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2444
    :try_start_7a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v3

    if-nez v3, :cond_8e

    .line 2445
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "reset Usb Gadget mUsbGadgetHal is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7a .. :try_end_8b} :catchall_8c

    return-void

    :catchall_8c
    move-exception p0

    goto :goto_b4

    :cond_8e
    const/16 v3, 0x8

    .line 2452
    :try_start_90
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2453
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v3, :cond_9c

    .line 2454
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    goto :goto_9c

    :catch_9a
    move-exception p1

    goto :goto_a5

    .line 2456
    :cond_9c
    :goto_9c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v2

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->reset(J)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a4} :catch_9a
    .catchall {:try_start_90 .. :try_end_a4} :catchall_8c

    goto :goto_b1

    .line 2458
    :goto_a5
    :try_start_a5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reset Usb Gadget failed"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2459
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 2461
    :goto_b1
    monitor-exit v0

    goto/16 :goto_18d

    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_8c

    throw p0

    .line 2427
    :pswitch_b6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_bb

    goto :goto_bc

    :cond_bb
    move v2, v1

    .line 2428
    :goto_bc
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 2429
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2431
    :try_start_c7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;->getInstance(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfputmUsbGadgetHal(Lcom/android/server/usb/hal/gadget/UsbGadgetHal;)V

    .line 2433
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-nez v3, :cond_e9

    if-nez v2, :cond_e9

    .line 2434
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZI)V
    :try_end_dc
    .catch Ljava/util/NoSuchElementException; {:try_start_c7 .. :try_end_dc} :catch_df
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_dd

    goto :goto_e9

    :catchall_dd
    move-exception p0

    goto :goto_ec

    :catch_df
    move-exception p0

    .line 2437
    :try_start_e0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Usb gadget hal not found"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2439
    :cond_e9
    :goto_e9
    monitor-exit v0

    goto/16 :goto_18d

    :goto_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_e0 .. :try_end_ed} :catchall_dd

    throw p0

    .line 2415
    :pswitch_ee
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2416
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_18d

    .line 2417
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-nez p1, :cond_106

    .line 2418
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    return-void

    .line 2422
    :cond_106
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZI)V

    return-void

    .line 2397
    :pswitch_10c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "processing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    .line 2399
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2401
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v3, :cond_160

    .line 2402
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "updating mCurrentFunctions"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 2405
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentFunctions:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "applied:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_15e

    move v1, v2

    :cond_15e
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 2409
    :cond_160
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    .line 2388
    :pswitch_164
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2389
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set functions timed out! no reply from usb hal ,operationId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_18d

    .line 2393
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZI)V

    :cond_18d
    :goto_18d
    return-void

    .line 2384
    :pswitch_18e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const-wide/16 v2, 0x0

    .line 2385
    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZI)V

    return-void

    :pswitch_data_19c
    .packed-switch 0xe
        :pswitch_18e
        :pswitch_164
        :pswitch_10c
        :pswitch_ee
        :pswitch_b6
        :pswitch_6f
        :pswitch_7
        :pswitch_7
        :pswitch_33
        :pswitch_b
    .end packed-switch
.end method

.method public handlerInitDone(I)V
    .registers 4

    .line 2594
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object p0

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getCurrentUsbFunctions(J)V

    return-void
.end method

.method public resetCb(I)V
    .registers 2

    if-eqz p1, :cond_c

    .line 2521
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resetCb fail"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public setCurrentUsbFunctionsCb(JIIJZ)V
    .registers 10

    .line 2498
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    if-ne v0, p4, :cond_4b

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    cmp-long p1, p5, p1

    if-eqz p1, :cond_11

    goto :goto_4b

    .line 2503
    :cond_11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2504
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "notifyCurrentFunction request:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " status:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3b

    const/4 p1, 0x1

    .line 2506
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    return-void

    :cond_3b
    if-nez p7, :cond_4b

    .line 2508
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Setting default fuctions"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe

    .line 2509
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setEnabledFunctions(JZI)V
    .registers 9

    .line 2564
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_19

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 2566
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Could not set unsupported function for the GadgetHal"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2570
    :cond_19
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_25

    if-eqz p3, :cond_61

    .line 2573
    :cond_25
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting USB config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p3, 0x0

    .line 2575
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 2577
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    cmp-long v0, p1, v2

    if-nez v0, :cond_4d

    const/4 p3, 0x1

    .line 2580
    :cond_4d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 2583
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZI)V

    .line 2585
    iget-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p3, :cond_61

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result p3

    if-eqz p3, :cond_61

    .line 2587
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    :cond_61
    return-void
.end method

.method public final setUsbConfig(JZI)V
    .registers 16

    .line 2525
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 2529
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xf

    .line 2530
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v2, 0xe

    .line 2531
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2533
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2534
    :try_start_39
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 2535
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setUsbConfig mUsbGadgetHal is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_78

    .line 2539
    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v3

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    const/16 v8, 0x9c4

    int-to-long v9, p4

    move-wide v5, p1

    move v7, p3

    invoke-interface/range {v3 .. v10}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->setCurrentUsbFunctions(IJZIJ)V

    const-wide/16 p1, 0xbb8

    .line 2542
    invoke-virtual {p0, v1, v7, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(IZJ)V

    .line 2544
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_76

    const-wide/16 p1, 0x1388

    .line 2546
    invoke-virtual {p0, v0, v7, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(IZJ)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6a} :catch_6b
    .catchall {:try_start_4e .. :try_end_6a} :catchall_4b

    goto :goto_76

    :catch_6b
    move-exception v0

    move-object p0, v0

    .line 2551
    :try_start_6d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2553
    :cond_76
    :goto_76
    monitor-exit v2

    return-void

    :goto_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_4b

    throw p0
.end method
