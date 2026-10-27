.class public Lcom/android/server/backup/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;,
        Lcom/android/server/backup/transport/TransportConnection$State;,
        Lcom/android/server/backup/transport/TransportConnection$Transition;
    }
.end annotation


# static fields
.field private static final LOG_BUFFER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "TransportConnection"


# instance fields
.field private final mBindIntent:Landroid/content/Intent;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mCreatorLogString:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportConnectionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogBufferLock:Ljava/lang/Object;

.field private final mPrefixForLog:Ljava/lang/String;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;

.field private volatile mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

.field private final mTransportComponent:Landroid/content/ComponentName;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$monBindingDied(Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->onBindingDied()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monServiceConnected(Lcom/android/server/backup/transport/TransportConnection;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monServiceDisconnected(Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->onServiceDisconnected()V

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transportStats"    # Lcom/android/server/backup/transport/TransportStats;
    .param p4, "bindIntent"    # Landroid/content/Intent;
    .param p5, "transportComponent"    # Landroid/content/ComponentName;
    .param p6, "identifier"    # Ljava/lang/String;
    .param p7, "caller"    # Ljava/lang/String;

    .line 119
    new-instance v8, Landroid/os/Handler;

    .line 127
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/transport/TransportConnection;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 128
    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transportStats"    # Lcom/android/server/backup/transport/TransportStats;
    .param p4, "bindIntent"    # Landroid/content/Intent;
    .param p5, "transportComponent"    # Landroid/content/ComponentName;
    .param p6, "identifier"    # Ljava/lang/String;
    .param p7, "caller"    # Ljava/lang/String;
    .param p8, "listenerHandler"    # Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 98
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 101
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 104
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 140
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 141
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 143
    iput-object p5, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 144
    iput-object p4, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    .line 145
    iput-object p6, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    .line 146
    iput-object p7, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    .line 147
    iput-object p8, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    .line 148
    new-instance v1, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor-IA;)V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 151
    invoke-virtual {p5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*\\."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "classNameForLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    .line 154
    const-string/jumbo v2, "markAsDisposed"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private checkState(ZLjava/lang/String;)V
    .registers 4
    .param p1, "assertion"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 592
    if-nez p1, :cond_6

    .line 593
    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 595
    :cond_6
    return-void
.end method

.method private checkStateIntegrityLocked()V
    .registers 5

    .line 566
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_76

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    goto :goto_75

    .line 581
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = CONNECTED"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    const-string v0, "Transport expected to be non-null when state = CONNECTED"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 585
    goto :goto_75

    .line 576
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    const-string v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 579
    goto :goto_75

    .line 568
    :pswitch_47
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_58

    move v0, v1

    goto :goto_59

    :cond_58
    move v0, v2

    :goto_59
    const-string v3, "Transport expected to be null when state = UNUSABLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 572
    :pswitch_5e
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v3, "Unexpected listeners when state = IDLE"

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    const-string v0, "Transport expected to be null when state = IDLE"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 574
    nop

    .line 589
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_47
        :pswitch_5e
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method

.method static synthetic lambda$connect$0(Ljava/util/concurrent/CompletableFuture;Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V
    .registers 3
    .param p0, "transportFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "requestedTransport"    # Lcom/android/server/backup/transport/BackupTransportClient;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportConnection;

    .line 338
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private log(ILjava/lang/String;)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransportConnection"

    invoke-static {p1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {v1, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransportConnection"

    invoke-static {p1, v1, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"    # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;
    .param p3, "caller"    # Ljava/lang/String;

    .line 507
    if-eqz p2, :cond_5

    const-string v0, "BackupTransportClient"

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "null"

    .line 508
    .local v0, "transportString":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] transport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method private notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 6
    .param p1, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;

    .line 514
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 515
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnectionListener;

    .line 516
    .local v2, "listener":Lcom/android/server/backup/transport/TransportConnectionListener;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    .local v3, "caller":Ljava/lang/String;
    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 518
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;>;"
    .end local v2    # "listener":Lcom/android/server/backup/transport/TransportConnectionListener;
    .end local v3    # "caller":Ljava/lang/String;
    goto :goto_a

    .line 519
    :cond_26
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 520
    return-void
.end method

.method private onBindingDied()V
    .registers 6

    .line 475
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 478
    const-string v1, "Binding died: client UNUSABLE"

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v1, :cond_15

    .line 480
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    .line 483
    :cond_15
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_46

    goto :goto_40

    .line 496
    :pswitch_1d
    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_40

    .line 491
    :pswitch_28
    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 493
    invoke-direct {p0, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 494
    goto :goto_40

    .line 487
    :pswitch_36
    const-string v1, "Unexpected state transition IDLE => UNUSABLE"

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 488
    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 489
    goto :goto_40

    .line 485
    :pswitch_3f
    nop

    .line 500
    :goto_40
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_36
        :pswitch_28
        :pswitch_1d
    .end packed-switch
.end method

.method private onServiceConnected(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 431
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 432
    .local v0, "transportBinder":Lcom/android/internal/backup/IBackupTransport;
    new-instance v1, Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-direct {v1, v0}, Lcom/android/server/backup/transport/BackupTransportClient;-><init>(Lcom/android/internal/backup/IBackupTransport;)V

    .line 433
    .local v1, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 434
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 436
    iget v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    if-eqz v3, :cond_1f

    .line 437
    const-string v3, "Transport connected"

    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 438
    invoke-direct {p0, v4, v1}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 439
    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 441
    :cond_1f
    monitor-exit v2

    .line 442
    return-void

    .line 441
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v3
.end method

.method private onServiceDisconnected()V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "Service disconnected: client UNUSABLE"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v1, :cond_12

    .line 453
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    .line 455
    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_3d

    .line 458
    :try_start_17
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3d

    .line 466
    goto :goto_3b

    .line 459
    :catch_1f
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x5

    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to unbind onServiceDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 465
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 467
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3b
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private onStateTransition(II)V
    .registers 13
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 531
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "transport":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->transitionThroughState(III)I

    move-result v2

    .line 533
    .local v2, "bound":I
    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/backup/transport/TransportConnection;->transitionThroughState(III)I

    move-result v3

    .line 534
    .local v3, "connected":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_28

    .line 535
    if-ne v2, v5, :cond_18

    move v6, v5

    goto :goto_19

    :cond_18
    move v6, v4

    .line 536
    .local v6, "value":I
    :goto_19
    const/16 v7, 0xb22

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 538
    .end local v6    # "value":I
    :cond_28
    if-eqz v3, :cond_3e

    .line 539
    if-ne v3, v5, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v4

    .line 540
    .restart local v6    # "value":I
    :goto_2f
    const/16 v7, 0xb23

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 542
    .end local v6    # "value":I
    :cond_3e
    return-void
.end method

.method private saveLogEntry(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 623
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 624
    .local v0, "time":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_25
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_39

    .line 627
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 629
    :cond_39
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 630
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 525
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/transport/TransportConnection;->onStateTransition(II)V

    .line 526
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 527
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 528
    return-void
.end method

.method private stateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 598
    packed-switch p1, :pswitch_data_2a

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 606
    :pswitch_1d
    const-string v0, "CONNECTED"

    return-object v0

    .line 604
    :pswitch_20
    const-string v0, "BOUND_AND_CONNECTING"

    return-object v0

    .line 602
    :pswitch_23
    const-string v0, "IDLE"

    return-object v0

    .line 600
    :pswitch_26
    const-string v0, "UNUSABLE"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private transitionThroughState(III)I
    .registers 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "stateReference"    # I

    .line 555
    if-ge p1, p3, :cond_6

    if-gt p3, p2, :cond_6

    .line 556
    const/4 v0, 0x1

    return v0

    .line 558
    :cond_6
    if-lt p1, p3, :cond_c

    if-le p3, p2, :cond_c

    .line 559
    const/4 v0, -0x1

    return v0

    .line 561
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 16
    .param p1, "caller"    # Ljava/lang/String;

    .line 319
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t call connect() on main thread"

    .line 318
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 322
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v2, 0x3

    if-eqz v0, :cond_1a

    .line 323
    const-string v1, "Sync connect: reusing transport"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0

    .line 328
    :cond_1a
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 329
    :try_start_1d
    iget v4, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    .line 330
    const/4 v1, 0x5

    const-string v2, "Sync connect: UNUSABLE client"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    monitor-exit v3

    return-object v5

    .line 333
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_92

    .line 335
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 336
    .local v3, "transportFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/backup/transport/BackupTransportClient;>;"
    new-instance v4, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 340
    .local v4, "requestListener":Lcom/android/server/backup/transport/TransportConnectionListener;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 341
    .local v6, "requestTime":J
    const-string v8, "Sync connect: calling async"

    invoke-direct {p0, v2, p1, v8}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, v4, p1}, Lcom/android/server/backup/transport/TransportConnection;->connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V

    .line 345
    :try_start_41
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/transport/BackupTransportClient;

    move-object v0, v8

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 347
    .local v8, "time":J
    iget-object v10, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget-object v11, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v8, v9}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    .line 348
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Connect took %d ms"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v1, v12

    invoke-static {v10, v11, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_68} :catch_69
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_68} :catch_69

    .line 349
    return-object v0

    .line 350
    .end local v8    # "time":J
    :catch_69
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "error":Ljava/lang/String;
    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while waiting for transport: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v5

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "transportFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Lcom/android/server/backup/transport/BackupTransportClient;>;"
    .end local v4    # "requestListener":Lcom/android/server/backup/transport/TransportConnectionListener;
    .end local v6    # "requestTime":J
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1
.end method

.method public connectAsync(Lcom/android/server/backup/transport/TransportConnectionListener;Ljava/lang/String;)V
    .registers 11
    .param p1, "listener"    # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "caller"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 214
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_66

    goto :goto_61

    .line 248
    :pswitch_e
    const-string v1, "Async connect: reusing transport"

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_61

    .line 241
    :pswitch_19
    const-string v1, "Async connect: already connecting, adding listener"

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    goto :goto_61

    .line 220
    :pswitch_24
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 225
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 221
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 226
    .local v1, "hasBound":Z
    if-eqz v1, :cond_46

    .line 230
    const-string v4, "Async connect: service bound, connecting"

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 232
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 234
    :cond_46
    const/4 v3, 0x6

    const-string v4, "Async connect: bindService returned false"

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 239
    goto :goto_61

    .line 216
    .end local v1    # "hasBound":Z
    :pswitch_57
    const/4 v1, 0x5

    const-string v3, "Async connect: UNUSABLE client"

    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 218
    nop

    .line 252
    :goto_61
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_57
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method public connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 372
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    if-eqz v0, :cond_7

    .line 376
    return-object v0

    .line 373
    :cond_7
    const/4 v1, 0x6

    const-string v2, "Transport connection failed"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 411
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_33

    .line 412
    const-string v1, "TransportClient.finalize()"

    .line 413
    .local v1, "callerLogString":Ljava/lang/String;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dangling TransportClient created in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] being GC\'ed. Left bound, unbinding..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_35

    .line 419
    :try_start_2e
    invoke-virtual {p0, v1}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 425
    goto :goto_33

    .line 420
    :catch_32
    move-exception v2

    .line 427
    .end local v1    # "callerLogString":Ljava/lang/String;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 391
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    if-eqz v0, :cond_5

    .line 395
    return-object v0

    .line 392
    :cond_5
    const/4 v1, 0x6

    const-string v2, "Transport not connected"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v1, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v1
.end method

.method getLogBuffer()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 636
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getTransportComponent()Landroid/content/ComponentName;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method synthetic lambda$notifyListener$1$com-android-server-backup-transport-TransportConnection(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/backup/transport/TransportConnectionListener;
    .param p2, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;

    .line 509
    invoke-interface {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnectionListener;->onTransportConnectionResult(Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method

.method public markAsDisposed()V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "Can\'t mark as disposed if still bound"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportClient{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 401
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    return-object v0
.end method

.method public unbind(Ljava/lang/String;)V
    .registers 6
    .param p1, "caller"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 265
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind requested (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_50

    goto :goto_4b

    .line 277
    :pswitch_31
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4b

    .line 271
    :pswitch_3c
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    invoke-direct {p0, v3}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 275
    goto :goto_4b

    .line 269
    :pswitch_4a
    nop

    .line 281
    :goto_4b
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_3c
        :pswitch_31
    .end packed-switch
.end method
