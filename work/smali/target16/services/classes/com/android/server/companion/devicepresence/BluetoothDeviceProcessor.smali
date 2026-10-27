.class public Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothDeviceProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 73
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 74
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    .line 78
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 79
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 78
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 80
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 157
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    .line 158
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 157
    invoke-interface {p0, v1, p1}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_3f

    :catchall_1d
    move-exception p0

    goto :goto_41

    .line 160
    :cond_1f
    const-string p0, "CDM_BluetoothDeviceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAssociationAdded: Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently connected."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_1d

    throw p0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 89
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    monitor-enter v1

    .line 92
    :try_start_b
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 93
    const-string p0, "CDM_BluetoothDeviceProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already marked as connected. Skipping duplicate event."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v1

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3c

    .line 97
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_34

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void

    .line 97
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_34

    throw p0
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 127
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 130
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_12

    .line 131
    :cond_25
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    if-eqz p2, :cond_35

    .line 133
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_12

    .line 135
    :cond_35
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceDisconnected(II)V

    goto :goto_12

    .line 139
    :cond_3f
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 140
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 143
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_56

    :cond_52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 145
    :goto_56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 146
    invoke-virtual {v1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 147
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    if-eqz p2, :cond_76

    const/4 v3, 0x2

    goto :goto_77

    :cond_76
    const/4 v3, 0x3

    :goto_77
    invoke-interface {v2, v1, v3}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto :goto_5a

    :cond_7b
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5

    .line 111
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    monitor-enter v0

    .line 114
    :try_start_b
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_36

    .line 115
    const-string p0, "CDM_BluetoothDeviceProcessor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found as connected. Skipping disconnect event"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3c

    .line 119
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_34

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void

    .line 119
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_34

    throw p0
.end method
