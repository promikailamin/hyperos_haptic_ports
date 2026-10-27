.class Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothCompanionDeviceConnectionListener.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompanionDevice_PresenceMonitor_BT"


# instance fields
.field private final mAllConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/MacAddress;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field private final mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;


# direct methods
.method constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V
    .registers 4
    .param p1, "associationStore"    # Lcom/android/server/companion/AssociationStore;
    .param p2, "callback"    # Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    .line 57
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 59
    iput-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    .line 60
    return-void
.end method

.method private onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connected"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 113
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 126
    .local v2, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    .line 127
    .local v3, "id":I
    if-eqz p2, :cond_26

    .line 128
    iget-object v4, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v4, v3}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    goto :goto_2b

    .line 130
    :cond_26
    iget-object v4, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v4, v3}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceDisconnected(I)V

    .line 132
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    .end local v3    # "id":I
    :goto_2b
    goto :goto_e

    .line 133
    :cond_2c
    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "btAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 65
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 66
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 65
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 67
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v0, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    .line 68
    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 139
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    .line 142
    :cond_15
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 2
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 148
    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .registers 5
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .param p2, "addressChanged"    # Z

    .line 157
    if-nez p2, :cond_3

    .line 159
    return-void

    .line 164
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address changes are not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 79
    .local v0, "macAddress":Landroid/net/MacAddress;
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 81
    return-void

    .line 84
    :cond_11
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 85
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .line 100
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 101
    .local v0, "macAddress":Landroid/net/MacAddress;
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 105
    return-void

    .line 108
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 109
    return-void
.end method
