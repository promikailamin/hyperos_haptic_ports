.class public Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 7

    const-wide/32 v0, 0x80000

    .line 567
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    const/16 v2, 0x2716

    if-eq p1, v2, :cond_5b7

    const/16 v2, 0x2717

    if-eq p1, v2, :cond_5a2

    const/16 v2, 0x2744

    if-eq p1, v2, :cond_58d

    const/16 v2, 0x2745

    if-eq p1, v2, :cond_578

    const/16 v2, 0x2752

    if-eq p1, v2, :cond_563

    const/16 v2, 0x2753

    if-eq p1, v2, :cond_54e

    const/16 v2, 0x2755

    if-eq p1, v2, :cond_539

    const/16 v2, 0x2756

    if-eq p1, v2, :cond_524

    packed-switch p1, :pswitch_data_5d0

    packed-switch p1, :pswitch_data_5de

    packed-switch p1, :pswitch_data_5ea

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_5f6

    packed-switch p1, :pswitch_data_6f8

    packed-switch p1, :pswitch_data_70e

    .line 869
    :try_start_50
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_67
    move-exception p0

    goto/16 :goto_5cc

    .line 665
    :pswitch_6a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_67

    .line 666
    :try_start_71
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_7c

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_7c
    move-exception p0

    .line 667
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw p0

    .line 799
    :pswitch_7f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_67

    .line 800
    :try_start_86
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_91

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_91
    move-exception p0

    .line 801
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw p0

    .line 679
    :pswitch_94
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_67

    .line 680
    :try_start_9b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a6

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_a6
    move-exception p0

    .line 681
    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw p0

    .line 795
    :pswitch_a9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_67

    .line 796
    :try_start_b0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_bb

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_bb
    move-exception p0

    .line 797
    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw p0

    .line 791
    :pswitch_be
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_67

    .line 792
    :try_start_c5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_d0

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_d0
    move-exception p0

    .line 793
    :try_start_d1
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    :try_start_d2
    throw p0

    .line 657
    :pswitch_d3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_67

    .line 658
    :try_start_da
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_e5

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_e5
    move-exception p0

    .line 659
    :try_start_e6
    monitor-exit v2
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw p0

    .line 769
    :pswitch_e8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_67

    .line 770
    :try_start_ef
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_fa

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_fa
    move-exception p0

    .line 771
    :try_start_fb
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw p0

    .line 716
    :pswitch_fd
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_67

    .line 717
    :try_start_104
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x4

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_110

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_110
    move-exception p0

    .line 719
    :try_start_111
    monitor-exit v2
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    :try_start_112
    throw p0

    .line 761
    :pswitch_113
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_67

    .line 762
    :try_start_11a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_125

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_125
    move-exception p0

    .line 763
    :try_start_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw p0

    .line 757
    :pswitch_128
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12f
    .catchall {:try_start_127 .. :try_end_12f} :catchall_67

    .line 758
    :try_start_12f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_136
    .catchall {:try_start_12f .. :try_end_136} :catchall_13a

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_13a
    move-exception p0

    .line 759
    :try_start_13b
    monitor-exit v2
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    :try_start_13c
    throw p0

    .line 765
    :pswitch_13d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_144
    .catchall {:try_start_13c .. :try_end_144} :catchall_67

    .line 766
    :try_start_144
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_144 .. :try_end_14b} :catchall_14f

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_14f
    move-exception p0

    .line 767
    :try_start_150
    monitor-exit v2
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    :try_start_151
    throw p0

    .line 651
    :pswitch_152
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_159
    .catchall {:try_start_151 .. :try_end_159} :catchall_67

    .line 652
    :try_start_159
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_160
    .catchall {:try_start_159 .. :try_end_160} :catchall_164

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_164
    move-exception p0

    .line 653
    :try_start_165
    monitor-exit v2
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    :try_start_166
    throw p0

    .line 867
    :sswitch_167
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMemcgProcessHighMemoryHighWatermark(ILjava/util/List;)I

    move-result p0
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 865
    :sswitch_171
    :try_start_171
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMemcgProcessMemoryInformation(ILjava/util/List;)I

    move-result p0
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 822
    :sswitch_17b
    :try_start_17b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmVoldLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_182
    .catchall {:try_start_17b .. :try_end_182} :catchall_67

    .line 823
    :try_start_182
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVoldLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_18d

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_18d
    move-exception p0

    .line 824
    :try_start_18e
    monitor-exit v2
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    :try_start_18f
    throw p0

    .line 863
    :sswitch_190
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPressureStallInformation(ILjava/util/List;)I

    move-result p0
    :try_end_196
    .catchall {:try_start_18f .. :try_end_196} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 573
    :sswitch_19a
    :try_start_19a
    sget-boolean v2, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v2, :cond_50f

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v2

    if-eqz v2, :cond_50f

    .line 575
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)I

    move-result p0
    :try_end_1b0
    .catchall {:try_start_19a .. :try_end_1b0} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 861
    :sswitch_1b4
    :try_start_1b4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_1ba
    .catchall {:try_start_1b4 .. :try_end_1ba} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 639
    :sswitch_1be
    :try_start_1be
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c5
    .catchall {:try_start_1be .. :try_end_1c5} :catchall_67

    .line 640
    :try_start_1c5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1cc
    .catchall {:try_start_1c5 .. :try_end_1cc} :catchall_1d0

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1d0
    move-exception p0

    .line 641
    :try_start_1d1
    monitor-exit v2
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_1d0

    :try_start_1d2
    throw p0

    .line 859
    :sswitch_1d3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_1d9
    .catchall {:try_start_1d2 .. :try_end_1d9} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 733
    :sswitch_1dd
    :try_start_1dd
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e4
    .catchall {:try_start_1dd .. :try_end_1e4} :catchall_67

    .line 734
    :try_start_1e4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_1ef

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1ef
    move-exception p0

    .line 735
    :try_start_1f0
    monitor-exit v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    :try_start_1f1
    throw p0

    .line 729
    :sswitch_1f2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1f9
    .catchall {:try_start_1f1 .. :try_end_1f9} :catchall_67

    .line 730
    :try_start_1f9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_200
    .catchall {:try_start_1f9 .. :try_end_200} :catchall_204

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_204
    move-exception p0

    .line 731
    :try_start_205
    monitor-exit v2
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_204

    :try_start_206
    throw p0

    .line 857
    :sswitch_207
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_20d
    .catchall {:try_start_206 .. :try_end_20d} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 855
    :sswitch_211
    :try_start_211
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)I

    move-result p0
    :try_end_217
    .catchall {:try_start_211 .. :try_end_217} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 853
    :sswitch_21b
    :try_start_21b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result p0
    :try_end_221
    .catchall {:try_start_21b .. :try_end_221} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 851
    :sswitch_225
    :try_start_225
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_22b
    .catchall {:try_start_225 .. :try_end_22b} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 849
    :sswitch_22f
    :try_start_22f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    move-result p0
    :try_end_235
    .catchall {:try_start_22f .. :try_end_235} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 673
    :sswitch_239
    :try_start_239
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result p0
    :try_end_23f
    .catchall {:try_start_239 .. :try_end_23f} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 834
    :sswitch_243
    :try_start_243
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24a
    .catchall {:try_start_243 .. :try_end_24a} :catchall_67

    .line 835
    :try_start_24a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_251
    .catchall {:try_start_24a .. :try_end_251} :catchall_255

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_255
    move-exception p0

    .line 836
    :try_start_256
    monitor-exit v2
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_255

    :try_start_257
    throw p0

    .line 669
    :sswitch_258
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result p0
    :try_end_25e
    .catchall {:try_start_257 .. :try_end_25e} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 847
    :sswitch_262
    :try_start_262
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result p0
    :try_end_268
    .catchall {:try_start_262 .. :try_end_268} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 783
    :sswitch_26c
    :try_start_26c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_273
    .catchall {:try_start_26c .. :try_end_273} :catchall_67

    .line 784
    :try_start_273
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_27a
    .catchall {:try_start_273 .. :try_end_27a} :catchall_27e

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_27e
    move-exception p0

    .line 785
    :try_start_27f
    monitor-exit v2
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    :try_start_280
    throw p0
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_67

    .line 872
    :sswitch_281
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    .line 609
    :sswitch_285
    :try_start_285
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_28c
    .catchall {:try_start_285 .. :try_end_28c} :catchall_67

    .line 610
    :try_start_28c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_293
    .catchall {:try_start_28c .. :try_end_293} :catchall_297

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_297
    move-exception p0

    .line 611
    :try_start_298
    monitor-exit v2
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_297

    :try_start_299
    throw p0

    .line 599
    :sswitch_29a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a1
    .catchall {:try_start_299 .. :try_end_2a1} :catchall_67

    .line 600
    :try_start_2a1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2a8
    .catchall {:try_start_2a1 .. :try_end_2a8} :catchall_2ac

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2ac
    move-exception p0

    .line 601
    :try_start_2ad
    monitor-exit v2
    :try_end_2ae
    .catchall {:try_start_2ad .. :try_end_2ae} :catchall_2ac

    :try_start_2ae
    throw p0

    .line 671
    :sswitch_2af
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result p0
    :try_end_2b5
    .catchall {:try_start_2ae .. :try_end_2b5} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 830
    :sswitch_2b9
    :try_start_2b9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c0
    .catchall {:try_start_2b9 .. :try_end_2c0} :catchall_67

    .line 831
    :try_start_2c0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2c7
    .catchall {:try_start_2c0 .. :try_end_2c7} :catchall_2cb

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2cb
    move-exception p0

    .line 832
    :try_start_2cc
    monitor-exit v2
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2cb

    :try_start_2cd
    throw p0

    .line 826
    :sswitch_2ce
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d5
    .catchall {:try_start_2cd .. :try_end_2d5} :catchall_67

    .line 827
    :try_start_2d5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2dc
    .catchall {:try_start_2d5 .. :try_end_2dc} :catchall_2e0

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2e0
    move-exception p0

    .line 828
    :try_start_2e1
    monitor-exit v2
    :try_end_2e2
    .catchall {:try_start_2e1 .. :try_end_2e2} :catchall_2e0

    :try_start_2e2
    throw p0

    .line 655
    :sswitch_2e3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)I

    move-result p0
    :try_end_2e9
    .catchall {:try_start_2e2 .. :try_end_2e9} :catchall_67

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 753
    :sswitch_2ed
    :try_start_2ed
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2f4
    .catchall {:try_start_2ed .. :try_end_2f4} :catchall_67

    .line 754
    :try_start_2f4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2fb
    .catchall {:try_start_2f4 .. :try_end_2fb} :catchall_2ff

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2ff
    move-exception p0

    .line 755
    :try_start_300
    monitor-exit v2
    :try_end_301
    .catchall {:try_start_300 .. :try_end_301} :catchall_2ff

    :try_start_301
    throw p0

    .line 749
    :sswitch_302
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_309
    .catchall {:try_start_301 .. :try_end_309} :catchall_67

    .line 750
    :try_start_309
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_310
    .catchall {:try_start_309 .. :try_end_310} :catchall_314

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_314
    move-exception p0

    .line 751
    :try_start_315
    monitor-exit v2
    :try_end_316
    .catchall {:try_start_315 .. :try_end_316} :catchall_314

    :try_start_316
    throw p0

    .line 745
    :sswitch_317
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_31e
    .catchall {:try_start_316 .. :try_end_31e} :catchall_67

    .line 746
    :try_start_31e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_325
    .catchall {:try_start_31e .. :try_end_325} :catchall_329

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_329
    move-exception p0

    .line 747
    :try_start_32a
    monitor-exit v2
    :try_end_32b
    .catchall {:try_start_32a .. :try_end_32b} :catchall_329

    :try_start_32b
    throw p0

    .line 725
    :sswitch_32c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_333
    .catchall {:try_start_32b .. :try_end_333} :catchall_67

    .line 726
    :try_start_333
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_33a
    .catchall {:try_start_333 .. :try_end_33a} :catchall_33e

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_33e
    move-exception p0

    .line 727
    :try_start_33f
    monitor-exit v2
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_33e

    :try_start_340
    throw p0

    .line 741
    :sswitch_341
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_348
    .catchall {:try_start_340 .. :try_end_348} :catchall_67

    .line 742
    :try_start_348
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_34f
    .catchall {:try_start_348 .. :try_end_34f} :catchall_353

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_353
    move-exception p0

    .line 743
    :try_start_354
    monitor-exit v2
    :try_end_355
    .catchall {:try_start_354 .. :try_end_355} :catchall_353

    :try_start_355
    throw p0

    .line 737
    :sswitch_356
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_35d
    .catchall {:try_start_355 .. :try_end_35d} :catchall_67

    .line 738
    :try_start_35d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_364
    .catchall {:try_start_35d .. :try_end_364} :catchall_368

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_368
    move-exception p0

    .line 739
    :try_start_369
    monitor-exit v2
    :try_end_36a
    .catchall {:try_start_369 .. :try_end_36a} :catchall_368

    :try_start_36a
    throw p0

    .line 711
    :sswitch_36b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_372
    .catchall {:try_start_36a .. :try_end_372} :catchall_67

    .line 712
    :try_start_372
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v3
    :try_end_379
    .catchall {:try_start_372 .. :try_end_379} :catchall_37d

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_37d
    move-exception p0

    .line 714
    :try_start_37e
    monitor-exit v3
    :try_end_37f
    .catchall {:try_start_37e .. :try_end_37f} :catchall_37d

    :try_start_37f
    throw p0

    .line 721
    :sswitch_380
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_387
    .catchall {:try_start_37f .. :try_end_387} :catchall_67

    .line 722
    :try_start_387
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_38e
    .catchall {:try_start_387 .. :try_end_38e} :catchall_392

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_392
    move-exception p0

    .line 723
    :try_start_393
    monitor-exit v2
    :try_end_394
    .catchall {:try_start_393 .. :try_end_394} :catchall_392

    :try_start_394
    throw p0

    .line 707
    :sswitch_395
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39c
    .catchall {:try_start_394 .. :try_end_39c} :catchall_67

    .line 708
    :try_start_39c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3a3
    .catchall {:try_start_39c .. :try_end_3a3} :catchall_3a7

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3a7
    move-exception p0

    .line 709
    :try_start_3a8
    monitor-exit v2
    :try_end_3a9
    .catchall {:try_start_3a8 .. :try_end_3a9} :catchall_3a7

    :try_start_3a9
    throw p0

    .line 703
    :sswitch_3aa
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b1
    .catchall {:try_start_3a9 .. :try_end_3b1} :catchall_67

    .line 704
    :try_start_3b1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3b8
    .catchall {:try_start_3b1 .. :try_end_3b8} :catchall_3bc

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3bc
    move-exception p0

    .line 705
    :try_start_3bd
    monitor-exit v2
    :try_end_3be
    .catchall {:try_start_3bd .. :try_end_3be} :catchall_3bc

    :try_start_3be
    throw p0

    .line 699
    :sswitch_3bf
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3c6
    .catchall {:try_start_3be .. :try_end_3c6} :catchall_67

    .line 700
    :try_start_3c6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3cd
    .catchall {:try_start_3c6 .. :try_end_3cd} :catchall_3d1

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3d1
    move-exception p0

    .line 701
    :try_start_3d2
    monitor-exit v2
    :try_end_3d3
    .catchall {:try_start_3d2 .. :try_end_3d3} :catchall_3d1

    :try_start_3d3
    throw p0

    .line 695
    :sswitch_3d4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3db
    .catchall {:try_start_3d3 .. :try_end_3db} :catchall_67

    .line 696
    :try_start_3db
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3e2
    .catchall {:try_start_3db .. :try_end_3e2} :catchall_3e6

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3e6
    move-exception p0

    .line 697
    :try_start_3e7
    monitor-exit v2
    :try_end_3e8
    .catchall {:try_start_3e7 .. :try_end_3e8} :catchall_3e6

    :try_start_3e8
    throw p0

    .line 691
    :sswitch_3e9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3f0
    .catchall {:try_start_3e8 .. :try_end_3f0} :catchall_67

    .line 692
    :try_start_3f0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3f7
    .catchall {:try_start_3f0 .. :try_end_3f7} :catchall_3fb

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3fb
    move-exception p0

    .line 693
    :try_start_3fc
    monitor-exit v2
    :try_end_3fd
    .catchall {:try_start_3fc .. :try_end_3fd} :catchall_3fb

    :try_start_3fd
    throw p0

    .line 687
    :sswitch_3fe
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_405
    .catchall {:try_start_3fd .. :try_end_405} :catchall_67

    .line 688
    :try_start_405
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_40c
    .catchall {:try_start_405 .. :try_end_40c} :catchall_410

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_410
    move-exception p0

    .line 689
    :try_start_411
    monitor-exit v2
    :try_end_412
    .catchall {:try_start_411 .. :try_end_412} :catchall_410

    :try_start_412
    throw p0

    .line 683
    :sswitch_413
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_41a
    .catchall {:try_start_412 .. :try_end_41a} :catchall_67

    .line 684
    :try_start_41a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_421
    .catchall {:try_start_41a .. :try_end_421} :catchall_425

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_425
    move-exception p0

    .line 685
    :try_start_426
    monitor-exit v2
    :try_end_427
    .catchall {:try_start_426 .. :try_end_427} :catchall_425

    :try_start_427
    throw p0

    .line 675
    :sswitch_428
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_42f
    .catchall {:try_start_427 .. :try_end_42f} :catchall_67

    .line 676
    :try_start_42f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_436
    .catchall {:try_start_42f .. :try_end_436} :catchall_43a

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_43a
    move-exception p0

    .line 677
    :try_start_43b
    monitor-exit v2
    :try_end_43c
    .catchall {:try_start_43b .. :try_end_43c} :catchall_43a

    :try_start_43c
    throw p0

    .line 818
    :pswitch_43d
    :sswitch_43d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_444
    .catchall {:try_start_43c .. :try_end_444} :catchall_67

    .line 819
    :try_start_444
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_44b
    .catchall {:try_start_444 .. :try_end_44b} :catchall_44f

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_44f
    move-exception p0

    .line 820
    :try_start_450
    monitor-exit v2
    :try_end_451
    .catchall {:try_start_450 .. :try_end_451} :catchall_44f

    :try_start_451
    throw p0

    .line 623
    :pswitch_452
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_459
    .catchall {:try_start_451 .. :try_end_459} :catchall_67

    .line 624
    :try_start_459
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_460
    .catchall {:try_start_459 .. :try_end_460} :catchall_464

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_464
    move-exception p0

    .line 625
    :try_start_465
    monitor-exit v2
    :try_end_466
    .catchall {:try_start_465 .. :try_end_466} :catchall_464

    :try_start_466
    throw p0

    .line 619
    :pswitch_467
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_46e
    .catchall {:try_start_466 .. :try_end_46e} :catchall_67

    .line 620
    :try_start_46e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_475
    .catchall {:try_start_46e .. :try_end_475} :catchall_479

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_479
    move-exception p0

    .line 621
    :try_start_47a
    monitor-exit v2
    :try_end_47b
    .catchall {:try_start_47a .. :try_end_47b} :catchall_479

    :try_start_47b
    throw p0

    .line 647
    :pswitch_47c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_483
    .catchall {:try_start_47b .. :try_end_483} :catchall_67

    .line 648
    :try_start_483
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_48a
    .catchall {:try_start_483 .. :try_end_48a} :catchall_48e

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_48e
    move-exception p0

    .line 649
    :try_start_48f
    monitor-exit v2
    :try_end_490
    .catchall {:try_start_48f .. :try_end_490} :catchall_48e

    :try_start_490
    throw p0

    .line 643
    :pswitch_491
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_498
    .catchall {:try_start_490 .. :try_end_498} :catchall_67

    .line 644
    :try_start_498
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_49f
    .catchall {:try_start_498 .. :try_end_49f} :catchall_4a3

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4a3
    move-exception p0

    .line 645
    :try_start_4a4
    monitor-exit v2
    :try_end_4a5
    .catchall {:try_start_4a4 .. :try_end_4a5} :catchall_4a3

    :try_start_4a5
    throw p0

    .line 631
    :pswitch_4a6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4ad
    .catchall {:try_start_4a5 .. :try_end_4ad} :catchall_67

    .line 632
    :try_start_4ad
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4b4
    .catchall {:try_start_4ad .. :try_end_4b4} :catchall_4b8

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4b8
    move-exception p0

    .line 633
    :try_start_4b9
    monitor-exit v2
    :try_end_4ba
    .catchall {:try_start_4b9 .. :try_end_4ba} :catchall_4b8

    :try_start_4ba
    throw p0

    .line 627
    :pswitch_4bb
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4c2
    .catchall {:try_start_4ba .. :try_end_4c2} :catchall_67

    .line 628
    :try_start_4c2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4c9
    .catchall {:try_start_4c2 .. :try_end_4c9} :catchall_4cd

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4cd
    move-exception p0

    .line 629
    :try_start_4ce
    monitor-exit v2
    :try_end_4cf
    .catchall {:try_start_4ce .. :try_end_4cf} :catchall_4cd

    :try_start_4cf
    throw p0

    .line 613
    :pswitch_4d0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4d7
    .catchall {:try_start_4cf .. :try_end_4d7} :catchall_67

    .line 614
    :try_start_4d7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4de
    .catchall {:try_start_4d7 .. :try_end_4de} :catchall_4e2

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4e2
    move-exception p0

    .line 615
    :try_start_4e3
    monitor-exit v2
    :try_end_4e4
    .catchall {:try_start_4e3 .. :try_end_4e4} :catchall_4e2

    :try_start_4e4
    throw p0

    .line 603
    :pswitch_4e5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4ec
    .catchall {:try_start_4e4 .. :try_end_4ec} :catchall_67

    .line 604
    :try_start_4ec
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4f3
    .catchall {:try_start_4ec .. :try_end_4f3} :catchall_4f7

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4f7
    move-exception p0

    .line 605
    :try_start_4f8
    monitor-exit v2
    :try_end_4f9
    .catchall {:try_start_4f8 .. :try_end_4f9} :catchall_4f7

    :try_start_4f9
    throw p0

    .line 595
    :pswitch_4fa
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_501
    .catchall {:try_start_4f9 .. :try_end_501} :catchall_67

    .line 596
    :try_start_501
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_508
    .catchall {:try_start_501 .. :try_end_508} :catchall_50c

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_50c
    move-exception p0

    .line 597
    :try_start_50d
    monitor-exit v2
    :try_end_50e
    .catchall {:try_start_50d .. :try_end_50e} :catchall_50c

    :try_start_50e
    throw p0

    .line 587
    :cond_50f
    :pswitch_50f
    :sswitch_50f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_516
    .catchall {:try_start_50e .. :try_end_516} :catchall_67

    .line 588
    :try_start_516
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_51d
    .catchall {:try_start_516 .. :try_end_51d} :catchall_521

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_521
    move-exception p0

    .line 589
    :try_start_522
    monitor-exit v2
    :try_end_523
    .catchall {:try_start_522 .. :try_end_523} :catchall_521

    :try_start_523
    throw p0

    .line 661
    :cond_524
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_52b
    .catchall {:try_start_523 .. :try_end_52b} :catchall_67

    .line 662
    :try_start_52b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_532
    .catchall {:try_start_52b .. :try_end_532} :catchall_536

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_536
    move-exception p0

    .line 663
    :try_start_537
    monitor-exit v2
    :try_end_538
    .catchall {:try_start_537 .. :try_end_538} :catchall_536

    :try_start_538
    throw p0

    .line 803
    :cond_539
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_540
    .catchall {:try_start_538 .. :try_end_540} :catchall_67

    .line 804
    :try_start_540
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_547
    .catchall {:try_start_540 .. :try_end_547} :catchall_54b

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_54b
    move-exception p0

    .line 805
    :try_start_54c
    monitor-exit v2
    :try_end_54d
    .catchall {:try_start_54c .. :try_end_54d} :catchall_54b

    :try_start_54d
    throw p0

    .line 775
    :cond_54e
    :pswitch_54e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_555
    .catchall {:try_start_54d .. :try_end_555} :catchall_67

    .line 776
    :try_start_555
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_55c
    .catchall {:try_start_555 .. :try_end_55c} :catchall_560

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_560
    move-exception p0

    .line 777
    :try_start_561
    monitor-exit v2
    :try_end_562
    .catchall {:try_start_561 .. :try_end_562} :catchall_560

    :try_start_562
    throw p0

    .line 807
    :cond_563
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_56a
    .catchall {:try_start_562 .. :try_end_56a} :catchall_67

    .line 808
    :try_start_56a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_571
    .catchall {:try_start_56a .. :try_end_571} :catchall_575

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_575
    move-exception p0

    .line 809
    :try_start_576
    monitor-exit v2
    :try_end_577
    .catchall {:try_start_576 .. :try_end_577} :catchall_575

    :try_start_577
    throw p0

    .line 787
    :cond_578
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_57f
    .catchall {:try_start_577 .. :try_end_57f} :catchall_67

    .line 788
    :try_start_57f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_586
    .catchall {:try_start_57f .. :try_end_586} :catchall_58a

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_58a
    move-exception p0

    .line 789
    :try_start_58b
    monitor-exit v2
    :try_end_58c
    .catchall {:try_start_58b .. :try_end_58c} :catchall_58a

    :try_start_58c
    throw p0

    .line 779
    :cond_58d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_594
    .catchall {:try_start_58c .. :try_end_594} :catchall_67

    .line 780
    :try_start_594
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_59b
    .catchall {:try_start_594 .. :try_end_59b} :catchall_59f

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_59f
    move-exception p0

    .line 781
    :try_start_5a0
    monitor-exit v2
    :try_end_5a1
    .catchall {:try_start_5a0 .. :try_end_5a1} :catchall_59f

    :try_start_5a1
    throw p0

    .line 635
    :cond_5a2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5a9
    .catchall {:try_start_5a1 .. :try_end_5a9} :catchall_67

    .line 636
    :try_start_5a9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_5b0
    .catchall {:try_start_5a9 .. :try_end_5b0} :catchall_5b4

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_5b4
    move-exception p0

    .line 637
    :try_start_5b5
    monitor-exit v2
    :try_end_5b6
    .catchall {:try_start_5b5 .. :try_end_5b6} :catchall_5b4

    :try_start_5b6
    throw p0

    .line 591
    :cond_5b7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5be
    .catchall {:try_start_5b6 .. :try_end_5be} :catchall_67

    .line 592
    :try_start_5be
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_5c5
    .catchall {:try_start_5be .. :try_end_5c5} :catchall_5c9

    .line 872
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_5c9
    move-exception p0

    .line 593
    :try_start_5ca
    monitor-exit v2
    :try_end_5cb
    .catchall {:try_start_5ca .. :try_end_5cb} :catchall_5c9

    :try_start_5cb
    throw p0
    :try_end_5cc
    .catchall {:try_start_5cb .. :try_end_5cc} :catchall_67

    .line 872
    :goto_5cc
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    throw p0

    :pswitch_data_5d0
    .packed-switch 0x2710
        :pswitch_50f
        :pswitch_50f
        :pswitch_50f
        :pswitch_50f
        :pswitch_4fa
    .end packed-switch

    :pswitch_data_5de
    .packed-switch 0x2719
        :pswitch_4e5
        :pswitch_4d0
        :pswitch_4bb
        :pswitch_4a6
    .end packed-switch

    :pswitch_data_5ea
    .packed-switch 0x271e
        :pswitch_491
        :pswitch_47c
        :pswitch_467
        :pswitch_452
    .end packed-switch

    :sswitch_data_5f6
    .sparse-switch
        0x2723 -> :sswitch_43d
        0x2724 -> :sswitch_43d
        0x2725 -> :sswitch_428
        0x2726 -> :sswitch_413
        0x2727 -> :sswitch_3fe
        0x2728 -> :sswitch_3e9
        0x2729 -> :sswitch_3d4
        0x272a -> :sswitch_3bf
        0x272b -> :sswitch_3aa
        0x272c -> :sswitch_395
        0x272d -> :sswitch_380
        0x272e -> :sswitch_43d
        0x272f -> :sswitch_36b
        0x2730 -> :sswitch_356
        0x2731 -> :sswitch_341
        0x2732 -> :sswitch_32c
        0x2733 -> :sswitch_317
        0x2735 -> :sswitch_302
        0x2737 -> :sswitch_2ed
        0x2750 -> :sswitch_2e3
        0x275b -> :sswitch_2ce
        0x2760 -> :sswitch_2b9
        0x2762 -> :sswitch_50f
        0x2763 -> :sswitch_50f
        0x276c -> :sswitch_2af
        0x276f -> :sswitch_29a
        0x2770 -> :sswitch_285
        0x2772 -> :sswitch_281
        0x2774 -> :sswitch_50f
        0x2776 -> :sswitch_26c
        0x2777 -> :sswitch_262
        0x2779 -> :sswitch_258
        0x2782 -> :sswitch_243
        0x2785 -> :sswitch_239
        0x2786 -> :sswitch_262
        0x2787 -> :sswitch_262
        0x2788 -> :sswitch_262
        0x2789 -> :sswitch_262
        0x278a -> :sswitch_262
        0x278b -> :sswitch_262
        0x278c -> :sswitch_262
        0x278d -> :sswitch_262
        0x278f -> :sswitch_22f
        0x2790 -> :sswitch_225
        0x2792 -> :sswitch_21b
        0x27a6 -> :sswitch_211
        0x27a7 -> :sswitch_207
        0x27bb -> :sswitch_1f2
        0x27bc -> :sswitch_1dd
        0x27bf -> :sswitch_1d3
        0x27cc -> :sswitch_1be
        0x27cd -> :sswitch_1b4
        0x27d8 -> :sswitch_50f
        0x27dc -> :sswitch_19a
        0x27ec -> :sswitch_43d
        0x27f5 -> :sswitch_190
        0x27ff -> :sswitch_17b
        0x2805 -> :sswitch_43d
        0x2806 -> :sswitch_43d
        0x2808 -> :sswitch_262
        0x2809 -> :sswitch_50f
        0x280a -> :sswitch_50f
        0x280b -> :sswitch_171
        0x280c -> :sswitch_167
    .end sparse-switch

    :pswitch_data_6f8
    .packed-switch 0x273a
        :pswitch_152
        :pswitch_43d
        :pswitch_13d
        :pswitch_43d
        :pswitch_128
        :pswitch_113
        :pswitch_fd
        :pswitch_e8
        :pswitch_54e
    .end packed-switch

    :pswitch_data_70e
    .packed-switch 0x2748
        :pswitch_d3
        :pswitch_be
        :pswitch_a9
        :pswitch_94
        :pswitch_7f
        :pswitch_6a
    .end packed-switch
.end method
