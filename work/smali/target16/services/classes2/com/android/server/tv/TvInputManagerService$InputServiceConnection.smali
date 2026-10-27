.class public final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 3781
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3782
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 3783
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 3791
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3792
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 3795
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3796
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto/16 :goto_1d3

    .line 3798
    :cond_1f
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 3799
    invoke-static {p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)V

    const/4 p2, 0x0

    .line 3800
    invoke-static {v2, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputneedInit(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .line 3803
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v3

    if-nez v3, :cond_64

    .line 3804
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_1c

    .line 3806
    :try_start_50
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5b} :catch_5c
    .catchall {:try_start_50 .. :try_end_5b} :catchall_1c

    goto :goto_64

    :catch_5c
    move-exception v3

    .line 3808
    :try_start_5d
    const-string v4, "TvInputManagerService"

    const-string v5, "error in registerCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3812
    :cond_64
    :goto_64
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_70
    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 3813
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v5

    if-eqz v5, :cond_70

    .line 3815
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v5, v1, v6, v4, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mnotifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    goto :goto_70

    .line 3820
    :cond_a3
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_183

    .line 3822
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareDeviceRemovedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_bd
    .catchall {:try_start_5d .. :try_end_bd} :catchall_1c

    .line 3824
    :try_start_bd
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c4} :catch_c5
    .catchall {:try_start_bd .. :try_end_c4} :catchall_1c

    goto :goto_b1

    :catch_c5
    move-exception v1

    .line 3826
    :try_start_c6
    const-string v3, "TvInputManagerService"

    const-string v4, "error in hardwareDeviceRemovedBuffer"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b1

    .line 3829
    :cond_ce
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareDeviceRemovedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3831
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethdmiDeviceRemovedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_dd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_e9
    .catchall {:try_start_c6 .. :try_end_e9} :catchall_1c

    .line 3833
    :try_start_e9
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_f0} :catch_f1
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_1c

    goto :goto_dd

    :catch_f1
    move-exception v1

    .line 3835
    :try_start_f2
    const-string v3, "TvInputManagerService"

    const-string v4, "error in hdmiDeviceRemovedBuffer"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dd

    .line 3838
    :cond_fa
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethdmiDeviceRemovedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3839
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_11b
    .catchall {:try_start_f2 .. :try_end_11b} :catchall_1c

    .line 3841
    :try_start_11b
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_122} :catch_123
    .catchall {:try_start_11b .. :try_end_122} :catchall_1c

    goto :goto_10f

    :catch_123
    move-exception v1

    .line 3843
    :try_start_124
    const-string v3, "TvInputManagerService"

    const-string v4, "error in notifyHardwareAdded"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10f

    .line 3846
    :cond_12c
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_146
    .catchall {:try_start_124 .. :try_end_146} :catchall_1c

    .line 3848
    :try_start_146
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_14d} :catch_14e
    .catchall {:try_start_146 .. :try_end_14d} :catchall_1c

    goto :goto_13a

    :catch_14e
    move-exception v1

    .line 3850
    :try_start_14f
    const-string v3, "TvInputManagerService"

    const-string v4, "error in notifyHdmiDeviceAdded"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13a

    .line 3854
    :cond_157
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethdmiDeviceUpdatedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_16b
    .catchall {:try_start_14f .. :try_end_16b} :catchall_1c

    .line 3856
    :try_start_16b
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_172} :catch_173
    .catchall {:try_start_16b .. :try_end_172} :catchall_1c

    goto :goto_15f

    :catch_173
    move-exception v1

    .line 3858
    :try_start_174
    const-string v3, "TvInputManagerService"

    const-string v4, "error in hdmiDeviceUpdatedBuffer"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15f

    .line 3861
    :cond_17c
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethdmiDeviceUpdatedBuffer(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3864
    :cond_183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3867
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_190
    :goto_190
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 3868
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v4, v5, v3, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v4

    if-nez v4, :cond_190

    .line 3869
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 3873
    :cond_1ae
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1b2
    if-ge p2, v1, :cond_1c4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    check-cast v3, Landroid/os/IBinder;

    .line 3874
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v4, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    goto :goto_1b2

    .line 3877
    :cond_1c4
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_1d1

    .line 3878
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateHardwareServiceConnectionDelayed(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 3880
    :cond_1d1
    monitor-exit v0

    return-void

    :goto_1d3
    monitor-exit v0
    :try_end_1d4
    .catchall {:try_start_174 .. :try_end_1d4} :catchall_1c

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 3888
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3892
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3893
    :try_start_f
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 3894
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz p1, :cond_3e

    const/4 v1, 0x1

    .line 3896
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 3897
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    const/4 v1, 0x0

    .line 3898
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)V

    .line 3899
    invoke-static {p1, v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)V

    .line 3901
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v2, p1, v1, p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_40

    .line 3903
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_3c

    throw p0

    .line 3889
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
