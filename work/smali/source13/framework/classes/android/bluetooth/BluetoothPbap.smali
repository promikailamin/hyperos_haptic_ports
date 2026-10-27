.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o RESULT_CANCELED:I = 0x2

.field public static final greylist-max-o RESULT_FAILURE:I = 0x0

.field public static final greylist-max-o RESULT_SUCCESS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothPbap"


# instance fields
.field private greylist-max-o mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothPbap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v6, Landroid/bluetooth/BluetoothPbap$1;

    const-class v0, Landroid/bluetooth/IBluetoothPbap;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x6

    const-string v4, "BluetoothPbap"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothPbap$1;-><init>(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothPbap;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 123
    iput-object p3, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 125
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 126
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothPbap;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothPbap;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 302
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 306
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 308
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    return v0

    .line 309
    :cond_10
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 316
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o close()V
    .registers 2

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 147
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Landroid/bluetooth/BluetoothPbap;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 285
    const-string v0, "disconnect()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 287
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    const/4 v1, 0x0

    const-string v2, "BluetoothPbap"

    if-nez v0, :cond_14

    .line 288
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v1

    .line 292
    :cond_14
    :try_start_14
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 293
    const/4 v1, 0x1

    return v1

    .line 294
    :catch_1b
    move-exception v3

    .line 295
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 133
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 134
    throw v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 162
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 164
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    const-string v1, "BluetoothPbap"

    if-nez v0, :cond_18

    .line 165
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 169
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 170
    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothPbap;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 169
    invoke-static {v2, v3}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_25

    return-object v1

    .line 171
    :catch_25
    move-exception v2

    .line 172
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v2    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 190
    const-string v0, "BluetoothPbap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    :try_start_19
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v2

    .line 193
    .local v2, "service":Landroid/bluetooth/IBluetoothPbap;
    if-eqz v2, :cond_32

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPbap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 194
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothPbap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 196
    :cond_32
    if-nez v2, :cond_39

    .line 197
    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_39} :catch_3a

    .line 199
    :cond_39
    return v1

    .line 200
    .end local v2    # "service":Landroid/bluetooth/IBluetoothPbap;
    :catch_3a
    move-exception v2

    .line 201
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevicesMatchingConnectionStates: states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v0

    .line 217
    .local v0, "service":Landroid/bluetooth/IBluetoothPbap;
    const-string v1, "BluetoothPbap"

    if-nez v0, :cond_2d

    .line 218
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 222
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 223
    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothPbap;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 222
    invoke-static {v2, v3}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3a

    return-object v1

    .line 225
    :catch_3a
    move-exception v2

    .line 226
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 257
    const-string v0, "BluetoothPbap"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->getService()Landroid/bluetooth/IBluetoothPbap;

    move-result-object v2

    .line 258
    .local v2, "service":Landroid/bluetooth/IBluetoothPbap;
    if-eqz v2, :cond_23

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbap;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 259
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPbap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 260
    if-eqz p2, :cond_1c

    const/16 v3, 0x64

    if-eq p2, v3, :cond_1c

    .line 262
    return v1

    .line 264
    :cond_1c
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothPbap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 266
    :cond_23
    if-nez v2, :cond_2a

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 267
    :cond_2a
    return v1

    .line 268
    .end local v2    # "service":Landroid/bluetooth/IBluetoothPbap;
    :catch_2b
    move-exception v2

    .line 269
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v1
.end method
