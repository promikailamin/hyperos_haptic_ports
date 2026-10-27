.class Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method private constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$AdbManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    return-void
.end method

.method static synthetic lambda$startAdbdForTransport$0(Ljava/lang/Object;ZB)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 165
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbdEnabledForTransport(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method static synthetic lambda$stopAdbdForTransport$1(Ljava/lang/Object;ZB)V
    .registers 4
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbdEnabledForTransport(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method


# virtual methods
.method public getAdbKeysFile()Ljava/io/File;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public isAdbEnabled(B)Z
    .registers 5
    .param p1, "transportType"    # B

    .line 135
    if-nez p1, :cond_9

    .line 136
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbUsbEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    return v0

    .line 137
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbWifiEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    return v0

    .line 140
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAdbEnabled called with unimplemented transport type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyKeyFilesUpdated()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 157
    return-void

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->notifyKeyFilesUpdated()V

    .line 160
    return-void
.end method

.method public registerTransport(Landroid/debug/IAdbTransport;)V
    .registers 4
    .param p1, "transport"    # Landroid/debug/IAdbTransport;

    .line 125
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public startAdbdForTransport(B)V
    .registers 7
    .param p1, "transportType"    # B

    .line 164
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 165
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 164
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public stopAdbdForTransport(B)V
    .registers 7
    .param p1, "transportType"    # B

    .line 170
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 171
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 170
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public unregisterTransport(Landroid/debug/IAdbTransport;)V
    .registers 4
    .param p1, "transport"    # Landroid/debug/IAdbTransport;

    .line 130
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method
