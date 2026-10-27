.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "JobSchedulerShellCommand.java"


# instance fields
.field public mInternal:Lcom/android/server/job/JobSchedulerService;

.field public mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 47
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public final cacheConfigChanges(Ljava/io/PrintWriter;)I
    .registers 7

    .line 641
    const-string v0, "change config caching"

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    goto :goto_21

    .line 646
    :cond_17
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v3, v2

    .line 652
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 654
    :try_start_25
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService;->setCacheConfigChanges(Z)V

    .line 655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config caching "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3b

    const-string v3, "enabled"

    goto :goto_3d

    :catchall_39
    move-exception p0

    goto :goto_4b

    :cond_3b
    const-string v3, "disabled"

    :goto_3d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_39

    .line 657
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    throw p0

    .line 649
    :cond_4f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final cancelJob(Ljava/io/PrintWriter;)I
    .registers 13

    .line 291
    const-string v0, "cancel jobs"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v5, v0

    :goto_8
    move-object v6, v1

    .line 297
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_71

    .line 298
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_a6

    :goto_1b
    move v2, v3

    goto :goto_46

    :sswitch_1d
    const-string v2, "--namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v2, 0x3

    goto :goto_46

    :sswitch_28
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_1b

    :cond_31
    const/4 v2, 0x2

    goto :goto_46

    :sswitch_33
    const-string v4, "-u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_1b

    :sswitch_3c
    const-string v2, "-n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_1b

    :cond_45
    move v2, v0

    :cond_46
    :goto_46
    packed-switch v2, :pswitch_data_b8

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 301
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_9

    .line 306
    :pswitch_6c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_71
    if-gez v5, :cond_79

    .line 316
    const-string p0, "Error: must specify a concrete user ID"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 320
    :cond_79
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_87
    move v8, v3

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 326
    :try_start_8c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_94

    move v7, v2

    move-object v3, p1

    move-object v2, p0

    goto :goto_97

    :cond_94
    move v7, v0

    move-object v2, p0

    move-object v3, p1

    :goto_97
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I

    move-result p0
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_9f

    .line 329
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_9f
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw p0

    nop

    :sswitch_data_a6
    .sparse-switch
        0x5e1 -> :sswitch_3c
        0x5e8 -> :sswitch_33
        0x4f7b216b -> :sswitch_28
        0x67bfa3bb -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_63
        :pswitch_63
        :pswitch_6c
    .end packed-switch
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 3

    .line 115
    const-string v0, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_f

    .line 124
    :cond_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p2, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10

    :goto_f
    return-void

    .line 126
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not permitted to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final disableFlexPolicy(Ljava/io/PrintWriter;)I
    .registers 6

    .line 357
    const-string v0, "disable flex policy"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    :try_start_9
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(ZI)V

    .line 362
    const-string p0, "Set flex policy to 0"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    throw p0
.end method

.method public final doHeartbeat(Ljava/io/PrintWriter;)I
    .registers 3

    .line 634
    const-string v0, "manipulate scheduler heartbeat"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 636
    const-string p0, "Heartbeat command is no longer supported"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final enableFlexPolicy(Ljava/io/PrintWriter;)I
    .registers 8

    .line 370
    const-string v0, "enable flex policy"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 375
    :goto_7
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9e

    .line 376
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v4, "-o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_3c

    const-string v4, "--option"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 379
    :cond_3c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c4

    :goto_4a
    move v3, v5

    goto :goto_75

    :sswitch_4c
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_4a

    :cond_55
    const/4 v3, 0x3

    goto :goto_75

    :sswitch_57
    const-string v3, "charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_4a

    :cond_60
    const/4 v3, 0x2

    goto :goto_75

    :sswitch_62
    const-string v4, "idle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto :goto_4a

    :sswitch_6b
    const-string v3, "battery-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_4a

    :cond_74
    move v3, v0

    :cond_75
    :goto_75
    packed-switch v3, :pswitch_data_d6

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_8d
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    goto/16 :goto_7

    :pswitch_92
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :pswitch_96
    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_7

    :pswitch_9a
    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_7

    .line 405
    :cond_9e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 407
    :try_start_a2
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(ZI)V

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set flex policy to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_bf

    .line 411
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_bf
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    throw p0

    :sswitch_data_c4
    .sparse-switch
        -0x186daa66 -> :sswitch_6b
        0x313fd4 -> :sswitch_62
        0x55996271 -> :sswitch_57
        0x72a369b7 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8d
    .end packed-switch
.end method

.method public final getBatteryCharging(Ljava/io/PrintWriter;)I
    .registers 2

    .line 422
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p0

    .line 423
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getBatteryNotLow(Ljava/io/PrintWriter;)I
    .registers 2

    .line 428
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    .line 429
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getBatterySeq(Ljava/io/PrintWriter;)I
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getBatterySeq()I

    move-result p0

    .line 417
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getConfigValue(Ljava/io/PrintWriter;)I
    .registers 5

    .line 434
    const-string v0, "get device config value"

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 440
    :try_start_f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    .line 443
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    throw p0
.end method

.method public final getEstimatedNetworkBytes(Ljava/io/PrintWriter;I)I
    .registers 14

    .line 448
    const-string v0, "get estimated bytes"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v1

    move v1, v0

    .line 454
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 455
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_a2

    :goto_1a
    move v3, v4

    goto :goto_47

    :sswitch_1c
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v3, 0x3

    goto :goto_47

    :sswitch_27
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v3, 0x2

    goto :goto_47

    :sswitch_32
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v3, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_1a

    :cond_46
    move v3, v0

    :goto_47
    packed-switch v3, :pswitch_data_b4

    .line 467
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: unknown option \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 458
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 463
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_73
    const/4 v0, -0x2

    if-ne v1, v0, :cond_7a

    .line 473
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_7a
    move v5, v1

    .line 476
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 482
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v3, p1

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->getEstimatedNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I

    move-result v3

    move-object v2, p0

    .line 484
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;ILjava/lang/String;I)Z
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_9b

    .line 487
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_9b
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw p0

    nop

    :sswitch_data_a2
    .sparse-switch
        0x5e1 -> :sswitch_3d
        0x5e8 -> :sswitch_32
        0x4f7b216b -> :sswitch_27
        0x67bfa3bb -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public final getJobState(Ljava/io/PrintWriter;)I
    .registers 12

    .line 591
    const-string v0, "get job state"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v1

    move v1, v0

    .line 597
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 598
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_a0

    :goto_1a
    move v3, v4

    goto :goto_47

    :sswitch_1c
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v3, 0x3

    goto :goto_47

    :sswitch_27
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v3, 0x2

    goto :goto_47

    :sswitch_32
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v3, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_1a

    :cond_46
    move v3, v0

    :goto_47
    packed-switch v3, :pswitch_data_b2

    .line 610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 601
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 606
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_73
    const/4 v0, -0x2

    if-ne v1, v0, :cond_7a

    .line 616
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_7a
    move v5, v1

    .line 619
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 625
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    move-object v2, p0

    .line 626
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;ILjava/lang/String;I)Z
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_9a

    .line 629
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_9a
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    throw p0

    :sswitch_data_a0
    .sparse-switch
        0x5e1 -> :sswitch_3d
        0x5e8 -> :sswitch_32
        0x4f7b216b -> :sswitch_27
        0x67bfa3bb -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public final getJobWakelockTag(Ljava/io/PrintWriter;)I
    .registers 12

    .line 548
    const-string v0, "get job wakelock tag"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v1

    move v1, v0

    .line 554
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_a0

    :goto_1a
    move v3, v4

    goto :goto_47

    :sswitch_1c
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v3, 0x3

    goto :goto_47

    :sswitch_27
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v3, 0x2

    goto :goto_47

    :sswitch_32
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v3, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_1a

    :cond_46
    move v3, v0

    :goto_47
    packed-switch v3, :pswitch_data_b2

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 558
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 563
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_73
    const/4 v0, -0x2

    if-ne v1, v0, :cond_7a

    .line 573
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_7a
    move v5, v1

    .line 576
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 577
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 582
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->getJobWakelockTag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    move-object v2, p0

    .line 583
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;ILjava/lang/String;I)Z
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_9a

    .line 586
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_9a
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw p0

    :sswitch_data_a0
    .sparse-switch
        0x5e1 -> :sswitch_3d
        0x5e8 -> :sswitch_32
        0x4f7b216b -> :sswitch_27
        0x67bfa3bb -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public final getStorageNotLow(Ljava/io/PrintWriter;)I
    .registers 2

    .line 498
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getStorageNotLow()Z

    move-result p0

    .line 499
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getStorageSeq(Ljava/io/PrintWriter;)I
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getStorageSeq()I

    move-result p0

    .line 493
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getTransferredNetworkBytes(Ljava/io/PrintWriter;I)I
    .registers 14

    .line 504
    const-string v0, "get transferred bytes"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v1

    move v1, v0

    .line 510
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 511
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_a2

    :goto_1a
    move v3, v4

    goto :goto_47

    :sswitch_1c
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v3, 0x3

    goto :goto_47

    :sswitch_27
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v3, 0x2

    goto :goto_47

    :sswitch_32
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v3, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_1a

    :cond_46
    move v3, v0

    :goto_47
    packed-switch v3, :pswitch_data_b4

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: unknown option \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 514
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 519
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_73
    const/4 v0, -0x2

    if-ne v1, v0, :cond_7a

    .line 529
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_7a
    move v5, v1

    .line 532
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 538
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v3, p1

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->getTransferredNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I

    move-result v3

    move-object v2, p0

    .line 540
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;ILjava/lang/String;I)Z
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_9b

    .line 543
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_9b
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    throw p0

    nop

    :sswitch_data_a2
    .sparse-switch
        0x5e1 -> :sswitch_3d
        0x5e8 -> :sswitch_32
        0x4f7b216b -> :sswitch_27
        0x67bfa3bb -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_64
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public final monitorBattery(Ljava/io/PrintWriter;)I
    .registers 6

    .line 334
    const-string v0, "change battery monitoring"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    goto :goto_1f

    .line 339
    :cond_15
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move v3, v2

    .line 345
    :goto_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 347
    :try_start_23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService;->setMonitorBattery(Z)V

    if-eqz v3, :cond_32

    .line 348
    const-string p0, "Battery monitoring enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    :catchall_30
    move-exception p0

    goto :goto_3b

    .line 349
    :cond_32
    const-string p0, "Battery monitoring disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_30

    .line 351
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0

    .line 342
    :cond_3f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 52
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz p1, :cond_8

    move-object v1, p1

    goto :goto_a

    .line 54
    :cond_8
    :try_start_8
    const-string v1, ""

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_180

    goto/16 :goto_165

    :sswitch_15
    const-string v2, "enable-flex-policy"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->enableFlexPolicy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :catch_22
    move-exception p0

    goto/16 :goto_16a

    .line 54
    :sswitch_25
    const-string/jumbo v2, "reset-flex-policy"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetFlexPolicy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_33
    const-string v2, "disable-flex-policy"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->disableFlexPolicy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_40
    const-string/jumbo v2, "monitor-battery"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_4e
    const-string v2, "get-job-state"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_5b
    const-string v2, "get-transferred-download-bytes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 84
    invoke-virtual {p0, v0, v4}, Lcom/android/server/job/JobSchedulerShellCommand;->getTransferredNetworkBytes(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 54
    :sswitch_68
    const-string v2, "get-battery-not-low"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryNotLow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_75
    const-string v2, "get-job-wakelock-tag"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobWakelockTag(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_82
    const-string v2, "get-config-value"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getConfigValue(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_8f
    const-string/jumbo v2, "reset-schedule-quota"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetScheduleQuota(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_9d
    const-string/jumbo v2, "reset-execution-quota"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetExecutionQuota(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_ab
    const-string v2, "get-battery-seq"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatterySeq(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_b8
    const-string v2, "get-transferred-upload-bytes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 86
    invoke-virtual {p0, v0, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->getTransferredNetworkBytes(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 54
    :sswitch_c5
    const-string v2, "heartbeat"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->doHeartbeat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_d2
    const-string v2, "get-storage-not-low"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageNotLow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_df
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->stop(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_ed
    const-string/jumbo v2, "run"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_fb
    const-string v2, "cache-config-changes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cacheConfigChanges(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_108
    const-string v2, "get-estimated-download-bytes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 76
    invoke-virtual {p0, v0, v4}, Lcom/android/server/job/JobSchedulerShellCommand;->getEstimatedNetworkBytes(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 54
    :sswitch_115
    const-string/jumbo v2, "timeout"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_123
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_130
    const-string v2, "get-battery-charging"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryCharging(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_13d
    const-string v2, "get-estimated-upload-bytes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 78
    invoke-virtual {p0, v0, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->getEstimatedNetworkBytes(Ljava/io/PrintWriter;I)I

    move-result p0

    return p0

    .line 54
    :sswitch_14a
    const-string v2, "get-storage-seq"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageSeq(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 54
    :sswitch_157
    const-string/jumbo v2, "trigger-dock-state"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 106
    :cond_165
    :goto_165
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_169} :catch_22

    return p0

    .line 109
    :goto_16a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :sswitch_data_180
    .sparse-switch
        -0x70e7e454 -> :sswitch_157
        -0x6e03f1ea -> :sswitch_14a
        -0x6605fc19 -> :sswitch_13d
        -0x6495fc38 -> :sswitch_130
        -0x5185d186 -> :sswitch_123
        -0x4e50b29f -> :sswitch_115
        -0x4bf9f4d2 -> :sswitch_108
        -0x3dfecf1d -> :sswitch_fb
        0x1ba8b -> :sswitch_ed
        0x360802 -> :sswitch_df
        0x34cbf91 -> :sswitch_d2
        0xbf970fc -> :sswitch_c5
        0x11c685dd -> :sswitch_b8
        0x29e960a8 -> :sswitch_ab
        0x313f4b05 -> :sswitch_9d
        0x3338c000 -> :sswitch_8f
        0x45ebe03d -> :sswitch_82
        0x606eab43 -> :sswitch_75
        0x684a7923 -> :sswitch_68
        0x6ab9e7a4 -> :sswitch_5b
        0x6ac7b0ca -> :sswitch_4e
        0x6e89549a -> :sswitch_40
        0x7300ee21 -> :sswitch_33
        0x76698608 -> :sswitch_25
        0x76d9e03c -> :sswitch_15
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 9

    .line 800
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 802
    const-string v0, "Job scheduler (jobscheduler) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v0, "  run [-f | --force] [-s | --satisfied] [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const-string v0, "    Trigger immediate execution of a specific scheduled job. For historical"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    const-string v0, "    reasons, some constraints, such as battery, are ignored when this"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string v0, "    command is called. If you don\'t want any constraints to be ignored,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v0, "    include the -s flag."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v0, "    Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    const-string v1, "      -f or --force: run the job even if technical constraints such as"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v1, "         connectivity are not currently met. This is incompatible with -f "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v1, "         and so an error will be reported if both are given."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    const-string v1, "      -n or --namespace: specify the namespace this job sits in; the default"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v2, "         is null (no namespace)."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v3, "      -s or --satisfied: run the job only if all constraints are met."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v3, "         This is incompatible with -f and so an error will be reported"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const-string v3, "         if both are given."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v3, "      -u or --user: specify which user\'s job is to be run; the default is"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    const-string v4, "         the primary or system user"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v5, "  stop [-u | --user USER_ID] [-n | --namespace NAMESPACE] [-s | --stop-reason STOP_REASON] [-i | --internal-stop-reason STOP_REASON] [PACKAGE] [JOB_ID]"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string v5, "    Trigger immediate stop of currently executing jobs using the specified"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v5, "    stop reasons."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const-string v5, "         all users"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const-string v6, "      -s or --stop-reason: specify the stop reason given to the job."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string v6, "         Valid values are those that can be returned from"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const-string v7, "         JobParameters.getStopReason()."

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const-string v7, "          The default value is STOP_REASON_USER."

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    const-string v7, "      -i or --internal-stop-reason: specify the internal stop reason."

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const-string v7, "         JobScheduler will use for internal processing."

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string v6, "         JobParameters.getInternalStopReason()."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    const-string v6, "          The default value is INTERNAL_STOP_REASON_UNDEFINED."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    const-string v6, "  timeout [-u | --user USER_ID] [-n | --namespace NAMESPACE] [PACKAGE] [JOB_ID]"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    const-string v6, "    Trigger immediate timeout of currently executing jobs, as if their"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    const-string v6, "    execution timeout had expired."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const-string v6, "    This is the equivalent of calling `stop -s 3 -i 3`."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    const-string v5, "  cancel [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE [JOB_ID]"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    const-string v5, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    const-string v5, "    by that package will be canceled.  USE WITH CAUTION."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    const-string v5, "  heartbeat [num]"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    const-string v5, "    No longer used."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    const-string v5, "  cache-config-changes [on|off]"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    const-string v5, "    Control caching the set of most recently processed config flags."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    const-string v5, "    Off by default.  Turning on makes get-config-value useful."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    const-string v5, "  monitor-battery [on|off]"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    const-string v5, "    Control monitoring of all battery changes.  Off by default.  Turning"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    const-string v5, "    on makes get-battery-seq useful."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const-string v5, "  enable-flex-policy --option <option>"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    const-string v5, "    Enable flex policy with the specified options. Supported options are"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    const-string v5, "    battery-not-low, charging, connectivity, idle."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    const-string v5, "    Multiple enable options can be specified (e.g."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    const-string v5, "    enable-flex-policy --option battery-not-low --option charging"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const-string v5, "  disable-flex-policy"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const-string v5, "    Turn off flex policy so that it does not affect job execution."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    const-string v5, "  reset-flex-policy"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v5, "    Resets the flex policy to its default state."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    const-string v5, "  get-battery-seq"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    const-string v5, "    Return the last battery update sequence number that was received."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    const-string v5, "  get-battery-charging"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    const-string v5, "    Return whether the battery is currently considered to be charging."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const-string v5, "  get-battery-not-low"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const-string v5, "    Return whether the battery is currently considered to not be low."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v5, "  get-config-value KEY"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    const-string v5, "    Return the most recently processed and cached config value for the KEY."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-string v5, "    Only useful if caching is turned on with cache-config-changes."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    const-string v5, "  get-estimated-download-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    const-string v5, "    Return the most recent estimated download bytes for the job."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v5, "  get-estimated-upload-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v5, "    Return the most recent estimated upload bytes for the job."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    const-string v5, "  get-storage-seq"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    const-string v5, "    Return the last storage update sequence number that was received."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const-string v5, "  get-storage-not-low"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const-string v5, "    Return whether storage is currently considered to not be low."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    const-string v5, "  get-transferred-download-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v5, "    Return the most recent transferred download bytes for the job."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v5, "  get-transferred-upload-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v5, "    Return the most recent transferred upload bytes for the job."

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    const-string v5, "  get-job-state [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    const-string v5, "    Return the current state of a job, may be any combination of:"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    const-string v5, "      pending: currently on the pending list, waiting to be active"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    const-string v5, "      active: job is actively running"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    const-string v5, "      user-stopped: job can\'t run because its user is stopped"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    const-string v5, "      backing-up: job can\'t run because app is currently backing up its data"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    const-string v5, "      no-component: job can\'t run because its component is not available"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    const-string v5, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    const-string v5, "      waiting: if nothing else above is printed, job not ready to run"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const-string v0, "  trigger-dock-state [idle|active]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    const-string v0, "    Trigger wireless charging dock state.  Active by default."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final printError(ILjava/lang/String;ILjava/lang/String;I)Z
    .registers 10

    .line 134
    const-string v0, " / namespace "

    const-string v1, " in package "

    const/4 v2, 0x1

    const-string v3, " / user "

    packed-switch p1, :pswitch_data_66

    const/4 p0, 0x0

    return p0

    .line 136
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 137
    const-string p1, "Package not found: "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(I)V

    return v2

    .line 144
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 145
    const-string p1, "Could not find job "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 147
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_39

    .line 150
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    :cond_39
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(I)V

    return v2

    .line 158
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 159
    const-string p1, "Job "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 161
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_5a

    .line 164
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    :cond_5a
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    const-string p1, " has functional constraints but --force not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_data_66
    .packed-switch -0x3ea
        :pswitch_40
        :pswitch_1f
        :pswitch_c
    .end packed-switch
.end method

.method public final resetExecutionQuota(Ljava/io/PrintWriter;)I
    .registers 6

    .line 676
    const-string/jumbo v0, "reset execution quota"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 681
    :goto_8
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 682
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v1, "-u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 685
    :cond_3c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_45
    const/4 p1, -0x2

    if-ne v1, p1, :cond_4c

    .line 695
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 698
    :cond_4c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 702
    :try_start_54
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->resetExecutionQuota(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5d

    .line 704
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_5d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    throw p0
.end method

.method public final resetFlexPolicy(Ljava/io/PrintWriter;)I
    .registers 5

    .line 663
    const-string/jumbo v0, "reset flex policy"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 667
    :try_start_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(ZI)V

    .line 668
    const-string p0, "Reset flex policy to its default state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    throw p0
.end method

.method public final resetScheduleQuota(Ljava/io/PrintWriter;)I
    .registers 4

    .line 710
    const-string/jumbo p1, "reset schedule quota"

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    :try_start_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->resetScheduleQuota()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 717
    throw p0
.end method

.method public final runJob(Ljava/io/PrintWriter;)I
    .registers 13

    .line 178
    const-string v0, "force scheduled jobs"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move v8, v7

    move-object v5, v1

    move v1, v8

    .line 186
    :goto_b
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_ab

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_fe

    :goto_1d
    move v4, v3

    goto/16 :goto_77

    :sswitch_20
    const-string v4, "--namespace"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v4, 0x7

    goto :goto_77

    :sswitch_2b
    const-string v4, "--user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_1d

    :cond_34
    const/4 v4, 0x6

    goto :goto_77

    :sswitch_36
    const-string v4, "-u"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_1d

    :cond_3f
    const/4 v4, 0x5

    goto :goto_77

    :sswitch_41
    const-string v4, "-s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_1d

    :cond_4a
    const/4 v4, 0x4

    goto :goto_77

    :sswitch_4c
    const-string v4, "-n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_1d

    :cond_55
    const/4 v4, 0x3

    goto :goto_77

    :sswitch_57
    const-string v4, "-f"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_1d

    :cond_60
    const/4 v4, 0x2

    goto :goto_77

    :sswitch_62
    const-string v4, "--satisfied"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    goto :goto_1d

    :cond_6b
    move v4, v6

    goto :goto_77

    :sswitch_6d
    const-string v4, "--force"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    goto :goto_1d

    :cond_76
    move v4, v0

    :goto_77
    packed-switch v4, :pswitch_data_120

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 200
    :pswitch_94
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_b

    .line 205
    :pswitch_9e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_b

    :pswitch_a5
    move v7, v6

    goto/16 :goto_b

    :pswitch_a8
    move v8, v6

    goto/16 :goto_b

    :cond_ab
    if-eqz v8, :cond_b5

    if-eqz v7, :cond_b5

    .line 215
    const-string p0, "Cannot specify both --force and --satisfied"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_b5
    const/4 v0, -0x2

    if-ne v1, v0, :cond_bc

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_bc
    move v4, v1

    .line 223
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 228
    :try_start_cd
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;ILjava/lang/String;IZZ)I

    move-result v0

    move-object v2, p0

    move v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move v3, v0

    .line 230
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_dd
    .catchall {:try_start_cd .. :try_end_dd} :catchall_f0

    if-eqz p0, :cond_e3

    .line 243
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 235
    :cond_e3
    :try_start_e3
    const-string p0, "Running job"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_f3

    .line 237
    const-string p0, " [FORCED]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f3

    :catchall_f0
    move-exception v0

    move-object p0, v0

    goto :goto_fa

    .line 239
    :cond_f3
    :goto_f3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_f6
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_f0

    .line 243
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_fa
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw p0

    :sswitch_data_fe
    .sparse-switch
        -0x60ebf6b5 -> :sswitch_6d
        -0x39cf9d6e -> :sswitch_62
        0x5d9 -> :sswitch_57
        0x5e1 -> :sswitch_4c
        0x5e6 -> :sswitch_41
        0x5e8 -> :sswitch_36
        0x4f7b216b -> :sswitch_2b
        0x67bfa3bb -> :sswitch_20
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a5
        :pswitch_a8
        :pswitch_9e
        :pswitch_a5
        :pswitch_94
        :pswitch_94
        :pswitch_9e
    .end packed-switch
.end method

.method public final stop(Ljava/io/PrintWriter;)I
    .registers 16

    .line 722
    const-string/jumbo v0, "stop jobs"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xd

    move v11, v0

    move-object v7, v1

    move v10, v2

    move v1, v11

    .line 730
    :goto_e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_ba

    .line 731
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ee

    :goto_20
    move v3, v0

    goto :goto_77

    :sswitch_22
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v3, 0x7

    goto :goto_77

    :sswitch_2d
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_20

    :cond_36
    const/4 v3, 0x6

    goto :goto_77

    :sswitch_38
    const-string v3, "--internal-stop-reason"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_20

    :cond_41
    const/4 v3, 0x5

    goto :goto_77

    :sswitch_43
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_20

    :cond_4c
    const/4 v3, 0x4

    goto :goto_77

    :sswitch_4e
    const-string v3, "-s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_20

    :cond_57
    const/4 v3, 0x3

    goto :goto_77

    :sswitch_59
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto :goto_20

    :cond_62
    const/4 v3, 0x2

    goto :goto_77

    :sswitch_64
    const-string v4, "-i"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    goto :goto_20

    :sswitch_6d
    const-string v3, "--stop-reason"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto :goto_20

    :cond_76
    move v3, v4

    :cond_77
    :goto_77
    packed-switch v3, :pswitch_data_110

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 734
    :pswitch_94
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_e

    .line 739
    :pswitch_9e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_e

    .line 749
    :pswitch_a5
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_e

    .line 744
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    goto/16 :goto_e

    :cond_ba
    const/4 v2, -0x2

    if-ne v1, v2, :cond_c1

    .line 759
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_c1
    move v6, v1

    .line 762
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 764
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_d0
    move v9, v0

    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 768
    :try_start_d5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_dd

    move v8, v3

    move-object v4, p1

    move-object v3, p0

    goto :goto_e0

    :cond_dd
    move v8, v4

    move-object v3, p0

    move-object v4, p1

    :goto_e0
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/job/JobSchedulerService;->executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)I

    move-result p0
    :try_end_e4
    .catchall {:try_start_d5 .. :try_end_e4} :catchall_e8

    .line 771
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e8
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw p0

    :sswitch_data_ee
    .sparse-switch
        -0x53cc7b31 -> :sswitch_6d
        0x5dc -> :sswitch_64
        0x5e1 -> :sswitch_59
        0x5e6 -> :sswitch_4e
        0x5e8 -> :sswitch_43
        0x24d2e8ff -> :sswitch_38
        0x4f7b216b -> :sswitch_2d
        0x67bfa3bb -> :sswitch_22
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a5
        :pswitch_9e
        :pswitch_af
        :pswitch_94
        :pswitch_a5
        :pswitch_94
        :pswitch_9e
    .end packed-switch
.end method

.method public final timeout(Ljava/io/PrintWriter;)I
    .registers 15

    .line 248
    const-string v0, "force timeout jobs"

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v6, v1

    move v1, v0

    .line 254
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_72

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_a8

    :goto_1b
    move v3, v0

    goto :goto_46

    :sswitch_1d
    const-string v3, "--namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v3, 0x3

    goto :goto_46

    :sswitch_28
    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_1b

    :cond_31
    const/4 v3, 0x2

    goto :goto_46

    :sswitch_33
    const-string v4, "-u"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_1b

    :sswitch_3c
    const-string v3, "-n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_1b

    :cond_45
    move v3, v4

    :cond_46
    :goto_46
    packed-switch v3, :pswitch_data_ba

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 258
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 263
    :pswitch_6c
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_72
    const/4 v2, -0x2

    if-ne v1, v2, :cond_79

    .line 273
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_79
    move v5, v1

    move v1, v4

    .line 276
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_89
    move v8, v0

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 282
    :try_start_8e
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v2, :cond_94

    move v7, v3

    goto :goto_95

    :cond_94
    move v7, v1

    :goto_95
    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/job/JobSchedulerService;->executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)I

    move-result p0
    :try_end_9d
    .catchall {:try_start_8e .. :try_end_9d} :catchall_a1

    .line 286
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_a1
    move-exception v0

    move-object p0, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    throw p0

    nop

    :sswitch_data_a8
    .sparse-switch
        0x5e1 -> :sswitch_3c
        0x5e8 -> :sswitch_33
        0x4f7b216b -> :sswitch_28
        0x67bfa3bb -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_63
        :pswitch_63
        :pswitch_6c
    .end packed-switch
.end method

.method public final triggerDockState(Ljava/io/PrintWriter;)I
    .registers 7

    .line 776
    const-string/jumbo p1, "trigger wireless charging dock state"

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 780
    const-string v0, "idle"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 782
    :cond_15
    const-string v0, "active"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v2, v1

    .line 789
    :goto_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 791
    :try_start_22
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService;->triggerDockState(Z)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 793
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2b
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    throw p0

    .line 785
    :cond_30
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
