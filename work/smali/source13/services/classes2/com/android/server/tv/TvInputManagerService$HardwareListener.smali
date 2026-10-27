.class final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHardwareManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HardwareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 3795
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 3805
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3806
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 3808
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3809
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_49

    if-nez v4, :cond_36

    goto :goto_1d

    .line 3811
    :cond_36
    :try_start_36
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 3814
    goto :goto_46

    .line 3812
    :catch_3e
    move-exception v4

    .line 3813
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHardwareAdded"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3815
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_46
    goto :goto_1d

    .line 3816
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_47
    monitor-exit v0

    .line 3817
    return-void

    .line 3816
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 3821
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3822
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 3824
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3825
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_49

    if-nez v4, :cond_36

    goto :goto_1d

    .line 3827
    :cond_36
    :try_start_36
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 3830
    goto :goto_46

    .line 3828
    :catch_3e
    move-exception v4

    .line 3829
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHardwareRemoved"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_46
    goto :goto_1d

    .line 3832
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_47
    monitor-exit v0

    .line 3833
    return-void

    .line 3832
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3837
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3838
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 3840
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3841
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_49

    if-nez v4, :cond_36

    goto :goto_1d

    .line 3843
    :cond_36
    :try_start_36
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 3846
    goto :goto_46

    .line 3844
    :catch_3e
    move-exception v4

    .line 3845
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHdmiDeviceAdded"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3847
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_46
    goto :goto_1d

    .line 3848
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_47
    monitor-exit v0

    .line 3849
    return-void

    .line 3848
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 9
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3853
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3854
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 3856
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3857
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_49

    if-nez v4, :cond_36

    goto :goto_1d

    .line 3859
    :cond_36
    :try_start_36
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 3862
    goto :goto_46

    .line 3860
    :catch_3e
    move-exception v4

    .line 3861
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v5, "TvInputManagerService"

    const-string v6, "error in notifyHdmiDeviceRemoved"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3863
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_46
    goto :goto_1d

    .line 3864
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_47
    monitor-exit v0

    .line 3865
    return-void

    .line 3864
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 11
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3869
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3871
    :try_start_7
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_72

    .line 3882
    const/4 v1, 0x0

    .local v1, "state":Ljava/lang/Integer;
    goto :goto_1c

    .line 3878
    .end local v1    # "state":Ljava/lang/Integer;
    :pswitch_10
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3879
    .restart local v1    # "state":Ljava/lang/Integer;
    goto :goto_1c

    .line 3873
    .end local v1    # "state":Ljava/lang/Integer;
    :pswitch_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3874
    .restart local v1    # "state":Ljava/lang/Integer;
    nop

    .line 3885
    :goto_1c
    if-eqz v1, :cond_2d

    .line 3886
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v4

    invoke-static {v2, p1, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 3888
    :cond_2d
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 3890
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3891
    .local v4, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_6f

    if-nez v5, :cond_5c

    goto :goto_43

    .line 3893
    :cond_5c
    :try_start_5c
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_64
    .catchall {:try_start_5c .. :try_end_63} :catchall_6f

    .line 3896
    goto :goto_6c

    .line 3894
    :catch_64
    move-exception v5

    .line 3895
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_65
    const-string v6, "TvInputManagerService"

    const-string v7, "error in notifyHdmiDeviceUpdated"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3897
    .end local v4    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_6c
    goto :goto_43

    .line 3898
    .end local v1    # "state":Ljava/lang/Integer;
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_6d
    monitor-exit v0

    .line 3899
    return-void

    .line 3898
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_6f

    throw v1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 3798
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3799
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 3800
    monitor-exit v0

    .line 3801
    return-void

    .line 3800
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
