.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .registers 2

    .line 1673
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    return-void
.end method


# virtual methods
.method public final onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V
    .registers 7

    .line 1735
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1736
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_19

    .line 1742
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    goto :goto_1e

    .line 1744
    :cond_19
    invoke-static {p0, p5, p6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$monFrameRateOverridesChangedLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V

    .line 1745
    monitor-exit p1

    return-void

    :goto_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_17

    throw p0
.end method

.method public onHdcpLevelsChanged(JII)V
    .registers 6

    .line 1800
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1801
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_19

    .line 1807
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_1e

    .line 1810
    :cond_19
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onHdcpLevelsChangedLocked(II)V

    .line 1811
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_17

    throw p0
.end method

.method public onHotplug(JJZ)V
    .registers 6

    .line 1676
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    if-eqz p5, :cond_11

    .line 1678
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_16

    :catchall_f
    move-exception p0

    goto :goto_18

    .line 1680
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1682
    :goto_16
    monitor-exit p1

    return-void

    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_f

    throw p0
.end method

.method public onHotplugConnectionError(JI)V
    .registers 4

    .line 1693
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onHotplugConnectionError()V

    return-void
.end method

.method public onModeAndFrameRateOverridesChanged(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V
    .registers 28

    .line 1754
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSingleAppEventForModeAndFrameRateOverrideEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1767
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v13

    monitor-enter v13

    .line 1768
    :try_start_13
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v0

    move-wide/from16 v3, p3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v1, :cond_28

    .line 1775
    monitor-exit v13

    return-void

    :catchall_26
    move-exception v0

    goto :goto_3f

    :cond_28
    const v0, 0x4e6e6b28    # 1.0E9f

    move-wide/from16 v6, p6

    long-to-float v2, v6

    div-float v3, v0, v2

    move/from16 v2, p5

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    .line 1778
    invoke-static/range {v1 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$monModeAndFrameRateOverridesChangedLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IFJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V

    .line 1781
    monitor-exit v13

    return-void

    :goto_3f
    monitor-exit v13
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_26

    throw v0

    :cond_41
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p13

    .line 1786
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->onModeChanged(JJIJJJ[F)V

    move-object/from16 p10, p12

    move-object/from16 p5, v0

    move-wide/from16 p6, v1

    move-wide/from16 p8, v3

    move-object/from16 p11, v12

    .line 1789
    invoke-virtual/range {p5 .. p11}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V

    return-void
.end method

.method public final onModeChanged(JJIJJJ[F)V
    .registers 14

    .line 1709
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1710
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p2, :cond_1b

    .line 1716
    monitor-exit p1

    return-void

    :catchall_18
    move-exception v0

    move-object p0, v0

    goto :goto_2a

    :cond_1b
    const p0, 0x4e6e6b28    # 1.0E9f

    long-to-float p3, p6

    div-float p4, p0, p3

    move p3, p5

    move-wide p5, p8

    move-wide p7, p10

    move-object p9, p12

    .line 1719
    invoke-static/range {p2 .. p9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$monActiveDisplayModeChangedLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IFJJ[F)V

    .line 1722
    monitor-exit p1

    return-void

    :goto_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_18

    throw p0
.end method
