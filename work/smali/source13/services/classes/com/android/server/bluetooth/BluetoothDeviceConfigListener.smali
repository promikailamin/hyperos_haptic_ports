.class public Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceConfigListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceConfigListener"


# instance fields
.field private final mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mLogDebug:Z

.field private final mService:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLogDebug(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->mLogDebug:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)Lcom/android/server/bluetooth/BluetoothManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->mService:Lcom/android/server/bluetooth/BluetoothManagerService;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/bluetooth/BluetoothManagerService;
    .param p2, "logDebug"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$1;-><init>(Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 40
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->mService:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 41
    iput-boolean p2, p0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;->mLogDebug:Z

    .line 42
    new-instance v1, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "bluetooth"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 46
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 44
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
