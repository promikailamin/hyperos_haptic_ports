.class public Lcom/android/server/connectivity/Vpn$Dependencies;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$resolve$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 423
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "mtu"    # I

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .registers 2

    .line 334
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method public getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 338
    invoke-static {p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getStateFile()Ljava/io/File;
    .registers 3

    .line 330
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/vpn/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isCallerSystem()Z
    .registers 3

    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInterfacePresent(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z
    .registers 4
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "iface"    # Ljava/lang/String;

    .line 436
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 322
    invoke-static {p1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServiceStopped(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 326
    invoke-static {p1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public jniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .registers 4
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "mtu"    # I

    .line 450
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result v0

    return v0
.end method

.method public jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .registers 4
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "fd"    # I

    .line 457
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "interfaze"    # Ljava/lang/String;
    .param p3, "addresses"    # Ljava/lang/String;

    .line 464
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 11
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 391
    const-string v0, "Vpn"

    :try_start_2
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 392
    :catch_7
    move-exception v1

    .line 396
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    .line 398
    .local v7, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_d
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v2

    .line 399
    .local v2, "resolver":Landroid/net/DnsResolver;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 400
    .local v1, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/net/InetAddress;>;"
    new-instance v8, Lcom/android/server/connectivity/Vpn$Dependencies$1;

    invoke-direct {v8, p0, v1, p1}, Lcom/android/server/connectivity/Vpn$Dependencies$1;-><init>(Lcom/android/server/connectivity/Vpn$Dependencies;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    .line 422
    .local v8, "cb":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 424
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;
    :try_end_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_2c} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_2c} :catch_2d

    return-object v3

    .line 428
    .end local v1    # "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/net/InetAddress;>;"
    .end local v2    # "resolver":Landroid/net/DnsResolver;
    .end local v8    # "cb":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    :catch_2d
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Legacy VPN was interrupted while resolving the endpoint"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    invoke-virtual {v7}, Landroid/os/CancellationSignal;->cancel()V

    .line 431
    throw v1

    .line 425
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_37
    move-exception v1

    .line 426
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot resolve VPN endpoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    throw v1
.end method

.method public sendArgumentsToDaemon(Ljava/lang/String;Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$RetryScheduler;)V
    .registers 15
    .param p1, "daemon"    # Ljava/lang/String;
    .param p2, "socket"    # Landroid/net/LocalSocket;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "retryScheduler"    # Lcom/android/server/connectivity/Vpn$RetryScheduler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 344
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 350
    .local v0, "address":Landroid/net/LocalSocketAddress;
    :goto_7
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {p2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_5e

    .line 351
    nop

    .line 357
    const/16 v2, 0x1f4

    invoke-virtual {p2, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 359
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 360
    .local v2, "out":Ljava/io/OutputStream;
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_43

    aget-object v6, p3, v5

    .line 361
    .local v6, "argument":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 362
    .local v7, "bytes":[B
    array-length v8, v7

    const v9, 0xffff

    if-ge v8, v9, :cond_3b

    .line 365
    array-length v8, v7

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 366
    array-length v8, v7

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 367
    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-interface {p4, v4}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    .line 360
    .end local v6    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 363
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v7    # "bytes":[B
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    .end local v6    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    :cond_43
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 371
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 374
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 377
    .local v3, "in":Ljava/io/InputStream;
    :goto_4f
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_59

    const/4 v5, -0x1

    if-ne v4, v5, :cond_58

    .line 378
    nop

    .line 385
    return-void

    .line 382
    :cond_58
    goto :goto_5a

    .line 380
    :catch_59
    move-exception v4

    .line 383
    :goto_5a
    invoke-interface {p4, v1}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_4f

    .line 352
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_5e
    move-exception v2

    .line 355
    invoke-interface {p4, v1}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_7
.end method

.method public setBlocking(Ljava/io/FileDescriptor;Z)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "blocking"    # Z

    .line 472
    :try_start_0
    invoke-static {p1, p2}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 476
    nop

    .line 477
    return-void

    .line 473
    :catch_5
    move-exception v0

    .line 474
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 314
    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public stopService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 318
    invoke-static {p1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 319
    return-void
.end method
