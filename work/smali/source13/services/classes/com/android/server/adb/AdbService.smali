.class public Lcom/android/server/adb/AdbService;
.super Landroid/debug/IAdbManager$Stub;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbService$AdbConnectionPortListener;,
        Lcom/android/server/adb/AdbService$AdbSettingsObserver;,
        Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;,
        Lcom/android/server/adb/AdbService$Lifecycle;
    }
.end annotation


# static fields
.field static final ADBD:Ljava/lang/String; = "adbd"

.field static final CTL_START:Ljava/lang/String; = "ctl.start"

.field static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AdbService"

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final WIFI_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.adb.tls_server.enable"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/debug/IAdbCallback;",
            ">;"
        }
    .end annotation
.end field

.field mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

.field private mIsAdbUsbEnabled:Z

.field private mIsAdbWifiEnabled:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

.field private final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/debug/IAdbTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAdbUsbEnabled(Lcom/android/server/adb/AdbService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAdbWifiEnabled(Lcom/android/server/adb/AdbService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbroadcastPortInfo(Lcom/android/server/adb/AdbService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService;->broadcastPortInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbService;->setAdbEnabled(ZB)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdbdEnabledForTransport(Lcom/android/server/adb/AdbService;ZB)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbService;->setAdbdEnabledForTransport(ZB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 245
    invoke-direct {p0}, Landroid/debug/IAdbManager$Stub;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;-><init>(Lcom/android/server/adb/AdbService;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 94
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 246
    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 250
    invoke-direct {p0}, Lcom/android/server/adb/AdbService;->registerContentObservers()V

    .line 251
    const-class v0, Landroid/debug/AdbManagerInternal;

    new-instance v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$AdbManagerInternalImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/adb/AdbService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private broadcastPortInfo(I)V
    .registers 5
    .param p1, "port"    # I

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    if-ltz p1, :cond_b

    .line 472
    const/4 v1, 0x4

    goto :goto_c

    .line 473
    :cond_b
    const/4 v1, 0x5

    .line 471
    :goto_c
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v1, "adb_port"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sent port broadcast port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 193
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 194
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 195
    .local v3, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_27

    return v1

    .line 196
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$setAdbEnabled$0(ZBLandroid/debug/IAdbCallback;)V
    .registers 4
    .param p0, "enable"    # Z
    .param p1, "transportType"    # B
    .param p2, "callback"    # Landroid/debug/IAdbCallback;

    .line 561
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/debug/IAdbCallback;->onDebuggingChanged(ZB)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 566
    goto :goto_5

    .line 562
    :catch_4
    move-exception v0

    .line 567
    :goto_5
    return-void
.end method

.method private registerContentObservers()V
    .registers 5

    .line 178
    :try_start_0
    new-instance v0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;-><init>(Lcom/android/server/adb/AdbService;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    .line 179
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    .line 180
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_wifi_enabled"

    .line 183
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    .line 182
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 187
    goto :goto_2b

    .line 185
    :catch_23
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AdbService"

    const-string v2, "Error in registerContentObservers"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method private setAdbEnabled(ZB)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "transportType"    # B

    .line 509
    if-nez p2, :cond_9

    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    if-eq p1, v0, :cond_9

    .line 510
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    goto :goto_51

    .line 511
    :cond_9
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a4

    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-eq p1, v0, :cond_a4

    .line 512
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 513
    const-string/jumbo v0, "persist.adb.tls_server.enable"

    if-eqz p1, :cond_42

    .line 514
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-nez v1, :cond_51

    .line 516
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 519
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->start()V

    goto :goto_51

    .line 523
    :cond_42
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    if-eqz v0, :cond_51

    .line 525
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 534
    :cond_51
    :goto_51
    if-eqz p1, :cond_57

    .line 535
    invoke-direct {p0}, Lcom/android/server/adb/AdbService;->startAdbd()V

    goto :goto_5a

    .line 537
    :cond_57
    invoke-direct {p0}, Lcom/android/server/adb/AdbService;->stopAdbd()V

    .line 540
    :goto_5a
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/debug/IAdbTransport;

    .line 542
    .local v1, "transport":Landroid/debug/IAdbTransport;
    :try_start_70
    invoke-interface {v1, p1, p2}, Landroid/debug/IAdbTransport;->onAdbEnabled(ZB)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_73} :catch_74

    .line 545
    goto :goto_91

    .line 543
    :catch_74
    move-exception v2

    .line 544
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send onAdbEnabled to transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v1    # "transport":Landroid/debug/IAdbTransport;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_91
    goto :goto_64

    .line 548
    :cond_92
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_99

    .line 549
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 555
    :cond_99
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;-><init>(ZB)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 568
    return-void

    .line 531
    :cond_a4
    return-void
.end method

.method private setAdbdEnabledForTransport(ZB)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "transportType"    # B

    .line 490
    if-nez p2, :cond_5

    .line 491
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    goto :goto_a

    .line 492
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 493
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 495
    :cond_a
    :goto_a
    if-eqz p1, :cond_10

    .line 496
    invoke-direct {p0}, Lcom/android/server/adb/AdbService;->startAdbd()V

    goto :goto_13

    .line 498
    :cond_10
    invoke-direct {p0}, Lcom/android/server/adb/AdbService;->stopAdbd()V

    .line 500
    :goto_13
    return-void
.end method

.method private startAdbd()V
    .registers 3

    .line 480
    const-string v0, "ctl.start"

    const-string v1, "adbd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private stopAdbd()V
    .registers 3

    .line 484
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-nez v0, :cond_f

    .line 485
    const-string v0, "ctl.stop"

    const-string v1, "adbd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_f
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 301
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_12

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->allowDebugging(ZLjava/lang/String;)V

    .line 304
    :cond_12
    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "bssid"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 354
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_12

    .line 355
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->allowWirelessDebugging(ZLjava/lang/String;)V

    .line 357
    :cond_12
    return-void
.end method

.method public bootCompleted()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_12

    .line 292
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 293
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 295
    :cond_12
    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_10

    .line 318
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->clearDebuggingKeys()V

    .line 323
    return-void

    .line 320
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear ADB debugging keys, AdbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyDebugging()V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 310
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->denyDebugging()V

    .line 312
    :cond_f
    return-void
.end method

.method public denyWirelessDebugging()V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 363
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->denyWirelessDebugging()V

    .line 365
    :cond_f
    return-void
.end method

.method public disablePairing()V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 416
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->disablePairing()V

    .line 418
    :cond_f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "AdbService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 582
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 583
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 585
    .local v2, "ident":J
    :try_start_16
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 586
    .local v4, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v4, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 588
    const/4 v5, 0x0

    .line 589
    .local v5, "dumpAsProto":Z
    const-string v6, "--proto"

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 590
    const/4 v5, 0x1

    .line 593
    :cond_28
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-eqz v6, :cond_44

    const-string v6, "-a"

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    if-eqz v5, :cond_39

    goto :goto_44

    .line 610
    :cond_39
    const-string v1, "Dump current ADB state"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v1, "  No commands available"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    .line 595
    :cond_44
    :goto_44
    if-eqz v5, :cond_51

    .line 596
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v1, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_61

    .line 598
    .end local v1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_51
    const-string v6, "ADB MANAGER STATE (dumpsys adb):"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v6, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v7, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    move-object v1, v6

    .line 603
    .restart local v1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_61
    iget-object v6, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v6, :cond_6f

    .line 604
    const-string v7, "debugging_manager"

    const-wide v8, 0x10b00000001L

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/android/server/adb/AdbDebuggingManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 608
    :cond_6f
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_72
    .catchall {:try_start_16 .. :try_end_72} :catchall_78

    .line 609
    .end local v1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 614
    .end local v4    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "dumpAsProto":Z
    :goto_73
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    nop

    .line 616
    return-void

    .line 614
    :catchall_78
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    throw v1
.end method

.method public enablePairingByPairingCode()V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 398
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->enablePairingByPairingCode()V

    .line 400
    :cond_f
    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 406
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 407
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_15

    .line 408
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_15
    return-void
.end method

.method public getAdbWirelessPort()I
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_11

    .line 424
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbWirelessPort()I

    move-result v0

    return v0

    .line 427
    :cond_11
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;
    .registers 8

    .line 369
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-nez v0, :cond_d

    .line 371
    return-object v2

    .line 373
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getPairedDevices()Ljava/util/Map;

    move-result-object v0

    .line 374
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/debug/PairDevice;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/debug/FingerprintAndPairDevice;

    .line 375
    .local v1, "ret":[Landroid/debug/FingerprintAndPairDevice;
    const/4 v2, 0x0

    .line 376
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 377
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/debug/PairDevice;>;"
    new-instance v5, Landroid/debug/FingerprintAndPairDevice;

    invoke-direct {v5}, Landroid/debug/FingerprintAndPairDevice;-><init>()V

    aput-object v5, v1, v2

    .line 378
    aget-object v5, v1, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Landroid/debug/FingerprintAndPairDevice;->keyFingerprint:Ljava/lang/String;

    .line 379
    aget-object v5, v1, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/debug/PairDevice;

    iput-object v6, v5, Landroid/debug/FingerprintAndPairDevice;->device:Landroid/debug/PairDevice;

    .line 380
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/debug/PairDevice;>;"
    add-int/lit8 v2, v2, 0x1

    .line 381
    goto :goto_20

    .line 382
    :cond_4b
    return-object v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 573
    new-instance v0, Lcom/android/server/adb/AdbShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbShellCommand;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 574
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 573
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/adb/AdbShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAdbWifiQrSupported()Z
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const-string v2, "AdbService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public isAdbWifiSupported()Z
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const-string v2, "AdbService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.ethernet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 333
    :goto_29
    return v0
.end method

.method public registerCallback(Landroid/debug/IAdbCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/debug/IAdbCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 436
    return-void
.end method

.method public systemReady()V
    .registers 7

    .line 265
    nop

    .line 266
    const-string/jumbo v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbService;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 268
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 269
    const-string/jumbo v0, "persist.sys.test_harness"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v2

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v1

    .line 271
    .local v0, "shouldEnableAdbUsb":Z
    :goto_23
    nop

    .line 272
    const-string/jumbo v3, "persist.adb.tls_server.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 276
    :try_start_35
    iget-object v3, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "adb_enabled"

    .line 277
    if-eqz v0, :cond_3d

    move v5, v1

    goto :goto_3e

    :cond_3d
    move v5, v2

    .line 276
    :goto_3e
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    iget-object v3, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "adb_wifi_enabled"

    .line 279
    iget-boolean v5, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-eqz v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    .line 278
    :goto_4b
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_4e} :catch_4f

    .line 283
    goto :goto_57

    .line 280
    :catch_4f
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "AdbService"

    const-string v3, "ADB_ENABLED is restricted."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_57
    return-void
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .registers 5
    .param p1, "fingerprint"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 389
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_12

    .line 390
    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->unpairDevice(Ljava/lang/String;)V

    .line 392
    :cond_12
    return-void
.end method

.method public unregisterCallback(Landroid/debug/IAdbCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/debug/IAdbCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 444
    return-void
.end method
