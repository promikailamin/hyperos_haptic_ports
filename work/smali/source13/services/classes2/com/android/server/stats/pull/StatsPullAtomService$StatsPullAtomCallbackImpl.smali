.class Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 468
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 472
    :cond_1f
    packed-switch p1, :pswitch_data_524

    .line 738
    :pswitch_22
    :try_start_22
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_509

    .line 736
    :pswitch_26
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    return v2

    .line 734
    :pswitch_30
    :try_start_30
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)I

    move-result v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 734
    return v2

    .line 732
    :pswitch_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 732
    return v2

    .line 730
    :pswitch_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 730
    return v2

    .line 728
    :pswitch_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(ILjava/util/List;)I

    move-result v2
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 728
    return v2

    .line 566
    :pswitch_58
    :try_start_58
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    return v2

    .line 713
    :pswitch_62
    :try_start_62
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_507

    .line 714
    :try_start_69
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_74

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 714
    return v3

    .line 715
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_76
    throw v3

    .line 562
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_77
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result v2
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    return v2

    .line 726
    :pswitch_81
    :try_start_81
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result v2
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 726
    return v2

    .line 669
    :pswitch_8b
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_507

    .line 670
    :try_start_92
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_9d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 670
    return v3

    .line 671
    :catchall_9d
    move-exception v3

    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9f
    throw v3

    .line 510
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_a0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    move-result v2
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 510
    return v2

    .line 502
    :pswitch_aa
    :try_start_aa
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_507

    .line 503
    :try_start_b1
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_bc

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 503
    return v3

    .line 504
    :catchall_bc
    move-exception v3

    :try_start_bd
    monitor-exit v2
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_be
    throw v3

    .line 492
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_bf
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_507

    .line 493
    :try_start_c6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d1

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 493
    return v3

    .line 494
    :catchall_d1
    move-exception v3

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_d3
    throw v3

    .line 564
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_d4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result v2
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    return v2

    .line 709
    :pswitch_de
    :try_start_de
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_507

    .line 710
    :try_start_e5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_f0

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    return v3

    .line 711
    :catchall_f0
    move-exception v3

    :try_start_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_f2
    throw v3

    .line 705
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_f3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_507

    .line 706
    :try_start_fa
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_101
    .catchall {:try_start_fa .. :try_end_101} :catchall_105

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 706
    return v3

    .line 707
    :catchall_105
    move-exception v3

    :try_start_106
    monitor-exit v2
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_107
    throw v3

    .line 554
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_108
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_10f
    .catchall {:try_start_107 .. :try_end_10f} :catchall_507

    .line 555
    :try_start_10f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_116
    .catchall {:try_start_10f .. :try_end_116} :catchall_11a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 555
    return v3

    .line 556
    :catchall_11a
    move-exception v3

    :try_start_11b
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_11c
    throw v3

    .line 689
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_11d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_124
    .catchall {:try_start_11c .. :try_end_124} :catchall_507

    .line 690
    :try_start_124
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_12b
    .catchall {:try_start_124 .. :try_end_12b} :catchall_12f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 690
    return v3

    .line 691
    :catchall_12f
    move-exception v3

    :try_start_130
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_131
    throw v3

    .line 693
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_132
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_139
    .catchall {:try_start_131 .. :try_end_139} :catchall_507

    .line 694
    :try_start_139
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_144

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 694
    return v3

    .line 695
    :catchall_144
    move-exception v3

    :try_start_145
    monitor-exit v2
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_146
    throw v3

    .line 548
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_147
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)I

    move-result v2
    :try_end_14d
    .catchall {:try_start_146 .. :try_end_14d} :catchall_507

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 548
    return v2

    .line 558
    :pswitch_151
    :try_start_151
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_507

    .line 559
    :try_start_158
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_163

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 559
    return v3

    .line 560
    :catchall_163
    move-exception v3

    :try_start_164
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_165
    throw v3

    .line 685
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_166
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_16d
    .catchall {:try_start_165 .. :try_end_16d} :catchall_507

    .line 686
    :try_start_16d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_174
    .catchall {:try_start_16d .. :try_end_174} :catchall_178

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 686
    return v3

    .line 687
    :catchall_178
    move-exception v3

    :try_start_179
    monitor-exit v2
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_17a
    throw v3

    .line 572
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_17b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_182
    .catchall {:try_start_17a .. :try_end_182} :catchall_507

    .line 573
    :try_start_182
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_18d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 573
    return v3

    .line 574
    :catchall_18d
    move-exception v3

    :try_start_18e
    monitor-exit v2
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_18f
    throw v3

    .line 681
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_190
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_197
    .catchall {:try_start_18f .. :try_end_197} :catchall_507

    .line 682
    :try_start_197
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_19e
    .catchall {:try_start_197 .. :try_end_19e} :catchall_1a2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 682
    return v3

    .line 683
    :catchall_1a2
    move-exception v3

    :try_start_1a3
    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1a4
    throw v3

    .line 677
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1a5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1ac
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_507

    .line 678
    :try_start_1ac
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1b3
    .catchall {:try_start_1ac .. :try_end_1b3} :catchall_1b7

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    return v3

    .line 679
    :catchall_1b7
    move-exception v3

    :try_start_1b8
    monitor-exit v2
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1b9
    throw v3

    .line 550
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1ba
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_507

    .line 551
    :try_start_1c1
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1c8
    .catchall {:try_start_1c1 .. :try_end_1c8} :catchall_1cc

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 551
    return v3

    .line 552
    :catchall_1cc
    move-exception v3

    :try_start_1cd
    monitor-exit v2
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1ce
    throw v3

    .line 673
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1cf
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d6
    .catchall {:try_start_1ce .. :try_end_1d6} :catchall_507

    .line 674
    :try_start_1d6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1dd
    .catchall {:try_start_1d6 .. :try_end_1dd} :catchall_1e1

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 674
    return v3

    .line 675
    :catchall_1e1
    move-exception v3

    :try_start_1e2
    monitor-exit v2
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1e3
    throw v3

    .line 665
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1e4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1eb
    .catchall {:try_start_1e3 .. :try_end_1eb} :catchall_507

    .line 666
    :try_start_1eb
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1f2
    .catchall {:try_start_1eb .. :try_end_1f2} :catchall_1f6

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    return v3

    .line 667
    :catchall_1f6
    move-exception v3

    :try_start_1f7
    monitor-exit v2
    :try_end_1f8
    .catchall {:try_start_1f7 .. :try_end_1f8} :catchall_1f6

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1f8
    throw v3

    .line 661
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_1f9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_200
    .catchall {:try_start_1f8 .. :try_end_200} :catchall_507

    .line 662
    :try_start_200
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_207
    .catchall {:try_start_200 .. :try_end_207} :catchall_20b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 662
    return v3

    .line 663
    :catchall_20b
    move-exception v3

    :try_start_20c
    monitor-exit v2
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_20b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_20d
    throw v3

    .line 655
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_20e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_215
    .catchall {:try_start_20d .. :try_end_215} :catchall_507

    .line 656
    :try_start_215
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_21c
    .catchall {:try_start_215 .. :try_end_21c} :catchall_220

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 656
    return v3

    .line 657
    :catchall_220
    move-exception v3

    :try_start_221
    monitor-exit v2
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_220

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_222
    throw v3

    .line 609
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_223
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_22a
    .catchall {:try_start_222 .. :try_end_22a} :catchall_507

    .line 610
    :try_start_22a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x4

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_232
    .catchall {:try_start_22a .. :try_end_232} :catchall_236

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 610
    return v3

    .line 612
    :catchall_236
    move-exception v3

    :try_start_237
    monitor-exit v2
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_236

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_238
    throw v3

    .line 647
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_239
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_240
    .catchall {:try_start_238 .. :try_end_240} :catchall_507

    .line 648
    :try_start_240
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_247
    .catchall {:try_start_240 .. :try_end_247} :catchall_24b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 648
    return v3

    .line 649
    :catchall_24b
    move-exception v3

    :try_start_24c
    monitor-exit v2
    :try_end_24d
    .catchall {:try_start_24c .. :try_end_24d} :catchall_24b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_24d
    throw v3

    .line 643
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_24e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_255
    .catchall {:try_start_24d .. :try_end_255} :catchall_507

    .line 644
    :try_start_255
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_25c
    .catchall {:try_start_255 .. :try_end_25c} :catchall_260

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    return v3

    .line 645
    :catchall_260
    move-exception v3

    :try_start_261
    monitor-exit v2
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_262
    throw v3

    .line 651
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_263
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26a
    .catchall {:try_start_262 .. :try_end_26a} :catchall_507

    .line 652
    :try_start_26a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_271
    .catchall {:try_start_26a .. :try_end_271} :catchall_275

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 652
    return v3

    .line 653
    :catchall_275
    move-exception v3

    :try_start_276
    monitor-exit v2
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_277
    throw v3

    .line 544
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_278
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_27f
    .catchall {:try_start_277 .. :try_end_27f} :catchall_507

    .line 545
    :try_start_27f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_286
    .catchall {:try_start_27f .. :try_end_286} :catchall_28a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 545
    return v3

    .line 546
    :catchall_28a
    move-exception v3

    :try_start_28b
    monitor-exit v2
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_28a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_28c
    throw v3

    .line 639
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_28d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_294
    .catchall {:try_start_28c .. :try_end_294} :catchall_507

    .line 640
    :try_start_294
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_29b
    .catchall {:try_start_294 .. :try_end_29b} :catchall_29f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    return v3

    .line 641
    :catchall_29f
    move-exception v3

    :try_start_2a0
    monitor-exit v2
    :try_end_2a1
    .catchall {:try_start_2a0 .. :try_end_2a1} :catchall_29f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2a1
    throw v3

    .line 635
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2a2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a9
    .catchall {:try_start_2a1 .. :try_end_2a9} :catchall_507

    .line 636
    :try_start_2a9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2b0
    .catchall {:try_start_2a9 .. :try_end_2b0} :catchall_2b4

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 636
    return v3

    .line 637
    :catchall_2b4
    move-exception v3

    :try_start_2b5
    monitor-exit v2
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2b6
    throw v3

    .line 631
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2b7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2be
    .catchall {:try_start_2b6 .. :try_end_2be} :catchall_507

    .line 632
    :try_start_2be
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2c5
    .catchall {:try_start_2be .. :try_end_2c5} :catchall_2c9

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    return v3

    .line 633
    :catchall_2c9
    move-exception v3

    :try_start_2ca
    monitor-exit v2
    :try_end_2cb
    .catchall {:try_start_2ca .. :try_end_2cb} :catchall_2c9

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2cb
    throw v3

    .line 618
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2cc
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d3
    .catchall {:try_start_2cb .. :try_end_2d3} :catchall_507

    .line 619
    :try_start_2d3
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2db
    .catchall {:try_start_2d3 .. :try_end_2db} :catchall_2df

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    return v3

    .line 621
    :catchall_2df
    move-exception v3

    :try_start_2e0
    monitor-exit v2
    :try_end_2e1
    .catchall {:try_start_2e0 .. :try_end_2e1} :catchall_2df

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2e1
    throw v3

    .line 627
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2e2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e9
    .catchall {:try_start_2e1 .. :try_end_2e9} :catchall_507

    .line 628
    :try_start_2e9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2f0
    .catchall {:try_start_2e9 .. :try_end_2f0} :catchall_2f4

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 628
    return v3

    .line 629
    :catchall_2f4
    move-exception v3

    :try_start_2f5
    monitor-exit v2
    :try_end_2f6
    .catchall {:try_start_2f5 .. :try_end_2f6} :catchall_2f4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2f6
    throw v3

    .line 623
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_2f7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2fe
    .catchall {:try_start_2f6 .. :try_end_2fe} :catchall_507

    .line 624
    :try_start_2fe
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_305
    .catchall {:try_start_2fe .. :try_end_305} :catchall_309

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 624
    return v3

    .line 625
    :catchall_309
    move-exception v3

    :try_start_30a
    monitor-exit v2
    :try_end_30b
    .catchall {:try_start_30a .. :try_end_30b} :catchall_309

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_30b
    throw v3

    .line 604
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_30c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_313
    .catchall {:try_start_30b .. :try_end_313} :catchall_507

    .line 605
    :try_start_313
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_31b
    .catchall {:try_start_313 .. :try_end_31b} :catchall_31f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 605
    return v3

    .line 607
    :catchall_31f
    move-exception v3

    :try_start_320
    monitor-exit v2
    :try_end_321
    .catchall {:try_start_320 .. :try_end_321} :catchall_31f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_321
    throw v3

    .line 614
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_322
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_329
    .catchall {:try_start_321 .. :try_end_329} :catchall_507

    .line 615
    :try_start_329
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/16 v4, 0x1f

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_332
    .catchall {:try_start_329 .. :try_end_332} :catchall_336

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 615
    return v3

    .line 616
    :catchall_336
    move-exception v3

    :try_start_337
    monitor-exit v2
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_336

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_338
    throw v3

    .line 600
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_339
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_340
    .catchall {:try_start_338 .. :try_end_340} :catchall_507

    .line 601
    :try_start_340
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_347
    .catchall {:try_start_340 .. :try_end_347} :catchall_34b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    return v3

    .line 602
    :catchall_34b
    move-exception v3

    :try_start_34c
    monitor-exit v2
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_34b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_34d
    throw v3

    .line 596
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_34e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_355
    .catchall {:try_start_34d .. :try_end_355} :catchall_507

    .line 597
    :try_start_355
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_35c
    .catchall {:try_start_355 .. :try_end_35c} :catchall_360

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 597
    return v3

    .line 598
    :catchall_360
    move-exception v3

    :try_start_361
    monitor-exit v2
    :try_end_362
    .catchall {:try_start_361 .. :try_end_362} :catchall_360

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_362
    throw v3

    .line 592
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_363
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_36a
    .catchall {:try_start_362 .. :try_end_36a} :catchall_507

    .line 593
    :try_start_36a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_371
    .catchall {:try_start_36a .. :try_end_371} :catchall_375

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 593
    return v3

    .line 594
    :catchall_375
    move-exception v3

    :try_start_376
    monitor-exit v2
    :try_end_377
    .catchall {:try_start_376 .. :try_end_377} :catchall_375

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_377
    throw v3

    .line 588
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_378
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_37f
    .catchall {:try_start_377 .. :try_end_37f} :catchall_507

    .line 589
    :try_start_37f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_386
    .catchall {:try_start_37f .. :try_end_386} :catchall_38a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    return v3

    .line 590
    :catchall_38a
    move-exception v3

    :try_start_38b
    monitor-exit v2
    :try_end_38c
    .catchall {:try_start_38b .. :try_end_38c} :catchall_38a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_38c
    throw v3

    .line 584
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_38d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_394
    .catchall {:try_start_38c .. :try_end_394} :catchall_507

    .line 585
    :try_start_394
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_39b
    .catchall {:try_start_394 .. :try_end_39b} :catchall_39f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 585
    return v3

    .line 586
    :catchall_39f
    move-exception v3

    :try_start_3a0
    monitor-exit v2
    :try_end_3a1
    .catchall {:try_start_3a0 .. :try_end_3a1} :catchall_39f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3a1
    throw v3

    .line 580
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3a2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a9
    .catchall {:try_start_3a1 .. :try_end_3a9} :catchall_507

    .line 581
    :try_start_3a9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3b0
    .catchall {:try_start_3a9 .. :try_end_3b0} :catchall_3b4

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    return v3

    .line 582
    :catchall_3b4
    move-exception v3

    :try_start_3b5
    monitor-exit v2
    :try_end_3b6
    .catchall {:try_start_3b5 .. :try_end_3b6} :catchall_3b4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3b6
    throw v3

    .line 576
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3b7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3be
    .catchall {:try_start_3b6 .. :try_end_3be} :catchall_507

    .line 577
    :try_start_3be
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3c5
    .catchall {:try_start_3be .. :try_end_3c5} :catchall_3c9

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 577
    return v3

    .line 578
    :catchall_3c9
    move-exception v3

    :try_start_3ca
    monitor-exit v2
    :try_end_3cb
    .catchall {:try_start_3ca .. :try_end_3cb} :catchall_3c9

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3cb
    throw v3

    .line 568
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3cc
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3d3
    .catchall {:try_start_3cb .. :try_end_3d3} :catchall_507

    .line 569
    :try_start_3d3
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3da
    .catchall {:try_start_3d3 .. :try_end_3da} :catchall_3de

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 569
    return v3

    .line 570
    :catchall_3de
    move-exception v3

    :try_start_3df
    monitor-exit v2
    :try_end_3e0
    .catchall {:try_start_3df .. :try_end_3e0} :catchall_3de

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3e0
    throw v3

    .line 701
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3e1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3e8
    .catchall {:try_start_3e0 .. :try_end_3e8} :catchall_507

    .line 702
    :try_start_3e8
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3ef
    .catchall {:try_start_3e8 .. :try_end_3ef} :catchall_3f3

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 702
    return v3

    .line 703
    :catchall_3f3
    move-exception v3

    :try_start_3f4
    monitor-exit v2
    :try_end_3f5
    .catchall {:try_start_3f4 .. :try_end_3f5} :catchall_3f3

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3f5
    throw v3

    .line 516
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_3f6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3fd
    .catchall {:try_start_3f5 .. :try_end_3fd} :catchall_507

    .line 517
    :try_start_3fd
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_404
    .catchall {:try_start_3fd .. :try_end_404} :catchall_408

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    return v3

    .line 518
    :catchall_408
    move-exception v3

    :try_start_409
    monitor-exit v2
    :try_end_40a
    .catchall {:try_start_409 .. :try_end_40a} :catchall_408

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_40a
    throw v3

    .line 512
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_40b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_412
    .catchall {:try_start_40a .. :try_end_412} :catchall_507

    .line 513
    :try_start_412
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_419
    .catchall {:try_start_412 .. :try_end_419} :catchall_41d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 513
    return v3

    .line 514
    :catchall_41d
    move-exception v3

    :try_start_41e
    monitor-exit v2
    :try_end_41f
    .catchall {:try_start_41e .. :try_end_41f} :catchall_41d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_41f
    throw v3

    .line 536
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_420
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_427
    .catchall {:try_start_41f .. :try_end_427} :catchall_507

    .line 537
    :try_start_427
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_42e
    .catchall {:try_start_427 .. :try_end_42e} :catchall_432

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    return v3

    .line 538
    :catchall_432
    move-exception v3

    :try_start_433
    monitor-exit v2
    :try_end_434
    .catchall {:try_start_433 .. :try_end_434} :catchall_432

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_434
    throw v3

    .line 532
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_435
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_43c
    .catchall {:try_start_434 .. :try_end_43c} :catchall_507

    .line 533
    :try_start_43c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_443
    .catchall {:try_start_43c .. :try_end_443} :catchall_447

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    return v3

    .line 534
    :catchall_447
    move-exception v3

    :try_start_448
    monitor-exit v2
    :try_end_449
    .catchall {:try_start_448 .. :try_end_449} :catchall_447

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_449
    throw v3

    .line 540
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_44a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_451
    .catchall {:try_start_449 .. :try_end_451} :catchall_507

    .line 541
    :try_start_451
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_458
    .catchall {:try_start_451 .. :try_end_458} :catchall_45c

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    return v3

    .line 542
    :catchall_45c
    move-exception v3

    :try_start_45d
    monitor-exit v2
    :try_end_45e
    .catchall {:try_start_45d .. :try_end_45e} :catchall_45c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_45e
    throw v3

    .line 524
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_45f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_466
    .catchall {:try_start_45e .. :try_end_466} :catchall_507

    .line 525
    :try_start_466
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_46d
    .catchall {:try_start_466 .. :try_end_46d} :catchall_471

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 525
    return v3

    .line 526
    :catchall_471
    move-exception v3

    :try_start_472
    monitor-exit v2
    :try_end_473
    .catchall {:try_start_472 .. :try_end_473} :catchall_471

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_473
    throw v3

    .line 520
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_474
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_47b
    .catchall {:try_start_473 .. :try_end_47b} :catchall_507

    .line 521
    :try_start_47b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_482
    .catchall {:try_start_47b .. :try_end_482} :catchall_486

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    return v3

    .line 522
    :catchall_486
    move-exception v3

    :try_start_487
    monitor-exit v2
    :try_end_488
    .catchall {:try_start_487 .. :try_end_488} :catchall_486

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_488
    throw v3

    .line 506
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_489
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_490
    .catchall {:try_start_488 .. :try_end_490} :catchall_507

    .line 507
    :try_start_490
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_497
    .catchall {:try_start_490 .. :try_end_497} :catchall_49b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 507
    return v3

    .line 508
    :catchall_49b
    move-exception v3

    :try_start_49c
    monitor-exit v2
    :try_end_49d
    .catchall {:try_start_49c .. :try_end_49d} :catchall_49b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_49d
    throw v3

    .line 496
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_49e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4a5
    .catchall {:try_start_49d .. :try_end_4a5} :catchall_507

    .line 497
    :try_start_4a5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4ac
    .catchall {:try_start_4a5 .. :try_end_4ac} :catchall_4b0

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    return v3

    .line 498
    :catchall_4b0
    move-exception v3

    :try_start_4b1
    monitor-exit v2
    :try_end_4b2
    .catchall {:try_start_4b1 .. :try_end_4b2} :catchall_4b0

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4b2
    throw v3

    .line 528
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_4b3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4ba
    .catchall {:try_start_4b2 .. :try_end_4ba} :catchall_507

    .line 529
    :try_start_4ba
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4c1
    .catchall {:try_start_4ba .. :try_end_4c1} :catchall_4c5

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    return v3

    .line 530
    :catchall_4c5
    move-exception v3

    :try_start_4c6
    monitor-exit v2
    :try_end_4c7
    .catchall {:try_start_4c6 .. :try_end_4c7} :catchall_4c5

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4c7
    throw v3

    .line 484
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_4c8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4cf
    .catchall {:try_start_4c7 .. :try_end_4cf} :catchall_507

    .line 485
    :try_start_4cf
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4d6
    .catchall {:try_start_4cf .. :try_end_4d6} :catchall_4da

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    return v3

    .line 486
    :catchall_4da
    move-exception v3

    :try_start_4db
    monitor-exit v2
    :try_end_4dc
    .catchall {:try_start_4db .. :try_end_4dc} :catchall_4da

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4dc
    throw v3

    .line 488
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_4dd
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4e4
    .catchall {:try_start_4dc .. :try_end_4e4} :catchall_507

    .line 489
    :try_start_4e4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4eb
    .catchall {:try_start_4e4 .. :try_end_4eb} :catchall_4ef

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 489
    return v3

    .line 490
    :catchall_4ef
    move-exception v3

    :try_start_4f0
    monitor-exit v2
    :try_end_4f1
    .catchall {:try_start_4f0 .. :try_end_4f1} :catchall_4ef

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4f1
    throw v3

    .line 480
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :pswitch_4f2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4f9
    .catchall {:try_start_4f1 .. :try_end_4f9} :catchall_507

    .line 481
    :try_start_4f9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_500
    .catchall {:try_start_4f9 .. :try_end_500} :catchall_504

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    return v3

    .line 482
    :catchall_504
    move-exception v3

    :try_start_505
    monitor-exit v2
    :try_end_506
    .catchall {:try_start_505 .. :try_end_506} :catchall_504

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_506
    throw v3

    .line 741
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :catchall_507
    move-exception v2

    goto :goto_520

    .line 738
    :goto_509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    throw v2
    :try_end_520
    .catchall {:try_start_506 .. :try_end_520} :catchall_507

    .line 741
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :goto_520
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    throw v2

    :pswitch_data_524
    .packed-switch 0x2710
        :pswitch_4f2
        :pswitch_4f2
        :pswitch_4f2
        :pswitch_4f2
        :pswitch_4dd
        :pswitch_22
        :pswitch_4c8
        :pswitch_4b3
        :pswitch_22
        :pswitch_49e
        :pswitch_489
        :pswitch_474
        :pswitch_45f
        :pswitch_44a
        :pswitch_435
        :pswitch_420
        :pswitch_40b
        :pswitch_3f6
        :pswitch_22
        :pswitch_3e1
        :pswitch_3e1
        :pswitch_3cc
        :pswitch_3b7
        :pswitch_3a2
        :pswitch_38d
        :pswitch_378
        :pswitch_363
        :pswitch_34e
        :pswitch_339
        :pswitch_322
        :pswitch_3e1
        :pswitch_30c
        :pswitch_2f7
        :pswitch_2e2
        :pswitch_2cc
        :pswitch_2b7
        :pswitch_22
        :pswitch_2a2
        :pswitch_22
        :pswitch_28d
        :pswitch_22
        :pswitch_22
        :pswitch_278
        :pswitch_3e1
        :pswitch_263
        :pswitch_3e1
        :pswitch_24e
        :pswitch_239
        :pswitch_223
        :pswitch_20e
        :pswitch_1f9
        :pswitch_22
        :pswitch_1e4
        :pswitch_1cf
        :pswitch_22
        :pswitch_22
        :pswitch_1ba
        :pswitch_1a5
        :pswitch_190
        :pswitch_17b
        :pswitch_166
        :pswitch_151
        :pswitch_22
        :pswitch_22
        :pswitch_147
        :pswitch_22
        :pswitch_132
        :pswitch_1f9
        :pswitch_22
        :pswitch_11d
        :pswitch_108
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_f3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_de
        :pswitch_22
        :pswitch_4f2
        :pswitch_4f2
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_d4
        :pswitch_22
        :pswitch_22
        :pswitch_bf
        :pswitch_aa
        :pswitch_22
        :pswitch_a0
        :pswitch_22
        :pswitch_4f2
        :pswitch_22
        :pswitch_8b
        :pswitch_81
        :pswitch_81
        :pswitch_77
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_62
        :pswitch_22
        :pswitch_22
        :pswitch_58
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_22
        :pswitch_4e
        :pswitch_44
        :pswitch_22
        :pswitch_3a
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_30
        :pswitch_26
    .end packed-switch
.end method
