.class final Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/am/OomAdjuster$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 19393
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOomAdjustChanged(IILcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 19397
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    check-cast p3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onProcStateUpdated(Lcom/android/server/am/psc/ProcessRecordInternal;JZ)V
    .registers 13

    .line 19507
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 19509
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 19510
    :try_start_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 19511
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    move-wide v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 19513
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_1f

    throw p0
.end method

.method public onProcessFreezabilityChanged(Lcom/android/server/am/psc/ProcessRecordInternal;ZIZIZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 19403
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_295

    .line 19410
    :cond_16
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v5, v5, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_26

    move v4, v6

    goto :goto_27

    :cond_26
    move v4, v7

    :goto_27
    if-lt v3, v5, :cond_2b

    move v5, v6

    goto :goto_2c

    :cond_2b
    move v5, v7

    :goto_2c
    xor-int/2addr v4, v5

    if-nez v4, :cond_36

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_34

    goto :goto_36

    :cond_34
    move v4, v7

    goto :goto_37

    :cond_36
    :goto_36
    move v4, v6

    .line 19413
    :goto_37
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v5

    const/16 v8, 0x80

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_42

    move v5, v6

    goto :goto_43

    :cond_42
    move v5, v7

    .line 19416
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v9

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_4c

    move v8, v6

    goto :goto_4d

    :cond_4c
    move v8, v7

    :goto_4d
    if-eq v5, v8, :cond_51

    move v8, v6

    goto :goto_52

    :cond_51
    move v8, v7

    .line 19420
    :goto_52
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v9

    const/16 v10, 0x100

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_5d

    move v9, v6

    goto :goto_5e

    :cond_5d
    move v9, v7

    .line 19423
    :goto_5e
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetCapability()I

    move-result v11

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_67

    move v10, v6

    goto :goto_68

    :cond_67
    move v10, v7

    :goto_68
    if-eq v9, v10, :cond_6b

    goto :goto_6c

    :cond_6b
    move v6, v7

    .line 19427
    :goto_6c
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCpuTimeReasons()I

    move-result v10

    .line 19428
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurImplicitCpuTimeReasons()I

    move-result v11

    .line 19429
    const-string v12, " oldOomAdj: "

    const-string v13, " curAdj: "

    if-nez v4, :cond_80

    if-nez p6, :cond_80

    if-nez v8, :cond_80

    if-eqz v6, :cond_1b2

    :cond_80
    const-wide/16 v14, 0x40

    .line 19431
    invoke-static {v14, v15}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 19432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19434
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isFrozen()Z

    move-result v6

    const-string v8, "-"

    if-eqz v6, :cond_98

    const-string v6, "F"

    goto :goto_99

    :cond_98
    move-object v6, v8

    :goto_99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19435
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFreeze()Z

    move-result v6

    if-eqz v6, :cond_a5

    const-string v6, "P"

    goto :goto_a6

    :cond_a5
    move-object v6, v8

    :goto_a6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19437
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v6

    if-eqz v6, :cond_b5

    const-string v6, "N"

    goto :goto_b6

    :cond_b5
    move-object v6, v8

    :goto_b6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_be

    .line 19438
    const-string v6, "T"

    goto :goto_bf

    :cond_be
    move-object v6, v8

    :goto_bf
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_c7

    .line 19439
    const-string v6, "X"

    goto :goto_c8

    :cond_c7
    move-object v6, v8

    :goto_c8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_d0

    .line 19440
    const-string v6, "I"

    goto :goto_d1

    :cond_d0
    move-object v6, v8

    :goto_d1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_d9

    .line 19441
    const-string v6, "Z"

    goto :goto_da

    :cond_d9
    move-object v6, v8

    :goto_da
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19442
    const-string/jumbo v6, "t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19443
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19444
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19445
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19447
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19432
    const-string v6, "FreezeLite"

    invoke-static {v14, v15, v6, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 19450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAppFreezeStateLSP "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19453
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isFreezeExempt: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFrozen: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19455
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isFrozen()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldNotFreeze: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19456
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldNotFreezeReason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19457
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19458
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " immediate: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " cpuCapability: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " implicitCpuCapability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " cpuTimeReasons: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19463
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " implicitCpuTimeReasons: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19465
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19450
    const-string v5, "Freezer"

    invoke-static {v14, v15, v5, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1b2
    if-eqz p2, :cond_288

    .line 19472
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v4

    const/16 v5, 0x384

    if-ge v4, v5, :cond_25c

    .line 19473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected non-cached process may get frozen soon:  name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19475
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curRawAdj: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19477
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " maxAdj: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19478
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adjType: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19479
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjTarget: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19480
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adjSource: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19481
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adjSourcePrcState: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19482
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSourceProcState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceB: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19483
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isServiceB()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " curProcState: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19484
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curRawProcState: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19485
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawProcState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curSchedGroup: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19486
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19473
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25c
    if-eqz v2, :cond_270

    .line 19489
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_270

    .line 19491
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncAtEarliestLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 19492
    :cond_270
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_295

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFreeze()Z

    move-result v2

    if-nez v2, :cond_295

    .line 19493
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 19497
    :cond_288
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_296

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFreeze()Z

    move-result v2

    if-eqz v2, :cond_295

    goto :goto_296

    :cond_295
    :goto_295
    return-void

    .line 19498
    :cond_296
    :goto_296
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$OomAdjusterCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCachedAppOptimizer(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 19499
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result v2

    .line 19498
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method
