.class public Landroid/hardware/face/BiometricClient;
.super Ljava/lang/Object;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/BiometricClient$ConnectHandler;,
        Landroid/hardware/face/BiometricClient$ServiceCallback;,
        Landroid/hardware/face/BiometricClient$ClientLister;,
        Landroid/hardware/face/BiometricClient$MyHandler;,
        Landroid/hardware/face/BiometricClient$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "BiometricClient"

.field private static final blacklist MSG_GET_VERSION:I = 0x138a

.field private static final blacklist MSG_RELEASE_SERVICE:I = 0x1389

.field private static final blacklist MSG_RELEASE_TIMEOUT:I = 0x5

.field private static final blacklist MSG_REPLAY_TIMEOUT:I = 0x2

.field private static final blacklist MSG_SEND_SERVEICE:I = 0x138b

.field private static final blacklist MSG_START_SERVICE:I = 0x1388

.field private static final blacklist SERVICE_READY_TIMEOUT:I = 0x2

.field private static final blacklist SERVICE_STATUS_CONNECTED:I = 0x2

.field private static final blacklist SERVICE_STATUS_CONNECTING:I = 0x1

.field private static final blacklist SERVICE_STATUS_CONNECTING_ERROR:I = 0xc

.field private static final blacklist SERVICE_STATUS_CONNECTING_TIME_OUT:I = 0xb

.field private static final blacklist SERVICE_STATUS_DISCONNECT:I = 0x5

.field private static final blacklist SERVICE_STATUS_DISCONNECTING:I = 0x3

.field private static final blacklist SERVICE_STATUS_NONE:I = 0x0

.field private static final blacklist SERVICE_STATUS_UNBIND:I = 0x4


# instance fields
.field private final blacklist accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mCallbackThread:Landroid/os/HandlerThread;

.field private blacklist mClientContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientLister:Landroid/hardware/face/BiometricClient$ClientLister;

.field private blacklist mConnectHandler:Landroid/hardware/face/BiometricClient$ConnectHandler;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMainThread:Landroid/os/HandlerThread;

.field private blacklist mReplyMessager:Landroid/os/Messenger;

.field private blacklist mSendMessager:Landroid/os/Messenger;

.field private blacklist mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

.field private blacklist mServiceConnectStatus:I

.field private blacklist mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

.field private blacklist mTagInfo:Ljava/lang/String;

.field private blacklist replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private blacklist serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientLister(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ClientLister;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/BiometricClient;->mClientLister:Landroid/hardware/face/BiometricClient$ClientLister;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnectStatus(Landroid/hardware/face/BiometricClient;)I
    .registers 1

    iget p0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreplayReadyLatch_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandle_getServiceVersion(Landroid/hardware/face/BiometricClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/BiometricClient;->handle_getServiceVersion(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandle_releaseService(Landroid/hardware/face/BiometricClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/BiometricClient;->handle_releaseService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandle_sendService(Landroid/hardware/face/BiometricClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/BiometricClient;->handle_sendService(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandle_startService(Landroid/hardware/face/BiometricClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/face/BiometricClient;->handle_startService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceBind(Landroid/hardware/face/BiometricClient;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/BiometricClient;->onServiceBind(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceUnbind(Landroid/hardware/face/BiometricClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/BiometricClient;->onServiceUnbind(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 56
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 60
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    .line 61
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    .line 63
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

    .line 64
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    .line 66
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mConnectHandler:Landroid/hardware/face/BiometricClient$ConnectHandler;

    .line 67
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    .line 77
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mClientLister:Landroid/hardware/face/BiometricClient$ClientLister;

    .line 79
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    .line 80
    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricMainThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/hardware/face/BiometricClient$MyHandler;

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/face/BiometricClient$MyHandler;-><init>(Landroid/hardware/face/BiometricClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricClientCBThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/hardware/face/BiometricClient$ConnectHandler;

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/face/BiometricClient$ConnectHandler;-><init>(Landroid/hardware/face/BiometricClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mConnectHandler:Landroid/hardware/face/BiometricClient$ConnectHandler;

    .line 113
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mConnectHandler:Landroid/hardware/face/BiometricClient$ConnectHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    .line 114
    invoke-static {}, Landroid/miui/BiometricConnect;->syncDebugLog()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":BiometricClient MainThread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CallbackThread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private blacklist handle_getServiceVersion(I)V
    .registers 9
    .param p1, "module_id"    # I

    .line 434
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 435
    iget v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    const-string v1, ":"

    const-string v2, "BiometricClient"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_30

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_getServiceVersion error: service not Connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 438
    return-void

    .line 442
    :cond_30
    :try_start_30
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":handle_getServiceVersion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_50
    const/4 v0, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 445
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 446
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 447
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_6e} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6e} :catch_bc

    .line 449
    :try_start_6e
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_getServiceVersion - ERROR: timeout!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_96} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_96} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_96} :catch_bc

    .line 455
    :cond_96
    goto :goto_105

    .line 452
    :catch_97
    move-exception v3

    .line 453
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":handle_getServiceVersion - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_bb} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_bb} :catch_bc

    goto :goto_105

    .line 459
    .end local v0    # "msg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :catch_bc
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_getServiceVersion - Exception ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_106

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e1
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_getServiceVersion - RemoteException ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 462
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_105
    nop

    .line 464
    :goto_106
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_126

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_getServiceVersion end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_126
    return-void
.end method

.method private blacklist handle_releaseService()V
    .registers 6

    .line 397
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 399
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, "BiometricClient"

    if-nez v0, :cond_2f

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_releaseService mClientInfoList is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    return-void

    .line 405
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":handle_releaseService mServiceConnectStatus:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x4

    iget v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    if-eq v0, v3, :cond_60

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/face/BiometricClient;->onServiceUnbind(Z)V

    .line 411
    :cond_60
    :try_start_60
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_6d} :catch_ba
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_6d} :catch_94
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6d} :catch_6e

    goto :goto_df

    .line 416
    :catch_6e
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_releaseService Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_94
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_releaseService NullPointerException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_df

    .line 412
    :catch_ba
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_releaseService IllegalArgumentException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_df
    nop

    .line 420
    :goto_e0
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

    .line 422
    invoke-direct {p0}, Landroid/hardware/face/BiometricClient;->release()V

    .line 423
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 425
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_10e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_releaseService end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_10e
    return-void
.end method

.method private blacklist handle_sendService(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 473
    const-string v0, ":handle_sendService - ERROR: "

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 474
    iget v1, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    const-string v2, ":"

    const-string v3, "BiometricClient"

    const/4 v4, 0x2

    if-eq v1, v4, :cond_32

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_sendService error: service not Connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    return-void

    .line 480
    :cond_32
    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":handle_sendService"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 483
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 484
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 485
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_68} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_68} :catch_c6

    .line 487
    :try_start_68
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":handle_sendService - ERROR: timeout! cmd:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " arg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_a2} :catch_a3
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_a2} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a2} :catch_c6

    .line 493
    :cond_a2
    goto :goto_10d

    .line 490
    :catch_a3
    move-exception v1

    .line 491
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_c5} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c5} :catch_c6

    goto :goto_10d

    .line 498
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_c6
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":handle_sendService - Exception ERROR: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10e

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_eb
    move-exception v1

    .line 496
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 501
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_10d
    nop

    .line 503
    :goto_10e
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_12e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":handle_sendService end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_12e
    return-void
.end method

.method private blacklist handle_startService()V
    .registers 8

    .line 352
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ":"

    const-string v2, "BiometricClient"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":handle_startService"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_24
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 357
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/face/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.biometric.BiometricService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.biometric"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    new-instance v3, Landroid/hardware/face/BiometricClient$MyServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/hardware/face/BiometricClient$MyServiceConnection;-><init>(Landroid/hardware/face/BiometricClient;Landroid/hardware/face/BiometricClient$MyServiceConnection-IA;)V

    iput-object v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

    .line 365
    :try_start_47
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mServiceConnection:Landroid/hardware/face/BiometricClient$MyServiceConnection;

    const/16 v5, 0x41

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_57

    .line 369
    goto :goto_7b

    .line 366
    :catch_57
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":handle_startService - bindService Exception ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7b
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 372
    sget-boolean v3, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v3, :cond_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_startService await..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_a0
    :try_start_a0
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":handle_startService - ERROR: tmeout!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    const/16 v3, 0xb

    iput v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 379
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d6} :catch_d7

    .line 387
    :cond_d6
    goto :goto_109

    .line 381
    :catch_d7
    move-exception v3

    .line 382
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":handle_startService - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    const/16 v4, 0xc

    iput v4, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 386
    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_109
    sget-boolean v3, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v3, :cond_129

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":handle_startService ok"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_129
    return-void
.end method

.method private blacklist onServiceBind(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":onServiceBind begin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 247
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    if-nez v0, :cond_4b

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceBind mTagInfo is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    return-void

    .line 253
    :cond_4b
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 254
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/hardware/face/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    .line 255
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 257
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    if-eqz v0, :cond_68

    .line 258
    const-string v0, "mServiceCallback yes"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    invoke-interface {v0}, Landroid/hardware/face/BiometricClient$ServiceCallback;->onBiometricServiceConnected()V

    .line 262
    :cond_68
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceBind end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private blacklist onServiceUnbind(Z)V
    .registers 7
    .param p1, "lock"    # Z

    .line 270
    if-eqz p1, :cond_7

    .line 271
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :cond_7
    iget v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    const-string v1, ":"

    const-string v2, "BiometricClient"

    const/4 v3, 0x4

    if-eq v3, v0, :cond_47

    const/4 v4, 0x5

    if-ne v4, v0, :cond_14

    goto :goto_47

    .line 284
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceUnbind mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput v3, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 287
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    if-eqz v0, :cond_3f

    .line 288
    invoke-interface {v0}, Landroid/hardware/face/BiometricClient$ServiceCallback;->onBiometricServiceDisconnected()V

    .line 291
    :cond_3f
    if-eqz p1, :cond_46

    .line 292
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    :cond_46
    return-void

    .line 277
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceUnbind ignore mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p1, :cond_70

    .line 279
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    :cond_70
    return-void
.end method

.method private blacklist release()V
    .registers 3

    .line 120
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 121
    return-void

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 127
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 130
    :cond_39
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 131
    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    .line 134
    :cond_40
    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mConnectHandler:Landroid/hardware/face/BiometricClient$ConnectHandler;

    .line 135
    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    .line 137
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5e

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 139
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 141
    :cond_57
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 142
    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    .line 145
    :cond_5e
    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method private blacklist removeAllMessage()V
    .registers 6

    .line 199
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 200
    return-void

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":removeAllMessage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v0, 0x1388

    .local v0, "arg":I
    :goto_27
    const/16 v3, 0x138b

    if-gt v0, v3, :cond_5c

    .line 206
    :goto_2b
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":removeAllMessage arg\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2b

    .line 205
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 211
    .end local v0    # "arg":I
    :cond_5c
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":finalize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Landroid/hardware/face/BiometricClient;->release()V

    .line 74
    return-void
.end method

.method public blacklist getServiceVersion(ILandroid/hardware/face/BiometricClient$ClientLister;)V
    .registers 5
    .param p1, "module_id"    # I
    .param p2, "l"    # Landroid/hardware/face/BiometricClient$ClientLister;

    .line 234
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":getServiceVersion module_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_28
    iput-object p2, p0, Landroid/hardware/face/BiometricClient;->mClientLister:Landroid/hardware/face/BiometricClient$ClientLister;

    .line 236
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 240
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void
.end method

.method public blacklist releaseService(Landroid/hardware/face/BiometricClient$ServiceCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/face/BiometricClient$ServiceCallback;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":releaseService  mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Landroid/hardware/face/BiometricClient;->removeAllMessage()V

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/face/BiometricClient;->sendCommand(I)V

    .line 223
    iget-object v0, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method

.method public blacklist sendBundle(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 335
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Send MSG: sendBundle key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_28
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 339
    const-string v1, "tag"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 342
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138b

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 343
    .local v1, "msg_cmd":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method public blacklist sendCommand(I)V
    .registers 3
    .param p1, "cmd"    # I

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/BiometricClient;->sendCommand(II)V

    .line 303
    return-void
.end method

.method public blacklist sendCommand(II)V
    .registers 9
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .line 313
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ":Send MSG: sendCommand cmd:"

    const-string v2, ":"

    const-string v3, "BiometricClient"

    if-eqz v0, :cond_32

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",arg:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_32
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 317
    .local v0, "msg":Landroid/os/Message;
    const/16 v4, 0x3e9

    iput v4, v0, Landroid/os/Message;->what:I

    .line 318
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 319
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 320
    iget-object v4, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x138b

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 321
    .local v4, "msg_cmd":Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    sget-boolean v5, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v5, :cond_75

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_75
    return-void
.end method

.method public blacklist startService(Landroid/hardware/face/BiometricClient$ServiceCallback;)V
    .registers 6
    .param p1, "cb"    # Landroid/hardware/face/BiometricClient$ServiceCallback;

    .line 185
    iput-object p1, p0, Landroid/hardware/face/BiometricClient;->mServiceCallback:Landroid/hardware/face/BiometricClient$ServiceCallback;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/face/BiometricClient;->mServiceConnectStatus:I

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/face/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":startService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Landroid/hardware/face/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/hardware/face/BiometricClient;->mTagInfo:Ljava/lang/String;

    const-string v3, "info"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/hardware/face/BiometricClient;->sendBundle(ILandroid/os/Bundle;)V

    .line 196
    return-void
.end method
