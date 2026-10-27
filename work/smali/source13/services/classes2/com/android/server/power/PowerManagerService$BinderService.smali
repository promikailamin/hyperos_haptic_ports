.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 5643
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method private isEnhancedDischargePredictionValidLocked(J)Z
    .registers 7
    .param p1, "nowElapsed"    # J

    .line 6157
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V
    .registers 28
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "callback"    # Landroid/os/IWakeLockCallback;

    .line 5696
    move-object/from16 v1, p0

    move-object/from16 v13, p4

    if-eqz p1, :cond_a8

    .line 5699
    if-eqz v13, :cond_9f

    .line 5702
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 5704
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5705
    and-int/lit8 v0, p2, 0x40

    const-string v2, "android.permission.DEVICE_POWER"

    if-eqz v0, :cond_26

    .line 5706
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5709
    :cond_26
    if-eqz p5, :cond_3c

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5710
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    goto :goto_3d

    .line 5713
    :cond_3c
    const/4 v0, 0x0

    .line 5716
    .end local p5    # "ws":Landroid/os/WorkSource;
    .local v0, "ws":Landroid/os/WorkSource;
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5717
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5719
    .local v5, "pid":I
    const/high16 v6, -0x80000000

    and-int v6, p2, v6

    if-eqz v6, :cond_76

    .line 5720
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5722
    new-instance v2, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, v13}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 5723
    .local v2, "workSource":Landroid/os/WorkSource;
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    .line 5724
    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 5726
    :cond_68
    move-object v0, v2

    .line 5728
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 5729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    move-object v14, v0

    move v15, v4

    move/from16 v16, v5

    goto :goto_7a

    .line 5719
    .end local v2    # "workSource":Landroid/os/WorkSource;
    :cond_76
    move-object v14, v0

    move v15, v4

    move/from16 v16, v5

    .line 5732
    .end local v0    # "ws":Landroid/os/WorkSource;
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .local v14, "ws":Landroid/os/WorkSource;
    .local v15, "uid":I
    .local v16, "pid":I
    :goto_7a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 5734
    .local v17, "ident":J
    :try_start_7e
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v3, p1

    move/from16 v4, p7

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v14

    move-object/from16 v9, p6

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p8

    invoke-static/range {v2 .. v12}, Lcom/android/server/power/PowerManagerService;->-$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    :try_end_95
    .catchall {:try_start_7e .. :try_end_95} :catchall_9a

    .line 5737
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5738
    nop

    .line 5739
    return-void

    .line 5737
    :catchall_9a
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5738
    throw v0

    .line 5700
    .end local v14    # "ws":Landroid/os/WorkSource;
    .end local v15    # "uid":I
    .end local v16    # "pid":I
    .end local v17    # "ident":J
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "packageName must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5697
    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "lock must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    .line 5744
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 5746
    return-void
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 18
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "displayId"    # I
    .param p7, "callback"    # Landroid/os/IWakeLockCallback;

    .line 5655
    if-gez p5, :cond_7

    .line 5656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .end local p5    # "uid":I
    .local v0, "uid":I
    goto :goto_8

    .line 5655
    .end local v0    # "uid":I
    .restart local p5    # "uid":I
    :cond_7
    move v0, p5

    .line 5658
    .end local p5    # "uid":I
    .restart local v0    # "uid":I
    :goto_8
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v0}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 5660
    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 7
    .param p1, "eventTime"    # J

    .line 6576
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_31

    .line 6580
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6584
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6586
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 6588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6589
    nop

    .line 6590
    return-void

    .line 6588
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6589
    throw v3

    .line 6577
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 6431
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6435
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mcrashInternal(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 6437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6438
    nop

    .line 6439
    return-void

    .line 6437
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6438
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6618
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 6620
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6622
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 6623
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_27

    aget-object v5, p3, v4

    .line 6624
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 6625
    const/4 v2, 0x1

    .line 6626
    goto :goto_27

    .line 6623
    .end local v5    # "arg":Ljava/lang/String;
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 6630
    :cond_27
    :goto_27
    if-eqz v2, :cond_2f

    .line 6631
    :try_start_29
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V

    goto :goto_34

    .line 6633
    :cond_2f
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_39

    .line 6636
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6637
    nop

    .line 6638
    return-void

    .line 6636
    :catchall_39
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6637
    throw v3
.end method

.method public forceLowPowerStandbyActive(Z)V
    .registers 5
    .param p1, "active"    # Z

    .line 6301
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 6303
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string v2, "forceLowPowerStandbyActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6308
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6310
    .local v0, "ident":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/LowPowerStandbyController;->forceActive(Z)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    .line 6312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6313
    nop

    .line 6314
    return-void

    .line 6312
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6313
    throw v2
.end method

.method public forceSuspend()Z
    .registers 5

    .line 6604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6608
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6610
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 6612
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6610
    return v3

    .line 6612
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6613
    throw v3
.end method

.method public getAmbientDisplaySuppressionTokens()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6648
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6650
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getSuppressionTokens(I)Ljava/util/List;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 6652
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6650
    return-object v3

    .line 6652
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6653
    throw v3
.end method

.method public getBatteryDischargePrediction()Landroid/os/ParcelDuration;
    .registers 10

    .line 6165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6167
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_5b
    .catchall {:try_start_5 .. :try_end_c} :catchall_56

    .line 6168
    :try_start_c
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 6169
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_53

    .line 6184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6169
    return-object v2

    .line 6171
    :cond_19
    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_53

    .line 6172
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_5b
    .catchall {:try_start_1a .. :try_end_21} :catchall_56

    .line 6175
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6176
    .local v4, "nowElapsed":J
    invoke-direct {p0, v4, v5}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 6177
    new-instance v6, Landroid/os/ParcelDuration;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-direct {v6, v7, v8}, Landroid/os/ParcelDuration;-><init>(J)V

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_50

    .line 6184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6177
    return-object v6

    .line 6179
    .end local v4    # "nowElapsed":J
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_50

    .line 6180
    :try_start_3d
    new-instance v3, Landroid/os/ParcelDuration;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatteryStats(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->computeBatteryTimeRemaining()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/os/ParcelDuration;-><init>(J)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_5b
    .catchall {:try_start_3d .. :try_end_4c} :catchall_56

    .line 6184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6180
    return-object v3

    .line 6179
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :try_start_52
    throw v4
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_53} :catch_5b
    .catchall {:try_start_52 .. :try_end_53} :catchall_56

    .line 6171
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :catchall_53
    move-exception v4

    :try_start_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :try_start_55
    throw v4
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_56} :catch_5b
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 6184
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6185
    throw v2

    .line 6181
    :catch_5b
    move-exception v3

    .line 6184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6185
    nop

    .line 6186
    return-object v2
.end method

.method public getBrightnessConstraint(I)F
    .registers 3
    .param p1, "constraint"    # I

    .line 5950
    packed-switch p1, :pswitch_data_2e

    .line 5968
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 5966
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    return v0

    .line 5964
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    return v0

    .line 5962
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    return v0

    .line 5960
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    return v0

    .line 5958
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    return v0

    .line 5956
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    return v0

    .line 5954
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    return v0

    .line 5952
    :pswitch_29
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .registers 4

    .line 6019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6021
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getFullBatterySaverPolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 6023
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6021
    return-object v2

    .line 6023
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6024
    throw v2
.end method

.method public getLastShutdownReason()I
    .registers 4

    .line 6324
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6329
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal()I

    move-result v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 6331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6329
    return v2

    .line 6331
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6332
    throw v2
.end method

.method public getLastSleepReason()I
    .registers 4

    .line 6337
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6342
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgetLastSleepReasonInternal(Lcom/android/server/power/PowerManagerService;)I

    move-result v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 6344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6342
    return v2

    .line 6344
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6345
    throw v2
.end method

.method public getPowerSaveModeTrigger()I
    .registers 6

    .line 6096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6098
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_power_save_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 6102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6098
    return v2

    .line 6102
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6103
    throw v2
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 5
    .param p1, "serviceType"    # I

    .line 5994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5996
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 5998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5996
    return-object v2

    .line 5998
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5999
    throw v2
.end method

.method public goToSleep(JII)V
    .registers 19
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 5905
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_5e

    .line 5909
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5913
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5915
    .local v12, "ident":J
    :try_start_23
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_59

    .line 5916
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/power/PowerGroup;

    .line 5917
    .local v5, "defaultPowerGroup":Lcom/android/server/power/PowerGroup;
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    .line 5918
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v6, p1

    move/from16 v8, p3

    move v9, v2

    invoke-static/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msleepPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_50

    .line 5920
    :cond_46
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v7, v5

    move-wide v8, p1

    move/from16 v10, p3

    move v11, v2

    invoke-static/range {v6 .. v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdozePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z

    .line 5922
    .end local v5    # "defaultPowerGroup":Lcom/android/server/power/PowerGroup;
    :goto_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_56

    .line 5924
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5925
    nop

    .line 5926
    return-void

    .line 5922
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    .end local v2    # "uid":I
    .end local v12    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "eventTime":J
    .end local p3    # "reason":I
    .end local p4    # "flags":I
    :try_start_58
    throw v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 5924
    .restart local v2    # "uid":I
    .restart local v12    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "eventTime":J
    .restart local p3    # "reason":I
    .restart local p4    # "flags":I
    :catchall_59
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5925
    throw v0

    .line 5906
    .end local v2    # "uid":I
    .end local v12    # "ident":J
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "event time must not be in the future"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAmbientDisplayAvailable()Z
    .registers 4

    .line 6506
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6511
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplayConfiguration(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 6513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6511
    return v2

    .line 6513
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6514
    throw v2
.end method

.method public isAmbientDisplaySuppressed()Z
    .registers 4

    .line 6563
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6568
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 6570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6568
    return v2

    .line 6570
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6571
    throw v2
.end method

.method public isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .registers 6
    .param p1, "token"    # Ljava/lang/String;

    .line 6533
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6537
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6539
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    .line 6541
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6539
    return v3

    .line 6541
    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6542
    throw v3
.end method

.method public isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .line 6547
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6549
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_SUPPRESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6554
    .local v0, "ident":J
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->isAmbientDisplayAvailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v2

    .line 6555
    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed(Ljava/lang/String;I)Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_34

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 6557
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6554
    return v2

    .line 6557
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6558
    throw v2
.end method

.method public isBatteryDischargePredictionPersonalized()Z
    .registers 6

    .line 6191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6193
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_28

    .line 6194
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_25

    .line 6198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6194
    return v3

    .line 6196
    :catchall_25
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :try_start_27
    throw v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 6198
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6199
    throw v2
.end method

.method public isDeviceIdleMode()Z
    .registers 4

    .line 6204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6206
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 6208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6206
    return v2

    .line 6208
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6209
    throw v2
.end method

.method public isInteractive()Z
    .registers 4

    .line 5974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5976
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5976
    return v2

    .line 5978
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5979
    throw v2
.end method

.method public isLightDeviceIdleMode()Z
    .registers 4

    .line 6214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6216
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 6218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6216
    return v2

    .line 6218
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6219
    throw v2
.end method

.method public isLowPowerStandbyEnabled()Z
    .registers 4

    .line 6245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6247
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 6249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6247
    return v2

    .line 6249
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6250
    throw v2
.end method

.method public isLowPowerStandbySupported()Z
    .registers 4

    .line 6228
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 6230
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string v2, "isLowPowerStandbySupported"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6235
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6237
    .local v0, "ident":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/LowPowerStandbyController;->isSupported()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 6239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6237
    return v2

    .line 6239
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6240
    throw v2
.end method

.method public isPowerSaveMode()Z
    .registers 4

    .line 5984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5986
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 5988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5986
    return v2

    .line 5988
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5989
    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 4

    .line 6594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6596
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misScreenBrightnessBoostedInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 6598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6596
    return v2

    .line 6598
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6599
    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 5831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5833
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5833
    return v2

    .line 5835
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5836
    throw v2
.end method

.method public nap(J)V
    .registers 10
    .param p1, "eventTime"    # J

    .line 5930
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_47

    .line 5934
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5938
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5940
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_42

    .line 5941
    :try_start_29
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    invoke-static {v4, v5, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdreamPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JI)Z

    .line 5943
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3f

    .line 5945
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5946
    nop

    .line 5947
    return-void

    .line 5943
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "uid":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "eventTime":J
    :try_start_41
    throw v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 5945
    .restart local v0    # "uid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "eventTime":J
    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5946
    throw v3

    .line 5931
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 5648
    new-instance v0, Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerShellCommand;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 5650
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerManagerServiceImpl(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerServiceStub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6662
    const/4 v0, 0x1

    return v0

    .line 6664
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/IPowerManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 6665
    :catch_13
    move-exception v0

    .line 6666
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 6358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reboot reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6359
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6360
    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 6361
    const-string/jumbo v0, "recovery-update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6362
    :cond_44
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6365
    :cond_4f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 6367
    if-nez p2, :cond_6a

    .line 6368
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerManagerServiceImpl(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerServiceStub;->reassignRebootReason(II)Ljava/lang/String;

    move-result-object p2

    .line 6371
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6373
    .local v0, "ident":J
    :try_start_6e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_79

    .line 6375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6376
    nop

    .line 6377
    return-void

    .line 6375
    :catchall_79
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6376
    throw v2
.end method

.method public rebootSafeMode(ZZ)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .line 6387
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6389
    const-string/jumbo v0, "safemode"

    .line 6390
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 6391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6393
    .local v1, "ident":J
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1, v0, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_25

    .line 6395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6396
    nop

    .line 6397
    return-void

    .line 6395
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6396
    throw v3
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 5750
    if-eqz p1, :cond_21

    .line 5754
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5758
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 5760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5761
    nop

    .line 5762
    return-void

    .line 5760
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5761
    throw v2

    .line 5751
    .end local v0    # "ident":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseWakeLockAsync(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 5766
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 5767
    return-void
.end method

.method public setAdaptivePowerSaveEnabled(Z)Z
    .registers 5
    .param p1, "enabled"    # Z

    .line 6081
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 6083
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSaveEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6086
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6088
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverEnabled(Z)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 6090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6088
    return v2

    .line 6090
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6091
    throw v2
.end method

.method public setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;

    .line 6066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 6068
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6073
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 6075
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6073
    return v2

    .line 6075
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6076
    throw v2
.end method

.method public setAttentionLight(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .line 6480
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6485
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetAttentionLightInternal(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 6487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6488
    nop

    .line 6489
    return-void

    .line 6487
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6488
    throw v2
.end method

.method public setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    .registers 16
    .param p1, "timeRemaining"    # Landroid/os/ParcelDuration;
    .param p2, "isPersonalized"    # Z

    .line 6111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6112
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BATTERY_PREDICTION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 6115
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const-string/jumbo v4, "setBatteryDischargePrediction"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6119
    :cond_20
    invoke-virtual {p1}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    .line 6121
    .local v2, "timeRemainingMs":J
    long-to-float v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Given time remaining is not positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 6124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6126
    .local v4, "ident":J
    :try_start_43
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_a9

    .line 6127
    :try_start_4a
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 6131
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_a6

    .line 6134
    :try_start_53
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_a9

    .line 6135
    :try_start_5a
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_69

    .line 6137
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_9b

    .line 6151
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6137
    return-void

    .line 6139
    :cond_69
    const-wide/16 v7, 0x0

    const-wide/32 v9, 0xea60

    :try_start_6e
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    sub-long v11, v0, v11

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 6145
    .local v7, "broadcastDelayMs":J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    add-long v10, v0, v2

    invoke-static {v9, v10, v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;J)V

    .line 6146
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v9, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;Z)V

    .line 6147
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v9, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;J)V

    .line 6148
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_9b

    .line 6149
    :try_start_8d
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lcom/android/server/power/Notifier;->postEnhancedDischargePredictionBroadcast(J)V
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_a9

    .line 6151
    .end local v7    # "broadcastDelayMs":J
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6152
    nop

    .line 6153
    return-void

    .line 6148
    :catchall_9b
    move-exception v7

    :try_start_9c
    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    .end local v0    # "nowElapsed":J
    .end local v2    # "timeRemainingMs":J
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .end local p2    # "isPersonalized":Z
    :try_start_9d
    throw v7
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_a9

    .line 6128
    .restart local v0    # "nowElapsed":J
    .restart local v2    # "timeRemainingMs":J
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .restart local p2    # "isPersonalized":Z
    :cond_9e
    :try_start_9e
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Discharge prediction can\'t be set while the device is charging"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nowElapsed":J
    .end local v2    # "timeRemainingMs":J
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .end local p2    # "isPersonalized":Z
    throw v7

    .line 6131
    .restart local v0    # "nowElapsed":J
    .restart local v2    # "timeRemainingMs":J
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .restart local p2    # "isPersonalized":Z
    :catchall_a6
    move-exception v7

    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a6

    .end local v0    # "nowElapsed":J
    .end local v2    # "timeRemainingMs":J
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .end local p2    # "isPersonalized":Z
    :try_start_a8
    throw v7
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 6151
    .restart local v0    # "nowElapsed":J
    .restart local v2    # "timeRemainingMs":J
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "timeRemaining":Landroid/os/ParcelDuration;
    .restart local p2    # "isPersonalized":Z
    :catchall_a9
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6152
    throw v6
.end method

.method public setDozeAfterScreenOff(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 6493
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6498
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeAfterScreenOffInternal(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 6500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6501
    nop

    .line 6502
    return-void

    .line 6500
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6501
    throw v2
.end method

.method public setDynamicPowerSaveHint(ZI)Z
    .registers 9
    .param p1, "powerSaveHint"    # Z
    .param p2, "disableThreshold"    # I

    .line 6044
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const-string/jumbo v2, "updateDynamicPowerSavings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6048
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6049
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "dynamic_power_savings_disable_threshold"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 6052
    .local v3, "success":Z
    if-eqz v3, :cond_30

    .line 6054
    const-string v4, "dynamic_power_savings_enabled"

    .line 6056
    if-eqz p1, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 6054
    :goto_2b
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_35

    and-int/2addr v3, v4

    .line 6058
    :cond_30
    nop

    .line 6060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6058
    return v3

    .line 6060
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "success":Z
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6061
    throw v2
.end method

.method public setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;

    .line 6029
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 6031
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setFullPowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6034
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6036
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setFullBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 6038
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6036
    return v2

    .line 6038
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6039
    throw v2
.end method

.method public setLowPowerStandbyActiveDuringMaintenance(Z)V
    .registers 5
    .param p1, "activeDuringMaintenance"    # Z

    .line 6280
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 6282
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string/jumbo v2, "setLowPowerStandbyActiveDuringMaintenance"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6287
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6289
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/LowPowerStandbyController;->setActiveDuringMaintenance(Z)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2e

    .line 6291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6292
    nop

    .line 6293
    return-void

    .line 6291
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6292
    throw v2
.end method

.method public setLowPowerStandbyEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 6259
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 6261
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string/jumbo v2, "setLowPowerStandbyEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6266
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6268
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/LowPowerStandbyController;->setEnabled(Z)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2e

    .line 6270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6271
    nop

    .line 6272
    return-void

    .line 6270
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6271
    throw v2
.end method

.method public setPowerBoost(II)V
    .registers 6
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 5664
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5666
    return-void

    .line 5668
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5669
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V

    .line 5670
    return-void
.end method

.method public setPowerMode(IZ)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 5674
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5676
    return-void

    .line 5678
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5679
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    .line 5680
    return-void
.end method

.method public setPowerModeChecked(IZ)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 5684
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5686
    const/4 v0, 0x0

    return v0

    .line 5688
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    move-result v0

    return v0
.end method

.method public setPowerSaveModeEnabled(Z)Z
    .registers 5
    .param p1, "enabled"    # Z

    .line 6004
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 6006
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6009
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6011
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_28

    .line 6013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6011
    return v2

    .line 6013
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6014
    throw v2
.end method

.method public setStayOnSetting(I)V
    .registers 7
    .param p1, "val"    # I

    .line 6457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6459
    .local v0, "uid":I
    if-eqz v0, :cond_1f

    .line 6460
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 6461
    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6460
    invoke-static {v1, v0, v2, v3, v4}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 6463
    return-void

    .line 6467
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6469
    .local v1, "ident":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2d

    .line 6471
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6472
    nop

    .line 6473
    return-void

    .line 6471
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6472
    throw v3
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 6408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shutdown reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 6413
    if-nez p2, :cond_4d

    .line 6414
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerManagerServiceImpl(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerServiceStub;->reassignRebootReason(II)Ljava/lang/String;

    move-result-object p2

    .line 6417
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6419
    .local v0, "ident":J
    :try_start_51
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_5c

    .line 6421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6422
    nop

    .line 6423
    return-void

    .line 6421
    :catchall_5c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6422
    throw v2
.end method

.method public suppressAmbientDisplay(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "suppress"    # Z

    .line 6519
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6523
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6525
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->suppress(Ljava/lang/String;IZ)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    .line 6527
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6528
    nop

    .line 6529
    return-void

    .line 6527
    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6528
    throw v3
.end method

.method public updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V
    .registers 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/os/IWakeLockCallback;

    .line 5814
    if-eqz p1, :cond_25

    .line 5818
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5821
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5823
    .local v1, "ident":J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    .line 5825
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5826
    nop

    .line 5827
    return-void

    .line 5825
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5826
    throw v3

    .line 5815
    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .line 5771
    const/4 v0, 0x0

    .line 5773
    .local v0, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_15

    .line 5774
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    move-object v0, v1

    .line 5777
    array-length v1, p2

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget v3, p2, v2

    .line 5778
    .local v3, "uid":I
    invoke-virtual {v0, v3}, Landroid/os/WorkSource;->add(I)Z

    .line 5777
    .end local v3    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5781
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 5782
    return-void
.end method

.method public updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V
    .registers 3
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .line 5786
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 5787
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .line 5791
    if-eqz p1, :cond_3a

    .line 5795
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5797
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 5800
    :cond_22
    const/4 p2, 0x0

    .line 5803
    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5804
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5806
    .local v1, "ident":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 5808
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5809
    nop

    .line 5810
    return-void

    .line 5808
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5809
    throw v3

    .line 5792
    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public userActivity(IJII)V
    .registers 20
    .param p1, "displayId"    # I
    .param p2, "eventTime"    # J
    .param p4, "event"    # I
    .param p5, "flags"    # I

    .line 5841
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 5842
    .local v2, "now":J
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.USER_ACTIVITY"

    .line 5844
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_70

    .line 5850
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 5851
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    add-long/2addr v5, v7

    cmp-long v0, v2, v5

    if-ltz v0, :cond_6b

    .line 5852
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;J)V

    .line 5853
    const-string v0, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5856
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5853
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    :cond_6b
    monitor-exit v4

    .line 5860
    return-void

    .line 5859
    :catchall_6d
    move-exception v0

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_2e .. :try_end_6f} :catchall_6d

    throw v0

    .line 5863
    :cond_70
    cmp-long v0, p2, v2

    if-gtz v0, :cond_93

    .line 5867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5868
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5870
    .local v12, "ident":J
    :try_start_7c
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move v11, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_8e

    .line 5872
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5873
    nop

    .line 5874
    return-void

    .line 5872
    :catchall_8e
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5873
    throw v0

    .line 5864
    .end local v4    # "uid":I
    .end local v12    # "ident":J
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "event time must not be in the future"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 5879
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_76

    .line 5883
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5887
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 5889
    .local v13, "ident":J
    :try_start_23
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_71

    .line 5890
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$sfgetsQuiescent()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 5891
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    or-int/lit16 v4, v4, 0x1000

    invoke-static {v0, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5892
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5893
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_6e

    .line 5899
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5893
    return-void

    .line 5895
    :cond_4d
    :try_start_4d
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/power/PowerGroup;

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v2

    move-object/from16 v11, p5

    move v12, v2

    invoke-static/range {v4 .. v12}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 5897
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_6e

    .line 5899
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5900
    nop

    .line 5901
    return-void

    .line 5897
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    .end local v2    # "uid":I
    .end local v13    # "ident":J
    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .end local p1    # "eventTime":J
    .end local p3    # "reason":I
    .end local p4    # "details":Ljava/lang/String;
    .end local p5    # "opPackageName":Ljava/lang/String;
    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 5899
    .restart local v2    # "uid":I
    .restart local v13    # "ident":J
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$BinderService;
    .restart local p1    # "eventTime":J
    .restart local p3    # "reason":I
    .restart local p4    # "details":Ljava/lang/String;
    .restart local p5    # "opPackageName":Ljava/lang/String;
    :catchall_71
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5900
    throw v0

    .line 5880
    .end local v2    # "uid":I
    .end local v13    # "ident":J
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "event time must not be in the future"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
