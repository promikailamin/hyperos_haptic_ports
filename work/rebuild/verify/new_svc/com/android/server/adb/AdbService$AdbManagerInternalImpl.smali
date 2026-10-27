.class public Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "AdbService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    return-void
.end method


# virtual methods
.method public getAdbKeysFile()Ljava/io/File;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public isAdbEnabled(B)Z
    .registers 4

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1f

    .line 127
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdbEnabled called with unimplemented transport type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AdbTransportType.VSOCK is not yet supported here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_27
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbWifiEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result p0

    return p0

    .line 120
    :cond_2e
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbUsbEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result p0

    return p0
.end method

.method public notifyKeyFilesUpdated()V
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->notifyKeyFilesUpdated()V

    return-void
.end method

.method public registerTransport(Landroid/debug/IAdbTransport;)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterTransport(Landroid/debug/IAdbTransport;)V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
