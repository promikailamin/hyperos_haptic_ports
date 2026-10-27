.class Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairingThread"
.end annotation


# static fields
.field static final SERVICE_PROTOCOL:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field private mGuid:Ljava/lang/String;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mPairingCode:Ljava/lang/String;

.field private mPort:I

.field private mPublicKey:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "pairingCode"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 225
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "adb-tls-pairing"

    aput-object v2, v0, v1

    const-string v1, "_%s._tcp."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "persist.adb.wifi.guid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 229
    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 230
    :cond_2e
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 232
    :cond_32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 233
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 234
    return-void
.end method

.method private native native_pairing_cancel()V
.end method

.method private native native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_pairing_wait()Z
.end method


# virtual methods
.method public cancelPairing()V
    .registers 1

    .line 281
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_cancel()V

    .line 282
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 291
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register pairing service(err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    .line 294
    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 287
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 299
    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 303
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister pairing service(err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public run()V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 239
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adbwifi guid was not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_12
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 243
    if-lez v0, :cond_83

    const v1, 0xffff

    if-le v0, v1, :cond_24

    goto :goto_83

    .line 249
    :cond_24
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 250
    .local v0, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 252
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 253
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_wait()Z

    move-result v2

    .line 270
    .local v2, "paired":Z
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v3, p0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 272
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_6a

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    :goto_6b
    const-string/jumbo v5, "publicKey"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v4, v4, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v5, 0x14

    invoke-static {v4, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 277
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v5, v5, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void

    .line 244
    .end local v0    # "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "paired":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "message":Landroid/os/Message;
    :cond_83
    :goto_83
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to start pairing server"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method
