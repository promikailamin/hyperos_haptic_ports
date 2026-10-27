.class Lcom/android/server/adb/AdbPairingThread;
.super Ljava/lang/Thread;
.source "AdbPairingThread.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# static fields
.field static final SERVICE_PROTOCOL:Ljava/lang/String; = "adb-tls-pairing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGuid:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mNsdManager:Landroid/net/nsd/NsdManager;

.field public final mPairingCode:Ljava/lang/String;

.field public mPort:I

.field public mServiceName:Ljava/lang/String;

.field public final mServiceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/android/server/adb/AdbPairingThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .line 51
    sget-object v0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "adb-tls-pairing"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_%s._tcp."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbPairingThread;->mServiceType:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/server/adb/AdbPairingThread;->mPairingCode:Ljava/lang/String;

    .line 53
    const-string/jumbo p1, "persist.adb.wifi.guid"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbPairingThread;->mGuid:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/server/adb/AdbPairingThread;->mServiceName:Ljava/lang/String;

    if-eqz p2, :cond_28

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 56
    :cond_28
    iput-object p1, p0, Lcom/android/server/adb/AdbPairingThread;->mServiceName:Ljava/lang/String;

    :cond_2a
    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/server/adb/AdbPairingThread;->mPort:I

    .line 59
    iput-object p3, p0, Lcom/android/server/adb/AdbPairingThread;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo p1, "servicediscovery"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/nsd/NsdManager;

    iput-object p1, p0, Lcom/android/server/adb/AdbPairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 61
    iput-object p4, p0, Lcom/android/server/adb/AdbPairingThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private native native_pairing_cancel()V
.end method

.method private native native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_pairing_wait()Ljava/lang/String;
.end method


# virtual methods
.method public cancelPairing()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/android/server/adb/AdbPairingThread;->native_pairing_cancel()V

    return-void
.end method

.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 6

    .line 126
    sget-object v0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register pairing service(err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/adb/AdbPairingThread;->cancelPairing()V

    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 4

    .line 121
    sget-object p0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered pairing service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 4

    .line 132
    sget-object p0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered pairing service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 5

    .line 137
    sget-object p0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unregister pairing service(err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .registers 5

    .line 67
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 70
    iget v1, p0, Lcom/android/server/adb/AdbPairingThread;->mPort:I

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 71
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/adb/AdbPairingThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/android/server/adb/AdbPairingThread;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    invoke-direct {p0}, Lcom/android/server/adb/AdbPairingThread;->native_pairing_wait()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 80
    sget-object v1, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pairing succeeded key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 82
    :cond_4c
    sget-object v1, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    const-string v2, "Pairing failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_53
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, p0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    .line 88
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/android/server/adb/AdbPairingThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/server/adb/AdbPairingThread;->mGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 103
    sget-object p0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    const-string v0, "adbwifi guid was not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_10
    iget-object v0, p0, Lcom/android/server/adb/AdbPairingThread;->mGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbPairingThread;->mPairingCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/adb/AdbPairingThread;->native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/adb/AdbPairingThread;->mPort:I

    if-gtz v0, :cond_24

    .line 108
    sget-object p0, Lcom/android/server/adb/AdbPairingThread;->TAG:Ljava/lang/String;

    const-string v0, "Unable to start pairing server"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_24
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
