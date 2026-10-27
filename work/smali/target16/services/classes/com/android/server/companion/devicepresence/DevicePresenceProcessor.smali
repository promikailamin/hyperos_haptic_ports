.class public Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;
.super Ljava/lang/Object;
.source "DevicePresenceProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;
.implements Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;
.implements Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

.field public final mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

.field public final mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

.field public final mBtDisconnectedDevices:Ljava/util/Set;

.field public final mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final mConnectedBtDevices:Ljava/util/Set;

.field public final mConnectedSelfManagedDevices:Ljava/util/Set;

.field public final mConnectedUuidDevices:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePresenceListener:Ljava/util/List;

.field public final mNearbyBleDevices:Ljava/util/Set;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPendingDevicePresenceEvents:Landroid/util/SparseArray;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mPresentDevices:Ljava/util/Map;

.field public final mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;

.field public final mSelfManagedNearByDevices:Ljava/util/Set;

.field public final mSimulated:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$0qcO9TrgAC2aaxEam4IC9byNKT8(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBinderDied(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUijgebLabFAXctXbRrXn7iPOHA(Ljava/lang/String;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;)Z
    .registers 2

    .line 481
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JoN0ufLpQUmd6VY6ZWYRnIbN7Xo(Landroid/os/ParcelUuid;ILandroid/companion/DevicePresenceEvent;)Z
    .registers 5

    .line 1278
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1279
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1280
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    move-result p0

    if-ne p0, p1, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$P9ARtojxEiGF9DY5s5X1JGDxSkM(Ljava/lang/String;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;)Z
    .registers 2

    .line 514
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PrFWMcoH3KC5pCBF-GYU5bKIr3M(ILcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;)Z
    .registers 3

    .line 1194
    iget-object v0, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mAssociationIdFilter:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1197
    iget-object p0, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mAssociationIdFilter:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener for service \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has no more associations to observe. Removing listener."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_DevicePresenceProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uAbN2XnOakk5J4p04vdEHqxMTTk(Landroid/os/ParcelUuid;ILandroid/companion/DevicePresenceEvent;)Z
    .registers 4

    .line 1264
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v0

    if-nez v0, :cond_18

    .line 1265
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1266
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    move-result p0

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtDisconnectedDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtDisconnectedDevicesBlePresence(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNearbyBleDevices(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimulated(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monDevicePresenceEvent(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;Lcom/android/server/companion/CompanionExemptionProcessor;)V
    .registers 16

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 125
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 127
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 135
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSelfManagedNearByDevices:Ljava/util/Set;

    .line 145
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 151
    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;

    .line 154
    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 158
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 175
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 177
    iput-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 178
    iput-object p5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 179
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 180
    new-instance p1, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;)V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    .line 182
    new-instance p1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p1, p4, p0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/BleDeviceProcessor$Callback;)V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 183
    iput-object p6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 184
    iput-object p7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    const/4 p1, 0x2

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 p1, 0x0

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 p1, 0x4

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, 0x7

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 185
    invoke-static/range {v0 .. v7}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPresentDevices:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bindApplicationIfNeeded(ILjava/lang/String;Z)V
    .registers 6

    .line 565
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 566
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    new-instance v1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->bindCompanionApp(ILjava/lang/String;ZLcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;)V

    return-void

    .line 569
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UserId=["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], packageName=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is already bound."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_DevicePresenceProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final broadcastDevicePresenceEvents(Landroid/companion/DevicePresenceEvent;)V
    .registers 8

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting DevicePresenceEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-virtual {p1}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    move-result v0

    .line 1519
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;

    .line 1520
    iget-object v3, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mAssociationIdFilter:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1522
    :try_start_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - Sending presence event for service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v3, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mListener:Landroid/companion/IOnDevicePresenceEventListener;

    invoke-interface {v3, p1}, Landroid/companion/IOnDevicePresenceEventListener;->onDevicePresence(Landroid/companion/DevicePresenceEvent;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_53} :catch_54

    goto :goto_20

    :catch_54
    move-exception v3

    .line 1526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send presence event to listener for service \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :cond_71
    return-void
.end method

.method public final canStopBleScan()Z
    .registers 5

    .line 1222
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 1223
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    .line 1224
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v3

    .line 1225
    :try_start_1d
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p0, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBtConnected(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 1226
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_54

    .line 1228
    :cond_34
    :goto_34
    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The BLE scan cannot be stopped, device( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ) is not yet connected Or it is pending to report BLE lost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1231
    monitor-exit v3

    return p0

    .line 1233
    :cond_52
    monitor-exit v3

    goto :goto_a

    :goto_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_32

    throw p0

    :cond_56
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1355
    const-string v0, "Companion Device Present: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1356
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "<empty>\n"

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 1357
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    .line 1358
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1359
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    .line 1362
    :cond_23
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1365
    const-string v2, "  Connected Bluetooth Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1366
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "    "

    if-eqz v2, :cond_3d

    .line 1367
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_6c

    .line 1369
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1370
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1371
    iget-object v6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 1372
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_46

    .line 1376
    :cond_6c
    :goto_6c
    const-string v2, "  Nearby BLE Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1377
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1378
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_ac

    .line 1380
    :cond_7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1381
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1382
    iget-object v6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 1383
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_86

    .line 1387
    :cond_ac
    :goto_ac
    const-string v2, "  Self-Reported Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1388
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 1389
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_ec

    .line 1391
    :cond_bd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1392
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1393
    iget-object v6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 1394
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_c6

    .line 1398
    :cond_ec
    :goto_ec
    const-string v2, "  SelfManaged-Nearby Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1399
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSelfManagedNearByDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1400
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    .line 1402
    :cond_fd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1403
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSelfManagedNearByDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_106
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1404
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 1405
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_106

    :cond_12c
    return-void
.end method

.method public final enforceAssociationExists(I)V
    .registers 4

    .line 810
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    return-void

    .line 811
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPendingDevicePresenceEventsByUserId(I)Ljava/util/List;
    .registers 4

    .line 1338
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 1340
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 195
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 196
    const-string v1, "CDM_DevicePresenceProcessor"

    if-nez v0, :cond_12

    .line 197
    const-string p0, "BluetoothManager is not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 202
    const-string p0, "BluetoothAdapter is NOT available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_1e
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->init(Landroid/bluetooth/BluetoothAdapter;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    .line 209
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public isBlePresent(I)Z
    .registers 2

    .line 624
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBtConnected(I)Z
    .registers 2

    .line 617
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDevicePresent(I)Z
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    .line 597
    :cond_e
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPresentDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceUuidPresent(Landroid/os/ParcelUuid;)Z
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSimulatePresent(I)Z
    .registers 2

    .line 631
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V
    .registers 6

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "legacyNotifyDevicePresenceEvent() association=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isAppeared=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 980
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 982
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 983
    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object p0

    if-nez p0, :cond_3e

    .line 985
    const-string p0, "Package is not bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    if-eqz p2, :cond_44

    .line 990
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void

    .line 992
    :cond_44
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public final notifyAndExemptApp(ILandroid/companion/AssociationInfo;Ljava/lang/String;I)V
    .registers 8

    .line 1488
    new-instance v0, Landroid/companion/DevicePresenceEvent;

    .line 1489
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 1490
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p1

    invoke-virtual {p0, p4, p3, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 1491
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    const/4 v1, 0x1

    invoke-virtual {p1, p4, p3, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    .line 1493
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p3, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public final notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V
    .registers 8

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCompanionDevicePresenceEvent userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],packageName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],deviceProfileOrUuid=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],event=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 1008
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object v0

    if-nez v0, :cond_42

    .line 1011
    const-string p0, "Package is NOT bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1014
    :cond_42
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 1015
    invoke-virtual {p4}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v2

    .line 1014
    invoke-static {p1, v1, p3, p2, v2}, Lcom/android/server/companion/utils/MetricUtils;->logDevicePresenceEvent(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1016
    invoke-virtual {p0, p4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->broadcastDevicePresenceEvents(Landroid/companion/DevicePresenceEvent;)V

    .line 1017
    invoke-virtual {v0, p4}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->postOnDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public notifySelfManagedDevicePresenceEvent(IZ)V
    .registers 5

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySelfManagedDeviceAppeared() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    if-eqz p2, :cond_20

    const/4 p2, 0x4

    goto :goto_21

    :cond_20
    const/4 p2, 0x5

    .line 1032
    :goto_21
    new-instance v0, Landroid/companion/DevicePresenceEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 1034
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->processSelfManagedDevicePresenceEvent(ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 10

    .line 1166
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 1168
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1169
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    .line 1170
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1171
    new-instance v5, Landroid/companion/DevicePresenceEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v2}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 1175
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v7

    move-object v2, p0

    .line 1174
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->processNotifyAssociationRemoved(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;Ljava/lang/String;Z)V

    move-object p0, v4

    .line 1177
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1178
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1179
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1181
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v7

    .line 1180
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->processNotifyAssociationRemoved(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;Ljava/lang/String;Z)V

    goto :goto_34

    :cond_52
    move-object v2, p0

    .line 1187
    :cond_53
    iget-object p0, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPresentDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 1188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1193
    :cond_71
    iget-object p0, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    new-instance p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1207
    iget-object p0, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p0

    .line 1208
    :try_start_7e
    iget-object p1, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1209
    iget-object p1, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1210
    monitor-exit p0

    return-void

    :catchall_8e
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_8e

    throw p1
.end method

.method public final onBinderDied(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .registers 9

    .line 1087
    invoke-virtual {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    move-result v0

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBinderDied() u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isPrimary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_DevicePresenceProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_70

    .line 1092
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1093
    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1095
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 1096
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    .line 1097
    const-string v4, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable hint mode for device profile: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1104
    :cond_6b
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->removePackage(ILjava/lang/String;)V

    .line 1108
    :cond_70
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldScheduleRebind(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1111
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->scheduleRebinding(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    :cond_7b
    return-void
.end method

.method public onBleCompanionDeviceFound(II)V
    .registers 6

    .line 704
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBleCompanionDeviceFound associationId( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 706
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    .line 710
    :cond_2a
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    new-instance v0, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v0, p1, v2, v1}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    .line 712
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    .line 713
    :try_start_37
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    if-eqz v0, :cond_53

    .line 715
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_55

    .line 717
    :cond_53
    :goto_53
    monitor-exit p2

    return-void

    :goto_55
    monitor-exit p2
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_51

    throw p0
.end method

.method public onBleCompanionDeviceLost(II)V
    .registers 6

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleCompanionDeviceLost associationId( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    .line 728
    :cond_2a
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    new-instance v0, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceConnected(II)V
    .registers 8

    .line 647
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothCompanionDeviceConnected: associationId( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_2a

    .line 650
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    .line 654
    :cond_2a
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    .line 657
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 659
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ) is reconnected within 10s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    goto :goto_5c

    :catchall_5a
    move-exception p0

    goto :goto_8f

    .line 663
    :cond_5c
    :goto_5c
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothCompanionDeviceConnected: associationId( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    new-instance v3, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v3, p1, v2, v1}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->canStopBleScan()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 670
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 673
    :cond_8d
    monitor-exit p2

    return-void

    :goto_8f
    monitor-exit p2
    :try_end_90
    .catchall {:try_start_2d .. :try_end_90} :catchall_5a

    throw p0
.end method

.method public onBluetoothCompanionDeviceDisconnected(II)V
    .registers 6

    .line 678
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothCompanionDeviceDisconnected associationId( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_2a

    .line 682
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    .line 687
    :cond_2a
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    .line 689
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    new-instance v0, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v0, p1, v2, v1}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBlePresent(I)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 694
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    .line 695
    :try_start_42
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_52

    .line 697
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->scheduleBleDeviceDisappeared(I)V

    return-void

    :catchall_52
    move-exception p0

    .line 696
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    return-void
.end method

.method public final onDeviceLocked(IIILandroid/os/ParcelUuid;)V
    .registers 7

    if-eqz p3, :cond_5f

    const/4 v0, 0x1

    if-eq p3, v0, :cond_43

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5f

    const/4 v0, 0x3

    if-eq p3, v0, :cond_27

    .line 1284
    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1273
    :cond_27
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1274
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 1275
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3f

    .line 1277
    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelUuid;I)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_41

    .line 1282
    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_3d

    throw p0

    .line 1259
    :cond_43
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1260
    :try_start_46
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 1261
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5b

    .line 1263
    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;I)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_5b

    :catchall_59
    move-exception p0

    goto :goto_5d

    .line 1268
    :cond_5b
    :goto_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_59

    throw p0

    .line 1247
    :cond_5f
    const-string v0, "CDM_DevicePresenceProcessor"

    const-string v1, "Current user is not in unlocking or unlocked stage yet. Notify the application when the phone is unlocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1250
    :try_start_69
    new-instance v1, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v1, p1, p3, p4}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 1252
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1254
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1256
    monitor-exit v0

    return-void

    :catchall_85
    move-exception p0

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public final onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V
    .registers 14

    .line 818
    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDevicePresenceEvent() id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], event=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_34

    .line 823
    const-string p0, "CDM_DevicePresenceProcessor"

    const-string p1, "Association doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 827
    :cond_34
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 828
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-virtual {p3}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_86

    .line 832
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v4

    .line 835
    :try_start_4b
    iget-object v7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 836
    const-string v7, "CDM_DevicePresenceProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ) is present, do not need to send the callback with event ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " )."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_82

    :catchall_80
    move-exception p0

    goto :goto_84

    .line 841
    :cond_82
    :goto_82
    monitor-exit v4

    goto :goto_86

    :goto_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_80

    throw p0

    .line 844
    :cond_86
    :goto_86
    invoke-virtual {p3}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v4

    packed-switch v4, :pswitch_data_162

    .line 911
    :pswitch_8d
    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not supported."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 878
    :pswitch_ad
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    .line 880
    const-string p2, "CDM_DevicePresenceProcessor"

    const-string v4, "The association is already NOT present."

    invoke-static {p2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_be
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ce

    .line 884
    const-string p0, "CDM_DevicePresenceProcessor"

    const-string p1, "Package is not bound"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 888
    :cond_ce
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    if-nez p2, :cond_d6

    if-eqz p1, :cond_103

    .line 889
    :cond_d6
    invoke-virtual {p0, v1, v2, v3, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 891
    invoke-virtual {p0, v0, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    .line 893
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 894
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ea
    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_103

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 895
    invoke-virtual {p0, v1, p2, v3, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 898
    invoke-virtual {p0, v1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 899
    invoke-virtual {p0, v1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->unbindAndRemoveExemptionForApp(ILjava/lang/String;)V

    goto :goto_ea

    .line 906
    :cond_103
    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_160

    .line 907
    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->unbindAndRemoveExemptionForApp(ILjava/lang/String;)V

    return-void

    .line 849
    :pswitch_10d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11e

    .line 851
    const-string p2, "CDM_DevicePresenceProcessor"

    const-string v4, "The association is already present."

    invoke-static {p2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_11e
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result p2

    if-eqz p2, :cond_160

    .line 855
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 856
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p2, v1, v2, v6}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    .line 861
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    if-nez p2, :cond_138

    if-eqz p1, :cond_160

    .line 862
    :cond_138
    invoke-virtual {p0, v1, v2, v3, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 864
    invoke-virtual {p0, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    .line 866
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_160

    .line 867
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_160

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 869
    invoke-virtual {p3}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v2

    .line 868
    invoke-virtual {p0, v2, v0, p2, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyAndExemptApp(ILandroid/companion/AssociationInfo;Ljava/lang/String;I)V

    goto :goto_14c

    :cond_160
    return-void

    nop

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_ad
        :pswitch_10d
        :pswitch_ad
        :pswitch_10d
        :pswitch_ad
        :pswitch_8d
        :pswitch_10d
        :pswitch_ad
    .end packed-switch
.end method

.method public onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V
    .registers 9

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevicePresenceEventByUuid ObservableUuid=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], event=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 922
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUserId()I

    move-result v2

    .line 923
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_39

    .line 924
    invoke-virtual {p0, v4, v2, p2, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    .line 928
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 929
    new-instance v3, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v3, v4, p2, v0}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    const/4 v4, 0x2

    .line 932
    const-string v5, "UUID"

    if-eq p2, v4, :cond_8f

    const/4 v4, 0x3

    if-eq p2, v4, :cond_64

    .line 962
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Event: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 944
    :cond_64
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 946
    const-string p0, "This device is already disconnected."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 950
    :cond_72
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p2, v2, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_80

    .line 951
    const-string p0, "Package is not bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 955
    :cond_80
    invoke-virtual {p0, v2, p1, v5, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 957
    invoke-virtual {p0, v2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8e

    .line 958
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    :cond_8e
    return-void

    .line 934
    :cond_8f
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9c

    .line 936
    const-string p2, "This device is already connected."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    const/4 p2, 0x0

    .line 939
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 941
    invoke-virtual {p0, v2, p1, v5, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public onSelfManagedDeviceReporterBinderDied(I)V
    .registers 6

    .line 638
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    new-instance v1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public final processNotifyAssociationRemoved(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;Ljava/lang/String;Z)V
    .registers 6

    .line 1503
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 1504
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Ljava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 1506
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_12

    .line 1507
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    return-void

    .line 1509
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not unbinding package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as other associations are still present."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_DevicePresenceProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processSelfManagedDevicePresenceEvent(ILandroid/companion/DevicePresenceEvent;)V
    .registers 8

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processSelfManagedDevicePresenceEvent() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 1053
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Presence event for non-existent association "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1056
    :cond_3c
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1062
    new-instance v2, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v2, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/companion/AssociationInfo$Builder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 1065
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 1067
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    .line 1068
    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_7a

    .line 1069
    const-string v0, "Setting power mode for Automotive Projection profile."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v0

    if-ne v0, v2, :cond_72

    const/4 v0, 0x1

    goto :goto_73

    :cond_72
    const/4 v0, 0x0

    .line 1071
    :goto_73
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1074
    :cond_7a
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v0

    if-eq v0, v2, :cond_a9

    const/4 v2, 0x5

    if-eq v0, v2, :cond_a9

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_a3

    .line 1079
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported event type for self-managed presence: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {p2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1077
    :cond_a3
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSelfManagedNearByDevices:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void

    .line 1076
    :cond_a9
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void

    .line 1057
    :cond_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Association id=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not self-managed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCurrentConnectedUuidDevice(Landroid/os/ParcelUuid;)V
    .registers 2

    .line 585
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnDevicePresenceEventListener(Ljava/lang/String;)V
    .registers 4

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing DevicePresenceEventListener for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez p0, :cond_3c

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to remove a listener for service \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' that was not registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public final removePendingDevicePresenceEventsByUserId(I)V
    .registers 4

    .line 1344
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1346
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 1348
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public sendDevicePresenceEventOnUnlocked(I)V
    .registers 10

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->getPendingDevicePresenceEventsByUserId(I)Ljava/util/List;

    move-result-object v0

    .line 1294
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5a

    .line 1297
    :cond_b
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 1298
    invoke-virtual {v1, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForUser(I)Ljava/util/List;

    move-result-object v1

    .line 1300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/DevicePresenceEvent;

    .line 1301
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4a

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 1304
    invoke-virtual {v5}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1305
    invoke-virtual {p0, v5, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto :goto_2c

    .line 1309
    :cond_4a
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v3

    .line 1310
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    move-result v2

    .line 1311
    iget-object v5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5, v2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v2

    if-nez v2, :cond_5b

    :goto_5a
    return-void

    :cond_5b
    if-eqz v3, :cond_87

    if-eq v3, v4, :cond_7b

    .line 1328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDM_DevicePresenceProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1325
    :cond_7b
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    .line 1324
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_15

    .line 1321
    :cond_87
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    .line 1320
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBleCompanionDeviceFound(II)V

    goto :goto_15

    .line 1334
    :cond_93
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->removePendingDevicePresenceEventsByUserId(I)V

    return-void
.end method

.method public setOnDevicePresenceEventListener([ILjava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;)V
    .registers 10

    if-eqz p1, :cond_be

    .line 470
    array-length v0, p1

    if-eqz v0, :cond_be

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting DevicePresenceEventListener for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 480
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    new-instance v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed previous listener for service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_4e
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mDevicePresenceListener:Ljava/util/List;

    new-instance v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;

    invoke-direct {v2, p2, p3, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;-><init>(Ljava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPresentDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 493
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_82
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 494
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 496
    :try_start_98
    new-instance v3, Landroid/companion/DevicePresenceEvent;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-interface {p3, v3}, Landroid/companion/IOnDevicePresenceEventListener;->onDevicePresence(Landroid/companion/DevicePresenceEvent;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a1} :catch_a2

    goto :goto_82

    :catch_a2
    move-exception v3

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " died while sending initial presence state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82

    :cond_bd
    return-void

    .line 471
    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "associationIds must be a non-empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final shouldBindPackage(ILjava/lang/String;)Z
    .registers 8

    .line 529
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 530
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 532
    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 534
    invoke-virtual {v2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p1

    .line 536
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 537
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_16

    .line 538
    :cond_2a
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result v2

    if-eqz v2, :cond_16

    return v3

    .line 541
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 542
    invoke-virtual {v1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDeviceUuidPresent(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_39

    return v3

    .line 547
    :cond_50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 548
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 550
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result v0

    if-eqz v0, :cond_54

    return v3

    :cond_77
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldScheduleRebind(ILjava/lang/String;Z)Z
    .registers 12

    .line 1127
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 1128
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 1132
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v5

    .line 1134
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v7

    if-eqz v7, :cond_3c

    if-eqz p3, :cond_35

    .line 1136
    invoke-virtual {p0, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1137
    invoke-virtual {p0, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onSelfManagedDeviceReporterBinderDied(I)V

    .line 1142
    :cond_35
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v4

    goto :goto_43

    .line 1144
    :cond_3c
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-eqz v3, :cond_43

    move v4, v6

    :cond_43
    :goto_43
    move v3, v6

    goto :goto_13

    .line 1150
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 1151
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDeviceUuidPresent(Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_49

    move p0, v6

    goto :goto_62

    :cond_61
    move p0, v2

    :goto_62
    if-eqz v3, :cond_66

    if-nez v4, :cond_68

    :cond_66
    if-eqz p0, :cond_69

    :cond_68
    return v6

    :cond_69
    return v2
.end method

.method public final simulateDeviceAppeared(II)V
    .registers 6

    .line 798
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    new-instance v1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    .line 800
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    return-void
.end method

.method public final simulateDeviceDisappeared(II)V
    .registers 6

    .line 804
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    .line 805
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    new-instance v1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public simulateDeviceEvent(II)V
    .registers 5

    .line 739
    invoke-static {}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerShellOrRoot()V

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceAssociationExists(I)V

    .line 743
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz p2, :cond_47

    const/4 v1, 0x1

    if-eq p2, v1, :cond_43

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3b

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1f

    .line 756
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceDisconnected(II)V

    return-void

    .line 759
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 750
    :cond_3b
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    return-void

    .line 753
    :cond_43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceDisappeared(II)V

    return-void

    .line 747
    :cond_47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceAppeared(II)V

    return-void
.end method

.method public simulateDeviceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V
    .registers 3

    .line 770
    invoke-static {}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerShellOrRoot()V

    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    return-void
.end method

.method public simulateDeviceEventOnDeviceLocked(IIILandroid/os/ParcelUuid;)V
    .registers 5

    .line 782
    invoke-static {}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerShellOrRoot()V

    .line 783
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void
.end method

.method public simulateDeviceEventOnUserUnlocked(I)V
    .registers 2

    .line 793
    invoke-static {}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerShellOrRoot()V

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    return-void
.end method

.method public startObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start observing device=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] for userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 429
    new-instance p3, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {p3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 430
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object p3

    .line 431
    invoke-virtual {p3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object p3

    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void

    .line 424
    :cond_4f
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Landroid/companion/DeviceNotAssociatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not associated with device "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .registers 10

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start observing request=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_DevicePresenceProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v3

    if-eqz v0, :cond_80

    if-eqz p4, :cond_3c

    .line 227
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    .line 231
    :cond_3c
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p1, v0, p3, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(Landroid/os/ParcelUuid;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UUID=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], userId=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is already being observed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_6c
    new-instance p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p1, p3, v0, p2, p4}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->writeObservableUuid(ILcom/android/server/companion/devicepresence/ObservableUuid;)V

    goto/16 :goto_1be

    :cond_80
    const/4 p4, 0x2

    const/4 v0, 0x0

    if-eqz v3, :cond_13f

    .line 241
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByDeviceId(Landroid/content/Context;)V

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register device presence for Device id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p3, v3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_123

    .line 253
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 261
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c4

    .line 264
    :cond_bf
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :goto_c4
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_101

    .line 268
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v3, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 276
    invoke-virtual {v3, v1}, Landroid/companion/AssociationInfo$Builder;->setPackagesToNotify(Ljava/util/List;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 277
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 280
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 281
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBlePresent(I)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 282
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyAndExemptApp(ILandroid/companion/AssociationInfo;Ljava/lang/String;I)V

    .line 285
    :cond_f2
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBtConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 286
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyAndExemptApp(ILandroid/companion/AssociationInfo;Ljava/lang/String;I)V

    goto/16 :goto_1be

    .line 270
    :cond_101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been already observing, no action needed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_11b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "When observing device presence for the own package, use setAssociationId instead, not the device id."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_123
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Association is not found for DeviceId=("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_13f
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p2

    .line 296
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result p3

    if-eqz p3, :cond_16d

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Associated device id=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is already being observed. No-op."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_16d
    new-instance p3, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p3, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p2

    .line 303
    invoke-virtual {p2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p2

    .line 304
    iget-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p3, p2}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result p2

    if-eqz p2, :cond_1be

    .line 308
    const-string p2, "Device is already present. Triggering callback."

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBlePresent(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_19d

    .line 310
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    new-instance p4, Landroid/companion/DevicePresenceEvent;

    invoke-direct {p4, p1, v0, p3}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, p4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    goto :goto_1be

    .line 312
    :cond_19d
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isBtConnected(I)Z

    move-result p2

    if-eqz p2, :cond_1ae

    .line 313
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    new-instance v0, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v0, p1, p4, p3}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    goto :goto_1be

    .line 315
    :cond_1ae
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isSimulatePresent(I)Z

    move-result p2

    if-eqz p2, :cond_1be

    .line 316
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    new-instance p4, Landroid/companion/DevicePresenceEvent;

    invoke-direct {p4, p1, v0, p3}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-virtual {p0, p2, p1, p4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    .line 322
    :cond_1be
    :goto_1be
    const-string p0, "Registered device presence listener."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopObservingDevicePresence(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop observing device=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] for userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 459
    new-instance p3, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {p3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 460
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object p3

    .line 461
    invoke-virtual {p3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object p3

    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return-void

    .line 454
    :cond_4f
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Landroid/companion/DeviceNotAssociatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not associated with device "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .registers 9

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop observing request=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_DevicePresenceProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v3

    if-eqz v0, :cond_76

    if-eqz p4, :cond_3c

    .line 340
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    .line 343
    :cond_3c
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p1, v0, p3, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(Landroid/os/ParcelUuid;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UUID=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], userId=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is already not being observed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_6c
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->removeCurrentConnectedUuidDevice(Landroid/os/ParcelUuid;)V

    goto/16 :goto_14e

    :cond_76
    if-eqz v3, :cond_10d

    .line 352
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByDeviceId(Landroid/content/Context;)V

    .line 354
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unregister device presence for Device id: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p4, p3, v3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;

    move-result-object p4

    if-eqz p4, :cond_f1

    .line 364
    invoke-virtual {p4}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 365
    invoke-virtual {p4}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 366
    new-instance p1, Ljava/util/ArrayList;

    .line 367
    invoke-virtual {p4}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 p1, 0x0

    .line 372
    :cond_c0
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p4}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setPackagesToNotify(Ljava/util/List;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 374
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    goto :goto_14e

    .line 376
    :cond_d3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeviceId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently observed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 359
    :cond_f1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Association is not found for DeviceId=("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_10d
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    move-result p1

    .line 381
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result p4

    if-nez p4, :cond_13b

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Associated device id=["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is already not being observed. No-op."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 391
    :cond_13b
    new-instance p4, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p4, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 393
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 396
    :goto_14e
    const-string p1, "Unregistered device presence listener."

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15e

    .line 400
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    :cond_15e
    return-void
.end method

.method public final unbindAndRemoveExemptionForApp(ILjava/lang/String;)V
    .registers 4

    .line 1497
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    .line 1498
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    return-void
.end method
