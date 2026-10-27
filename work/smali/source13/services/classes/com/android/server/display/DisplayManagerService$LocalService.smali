.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 3714
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 13
    .param p1, "config"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p4, "dwpc"    # Landroid/window/DisplayWindowPolicyController;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 3735
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disconnectWifiDisplay()V
    .registers 2

    .line 3971
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdisconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V

    .line 3972
    return-void
.end method

.method public finishDisplayTransition()V
    .registers 3

    .line 3988
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3989
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->finishDisplayTransitionLocked()V

    .line 3990
    monitor-exit v0

    .line 3991
    return-void

    .line 3990
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 3809
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPosition(I)Landroid/graphics/Point;
    .registers 5
    .param p1, "displayId"    # I

    .line 3861
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3862
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 3863
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_19

    .line 3864
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayPosition()Landroid/graphics/Point;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3866
    :cond_19
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3867
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getDisplaySurfaceDefaultSize(I)Landroid/graphics/Point;
    .registers 5
    .param p1, "displayId"    # I

    .line 4087
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4088
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 4089
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_12

    .line 4090
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4092
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4093
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;
    .registers 4
    .param p1, "displayId"    # I

    .line 4105
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4106
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4107
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/window/DisplayWindowPolicyController;

    monitor-exit v0

    return-object v1

    .line 4109
    :cond_21
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4110
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "maxFrames"    # J
    .param p4, "timestamp"    # J

    .line 3959
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3
    .param p1, "displayId"    # I

    .line 3946
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "outInfo"    # Landroid/view/DisplayInfo;

    .line 3895
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetNonOverrideDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 3896
    return-void
.end method

.method public getPossibleDisplayInfo(I)Ljava/util/Set;
    .registers 12
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation

    .line 3814
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3816
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    .line 3817
    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    .line 3818
    .local v1, "displayGroupId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 3819
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get possible display info since display group for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 3826
    :cond_39
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3827
    .local v2, "possibleInfo":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/DisplayInfo;>;"
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v3

    .line 3829
    .local v3, "group":Lcom/android/server/display/DisplayGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_49
    invoke-virtual {v3}, Lcom/android/server/display/DisplayGroup;->getSizeLocked()I

    move-result v5

    if-ge v4, v5, :cond_8c

    .line 3830
    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayGroup;->getIdLocked(I)I

    move-result v5

    .line 3831
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v6

    .line 3832
    .local v6, "logical":Lcom/android/server/display/LogicalDisplay;
    if-nez v6, :cond_82

    .line 3833
    const-string v7, "DisplayManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get possible display info since logical display for display id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist, as part of group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 3838
    :cond_82
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3829
    .end local v5    # "id":I
    .end local v6    # "logical":Lcom/android/server/display/LogicalDisplay;
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 3844
    .end local v4    # "i":I
    :cond_8c
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;

    move-result-object v4

    if-nez v4, :cond_9c

    .line 3845
    const-string v4, "DisplayManagerService"

    const-string v5, "Can\'t get supported states since DeviceStateManager not ready"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 3847
    :cond_9c
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;

    move-result-object v4

    .line 3848
    invoke-virtual {v4}, Landroid/hardware/devicestate/DeviceStateManagerInternal;->getSupportedStateIdentifiers()[I

    move-result-object v4

    .line 3849
    .local v4, "supportedStates":[I
    array-length v5, v4

    const/4 v6, 0x0

    :goto_a8
    if-ge v6, v5, :cond_bd

    aget v7, v4, v6

    .line 3850
    .local v7, "state":I
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v8}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v8

    .line 3851
    invoke-virtual {v8, v7, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayInfoForStateLocked(III)Ljava/util/Set;

    move-result-object v8

    .line 3850
    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3849
    nop

    .end local v7    # "state":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 3855
    .end local v4    # "supportedStates":[I
    :cond_bd
    :goto_bd
    monitor-exit v0

    return-object v2

    .line 3856
    .end local v1    # "displayGroupId":I
    .end local v2    # "possibleInfo":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/DisplayInfo;>;"
    .end local v3    # "group":Lcom/android/server/display/DisplayGroup;
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_7 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method public getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "sensorName"    # Ljava/lang/String;
    .param p3, "sensorType"    # Ljava/lang/String;

    .line 4028
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4029
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    .line 4030
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_55

    .line 4031
    const/4 v0, 0x0

    if-nez v1, :cond_12

    .line 4032
    return-object v0

    .line 4036
    :cond_12
    const/4 v2, 0x0

    invoke-static {v1, p3, p2, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 4038
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_1a

    .line 4039
    return-object v0

    .line 4042
    :cond_1a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    .line 4043
    :try_start_21
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 4044
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v4, :cond_2f

    .line 4045
    monitor-exit v3

    return-object v0

    .line 4047
    :cond_2f
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 4048
    .local v5, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v5, :cond_37

    .line 4049
    monitor-exit v3

    return-object v0

    .line 4051
    :cond_37
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v6

    .line 4052
    .local v6, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v7

    .line 4053
    .local v7, "sensorData":Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    invoke-virtual {v7, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 4054
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v8, v7, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    iget v9, v7, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    invoke-direct {v0, v8, v9}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    monitor-exit v3

    return-object v0

    .line 4057
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v6    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    .end local v7    # "sensorData":Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    :cond_50
    monitor-exit v3

    .line 4058
    return-object v0

    .line 4057
    :catchall_52
    move-exception v0

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_52

    throw v0

    .line 4030
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public getRefreshRateLimitations(I)Ljava/util/List;
    .registers 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    .line 4064
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4065
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 4066
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_12

    .line 4067
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 4069
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    move-object v1, v2

    .line 4070
    .local v1, "config":Lcom/android/server/display/DisplayDeviceConfig;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    .line 4071
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateLimitations()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4070
    .end local v1    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getRefreshRateSwitchingType()I
    .registers 2

    .line 4008
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getRefreshRateSwitchingTypeInternal()I

    move-result v0

    return v0
.end method

.method public ignoreProximitySensorUntilChanged()V
    .registers 3

    .line 3964
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 3965
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->ignoreProximitySensorUntilChanged()V

    .line 3966
    return-void
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .registers 6
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 3719
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3720
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 3721
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmSensorManager(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)V

    .line 3722
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmPowerHandler(Lcom/android/server/display/DisplayManagerService;Landroid/os/Handler;)V

    .line 3723
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$minitializeDisplayPowerControllersLocked(Lcom/android/server/display/DisplayManagerService;)V

    .line 3725
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$maddDisplayGroupManuallyIfNeededLocked(Lcom/android/server/display/DisplayManagerService;)V

    .line 3726
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2c

    .line 3728
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 3729
    return-void

    .line 3726
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public isDisplayGroupAlwaysOn(I)Z
    .registers 5
    .param p1, "groupId"    # I

    .line 3771
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3772
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v1

    .line 3774
    .local v1, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v1, :cond_15

    const/4 v2, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/display/DisplayGroup;->isAlwaysOnLocked()Z

    move-result v2

    :goto_19
    monitor-exit v0

    return v2

    .line 3775
    .end local v1    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isDisplayTransitionInProgress()Z
    .registers 3

    .line 3981
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3982
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->isDisplayTransitionInProgressLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3983
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isInResolutionSwitchBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 4002
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayManagerServiceStub;->isInResolutionSwitchBlackList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInResolutionSwitchProtectList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 3997
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayManagerServiceStub;->isInResolutionSwitchProtectList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 4

    .line 3781
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3782
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 3783
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v1

    monitor-exit v0

    .line 3782
    return v1

    .line 3784
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public isUsingVitualDisplay(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4124
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->isUsingVitualDisplay(I)Z

    move-result v0

    return v0
.end method

.method public notifyDisplayManager(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "code"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 4116
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 4117
    .local v0, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v0, :cond_11

    .line 4118
    invoke-virtual {v0, p2, p3}, Lcom/android/server/display/DisplayPowerController;->notifyDisplayPowerControllerStub(ILandroid/os/Bundle;)V

    .line 4120
    :cond_11
    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .line 4099
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayManagerServiceImpl:Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayManagerServiceStub;->onEarlyInteractivityChange(Z)V

    .line 4100
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->onEarlyInteractivityChange(Z)V

    .line 4101
    return-void
.end method

.method public onOverlayChanged()V
    .registers 4

    .line 3938
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3939
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/DisplayManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/display/DisplayManagerService$LocalService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3940
    monitor-exit v0

    .line 3941
    return-void

    .line 3940
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public performTraversal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3900
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V

    .line 3901
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 4

    .line 3930
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3931
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 3932
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->persistBrightnessTrackerState()V

    .line 3933
    monitor-exit v0

    .line 3934
    return-void

    .line 3933
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3789
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3790
    return-void
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 3872
    if-eqz p1, :cond_8

    .line 3876
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 3877
    return-void

    .line 3873
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 14
    .param p1, "groupId"    # I
    .param p2, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p3, "waitForNegativeProximity"    # Z

    .line 3742
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 3743
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v1

    .line 3745
    .local v1, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v1, :cond_16

    .line 3746
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3749
    :cond_16
    invoke-virtual {v1}, Lcom/android/server/display/DisplayGroup;->getSizeLocked()I

    move-result v2

    .line 3750
    .local v2, "size":I
    const/4 v3, 0x1

    .line 3751
    .local v3, "ready":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v2, :cond_4e

    .line 3752
    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayGroup;->getIdLocked(I)I

    move-result v5

    .line 3753
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v6

    .line 3754
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 3755
    .local v6, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    iget v7, v7, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 3756
    .local v7, "flags":I
    and-int/lit8 v8, v7, 0x20

    if-nez v8, :cond_4b

    .line 3757
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v8}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object v8

    .line 3758
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayPowerController;

    .line 3759
    .local v8, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    invoke-virtual {v8, p2, p3}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    and-int/2addr v3, v9

    .line 3751
    .end local v5    # "id":I
    .end local v6    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .end local v7    # "flags":I
    .end local v8    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 3764
    .end local v4    # "i":I
    :cond_4e
    monitor-exit v0

    return v3

    .line 3765
    .end local v1    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    .end local v2    # "size":I
    .end local v3    # "ready":Z
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 3925
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayAccessUIDsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V

    .line 3926
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .line 3890
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    .line 3891
    return-void
.end method

.method public setDisplayOffsets(III)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 3915
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayOffsetsInternal(Lcom/android/server/display/DisplayManagerService;III)V

    .line 3916
    return-void
.end method

.method public setDisplayProperties(IZFIFFZZ)V
    .registers 19
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "requestedMinRefreshRate"    # F
    .param p6, "requestedMaxRefreshRate"    # F
    .param p7, "requestedMinimalPostProcessing"    # Z
    .param p8, "inTraversal"    # Z

    .line 3908
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayPropertiesInternal(Lcom/android/server/display/DisplayManagerService;IZFIFFZZ)V

    .line 3911
    return-void
.end method

.method public setDisplayScalingDisabled(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "disableScaling"    # Z

    .line 3920
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayScalingDisabledInternal(Lcom/android/server/display/DisplayManagerService;IZ)V

    .line 3921
    return-void
.end method

.method public setDisplayedContentSamplingEnabled(IZII)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .param p3, "componentMask"    # I
    .param p4, "maxFrames"    # I

    .line 3952
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setDisplayedContentSamplingEnabledInternal(IZII)Z

    move-result v0

    return v0
.end method

.method public setSceneMaxRefreshRate(IF)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "maxFrameRate"    # F

    .line 4014
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4015
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 4016
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_15

    .line 4017
    monitor-exit v0

    return-void

    .line 4019
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->setSceneMaxRefreshRate(IF)V

    .line 4020
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v0

    .line 4021
    return-void

    .line 4020
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setWindowManagerMirroring(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "isMirroring"    # Z

    .line 4076
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4077
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 4078
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_12

    .line 4079
    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayDevice;->setWindowManagerMirroringLocked(Z)V

    .line 4081
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_12
    monitor-exit v0

    .line 4082
    return-void

    .line 4081
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3
    .param p1, "displayId"    # I

    .line 3799
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3794
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3795
    return-void
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 3881
    if-eqz p1, :cond_8

    .line 3885
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$munregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 3886
    return-void

    .line 3882
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDisplaySize(III)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3976
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateDisplaySize(III)V

    .line 3977
    return-void
.end method

.method public userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3
    .param p1, "displayId"    # I

    .line 3804
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$muserScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method
