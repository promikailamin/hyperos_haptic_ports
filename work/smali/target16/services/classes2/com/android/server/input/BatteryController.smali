.class public final Lcom/android/server/input/BatteryController;
.super Ljava/lang/Object;
.source "BatteryController.java"


# static fields
.field public static final DEBUG:Z

.field static final POLLING_PERIOD_MILLIS:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "BatteryController"

.field static final USI_BATTERY_VALIDITY_DURATION_MILLIS:J = 0x36ee80L


# instance fields
.field public mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

.field public final mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceMonitors:Landroid/util/ArrayMap;

.field public final mHandlePollEventCallback:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field public mIsInteractive:Z

.field public mIsPolling:Z

.field public final mListenerRecords:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public static synthetic $r8$lambda$8D5bOF2yXHmJbX30VIhNcd9306c(Lcom/android/server/input/BatteryController$State;Ljava/lang/Integer;Lcom/android/server/input/BatteryController$ListenerRecord;)V
    .registers 4

    .line 198
    iget-object p1, p2, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    iget v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 199
    invoke-static {p2, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$CQleDsNEE174VGVNEyfPVkU2Ab0(Lcom/android/server/input/BatteryController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController;->handlePollEvent()V

    return-void
.end method

.method public static synthetic $r8$lambda$OH_whUZINAnrsAjHUF7NrVOQfsg(Landroid/bluetooth/BluetoothDevice;Lcom/android/server/input/BatteryController$DeviceMonitor;)Z
    .registers 2

    .line 401
    invoke-static {p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/input/BatteryController$DeviceMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cnxGh4zKgvrsQ3_5r00_WgS_whE(Ljava/lang/String;Lcom/android/server/input/BatteryController$DeviceMonitor;)Z
    .registers 3

    .line 389
    invoke-static {p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/input/BatteryController$DeviceMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/input/BatteryController$DeviceMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kHxElP6jGL2CI2h9-PGs0oeXj6g(Lcom/android/server/input/BatteryController;JLjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/BatteryController;->handleBluetoothBatteryLevelChange(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n6_ejU_h9YIm1A7iCB3zx5esPWg(Landroid/view/InputDevice;)Ljava/lang/Boolean;
    .registers 1

    .line 239
    invoke-virtual {p0}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uXL3tRDSIIozxS3fEjf8MUOs07c(Lcom/android/server/input/BatteryController$DeviceMonitor;)Z
    .registers 1

    .line 536
    invoke-static {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/input/BatteryController$DeviceMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$wwmhpf6g1js9PibUpk1hcymg6EQ(JLjava/lang/Integer;Lcom/android/server/input/BatteryController$DeviceMonitor;)V
    .registers 4

    .line 369
    invoke-virtual {p3, p0, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onPoll(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBatteryManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceMonitors(Lcom/android/server/input/BatteryController;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/BatteryController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/input/BatteryController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/NativeInputManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUEventManager(Lcom/android/server/input/BatteryController;)Lcom/android/server/input/UEventManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetBluetoothDevice(Lcom/android/server/input/BatteryController;I)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInputDeviceName(Lcom/android/server/input/BatteryController;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBluetoothMetadataChange(Lcom/android/server/input/BatteryController;Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/BatteryController;->handleBluetoothMetadataChange(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListeningProcessDied(Lcom/android/server/input/BatteryController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->handleListeningProcessDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMonitorTimeout(Lcom/android/server/input/BatteryController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->handleMonitorTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUEventNotification(Lcom/android/server/input/BatteryController;IJ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/BatteryController;->handleUEventNotification(IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasBattery(Lcom/android/server/input/BatteryController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->hasBattery(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUsiDevice(Lcom/android/server/input/BatteryController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->isUsiDevice(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllListenersForDevice(Lcom/android/server/input/BatteryController;Lcom/android/server/input/BatteryController$State;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->notifyAllListenersForDevice(Lcom/android/server/input/BatteryController$State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryBatteryStateFromNative(Lcom/android/server/input/BatteryController;IJZ)Lcom/android/server/input/BatteryController$State;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBluetoothBatteryMonitoring(Lcom/android/server/input/BatteryController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    const-class v0, Lcom/android/server/input/BatteryController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V
    .registers 11

    .line 107
    new-instance v5, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-direct {v5, p1, p3}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/BatteryController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V
    .registers 7

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    .line 474
    new-instance v0, Lcom/android/server/input/BatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$1;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 114
    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p4, p0, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    .line 118
    iput-object p5, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    return-void
.end method

.method public static anyOf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Z
    .registers 2

    .line 1094
    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 1099
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1100
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1101
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_4
    const-class v0, Landroid/bluetooth/BluetoothManager;

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 254
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V
    .registers 5

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputDeviceBatteryListener;->onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 186
    sget-object v1, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :goto_e
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 189
    sget-object v0, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notified battery listener from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of state of deviceId "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 443
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 444
    iget-object p1, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 445
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: Polling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Interactive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " battery listeners"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 452
    :goto_65
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8f

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :catchall_8d
    move-exception p0

    goto :goto_e4

    .line 455
    :cond_8f
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Monitors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " monitors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 459
    :goto_b4
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_dc

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 462
    :cond_dc
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 463
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 464
    monitor-exit p1

    return-void

    :goto_e4
    monitor-exit p1
    :try_end_e5
    .catchall {:try_start_8 .. :try_end_e5} :catchall_8d

    throw p0
.end method

.method public getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .registers 7

    .line 411
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 413
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez v3, :cond_21

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->hasBattery(I)Z

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_2a

    .line 419
    :cond_21
    invoke-virtual {v3, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onPoll(J)V

    .line 420
    invoke-virtual {v3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 421
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_1f

    throw p0
.end method

.method public final getBluetoothDevice(I)Landroid/bluetooth/BluetoothDevice;
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 244
    invoke-static {v0, p0}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceMonitorOrThrowLocked(I)Lcom/android/server/input/BatteryController$DeviceMonitor;
    .registers 4

    .line 260
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maps are out of sync: Cannot find device state for deviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getInputDeviceName(I)Ljava/lang/String;
    .registers 4

    .line 230
    new-instance v0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "<none>"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final handleBluetoothBatteryLevelChange(JLjava/lang/String;I)V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-eqz p0, :cond_18

    .line 392
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onBluetoothBatteryChanged(JI)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 394
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public final handleBluetoothMetadataChange(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 7

    .line 399
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 401
    invoke-static {p0, v1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-eqz p0, :cond_1c

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 404
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onBluetoothMetadataChanged(JI[B)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 406
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public final handleListeningProcessDied(I)V
    .registers 7

    .line 338
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-nez v1, :cond_15

    .line 341
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_50

    .line 343
    :cond_15
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_34

    .line 344
    sget-object v2, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing battery listener for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because the process died"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_34
    iget-object p1, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/BatteryController;->unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    goto :goto_3a

    .line 350
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_13

    throw p0
.end method

.method public final handleMonitorTimeout(I)V
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_15

    .line 378
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1e

    .line 380
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 381
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onTimeout(J)V

    .line 382
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_13

    throw p0
.end method

.method public final handlePollEvent()V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    if-nez v1, :cond_b

    .line 366
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_24

    .line 368
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 369
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda7;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_9

    throw p0
.end method

.method public final handleUEventNotification(IJ)V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_15

    .line 357
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1a

    .line 359
    :cond_15
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onUEvent(J)V

    .line 360
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_13

    throw p0
.end method

.method public final hasBattery(I)Z
    .registers 4

    .line 234
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final hasRegisteredListenerForDeviceLocked(I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 329
    :goto_2
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 330
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/BatteryController$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public final isUsiDevice(I)Z
    .registers 4

    .line 238
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public monitor()V
    .registers 2

    .line 469
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 470
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    .line 471
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final notifyAllListenersForDevice(Lcom/android/server/input/BatteryController$State;)V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying all listeners of battery state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_2c

    .line 197
    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/BatteryController$State;)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 202
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_1e

    throw p0
.end method

.method public notifyStylusGestureStarted(IJ)V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_15

    .line 435
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1a

    .line 438
    :cond_15
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onStylusGestureStarted(J)V

    .line 439
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_13

    throw p0
.end method

.method public onInteractiveChanged(Z)V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    const/4 p1, 0x0

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    .line 428
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5

    .line 223
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 225
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_17

    return-object p2

    .line 226
    :cond_17
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;
    .registers 12

    .line 526
    new-instance v0, Lcom/android/server/input/BatteryController$State;

    if-eqz p4, :cond_c

    .line 530
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryStatus(I)I

    move-result v1

    :goto_a
    move v5, v1

    goto :goto_e

    :cond_c
    const/4 v1, 0x1

    goto :goto_a

    :goto_e
    if-eqz p4, :cond_1f

    .line 531
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryCapacity(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    :goto_1a
    move v6, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    goto :goto_22

    :cond_1f
    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_1a

    :goto_22
    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    return-object v0
.end method

.method public registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;I)V
    .registers 9

    .line 137
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-nez v1, :cond_50

    .line 141
    new-instance v1, Lcom/android/server/input/BatteryController$ListenerRecord;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/input/BatteryController$ListenerRecord;-><init>(Lcom/android/server/input/BatteryController;ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_44

    .line 143
    :try_start_16
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_47
    .catchall {:try_start_16 .. :try_end_20} :catchall_44

    .line 148
    :try_start_20
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery listener added for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catchall_44
    move-exception p0

    goto/16 :goto_ec

    .line 145
    :catch_47
    sget-object p0, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    const-string p1, "Client died before battery listener could be registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v0

    return-void

    .line 152
    :cond_50
    :goto_50
    iget-object v2, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne v2, p2, :cond_d5

    .line 158
    iget-object p2, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 164
    iget-object p2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p2, :cond_87

    .line 167
    new-instance p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    invoke-direct {p2, p0, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    .line 168
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    .line 172
    :cond_87
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_a9

    .line 173
    sget-object v2, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery listener for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is monitoring deviceId "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    .line 178
    invoke-virtual {p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    .line 179
    monitor-exit v0

    return-void

    .line 159
    :cond_b6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The battery listener for pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is already monitoring deviceId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_d5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot register a new battery listener when there is already another registered listener for pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :goto_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_20 .. :try_end_ed} :catchall_44

    throw p0
.end method

.method public systemRunning()V
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 124
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 125
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_29

    aget v3, v0, v2

    .line 126
    iget-object v4, p0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-interface {v4, v3}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_29
    return-void
.end method

.method public unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;I)V
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-eqz v1, :cond_5e

    .line 280
    iget-object v2, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne v2, p2, :cond_47

    .line 287
    iget-object p2, v1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 293
    invoke-virtual {p0, v1, p1}, Lcom/android/server/input/BatteryController;->unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_75

    .line 288
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot unregister battery callback: The device is not being monitored for deviceId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot unregister battery callback: The listener is not the one that is registered for pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot unregister battery callback: No listener registered for pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_2e

    throw p0
.end method

.method public final unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V
    .registers 6

    .line 299
    iget v0, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 301
    iget-object v1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 308
    invoke-virtual {p0, p2}, Lcom/android/server/input/BatteryController;->hasRegisteredListenerForDeviceLocked(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 310
    invoke-virtual {p0, p2}, Lcom/android/server/input/BatteryController;->getDeviceMonitorOrThrowLocked(I)Lcom/android/server/input/BatteryController$DeviceMonitor;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 312
    invoke-virtual {v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onMonitorDestroy()V

    .line 313
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_2a
    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_61

    .line 319
    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 320
    iget-object p1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz p1, :cond_61

    sget-object p1, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery listener removed for pid "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_61
    invoke-virtual {p0, v1}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    return-void

    .line 302
    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot unregister battery callback: The deviceId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not being monitored by pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateBluetoothBatteryMonitoring()V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/input/BatteryController;->anyOf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 538
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    if-nez v1, :cond_48

    .line 539
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_22

    sget-object v1, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    const-string v2, "Registering bluetooth battery listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_4a

    .line 540
    :cond_22
    :goto_22
    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 541
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    invoke-interface {p0, v1}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V

    goto :goto_48

    .line 543
    :cond_2f
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    if-eqz v1, :cond_48

    .line 545
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/android/server/input/BatteryController;->TAG:Ljava/lang/String;

    const-string v2, "Unregistering bluetooth battery listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_3e
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    invoke-interface {v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V

    const/4 v1, 0x0

    .line 547
    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 549
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_20

    throw p0
.end method

.method public final updatePollingLocked(Z)V
    .registers 5

    .line 207
    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/input/BatteryController;->anyOf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_29

    .line 214
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 219
    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_23

    const-wide/16 v1, 0x2710

    goto :goto_25

    :cond_23
    const-wide/16 v1, 0x0

    :goto_25
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_29
    :goto_29
    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    .line 210
    iget-object p1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
