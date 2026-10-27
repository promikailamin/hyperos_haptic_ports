.class public final Landroid/hardware/serial/SerialManager;
.super Ljava/lang/Object;
.source "SerialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/SerialManager$SerialPortServiceListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/serial/SerialPortListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/hardware/serial/ISerialManager;

.field private blacklist mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/serial/SerialManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/serial/SerialManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/hardware/serial/SerialManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/serial/SerialManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/serial/SerialManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/hardware/serial/SerialManager;)Landroid/hardware/serial/ISerialManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/serial/ISerialManager;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/serial/SerialManager;->mLock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/hardware/serial/SerialManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist getSerialPorts()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/serial/SerialPort;",
            ">;"
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    invoke-interface {v0}, Landroid/hardware/serial/ISerialManager;->getSerialPorts()Ljava/util/List;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    const/4 v2, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 70
    new-instance v3, Landroid/hardware/serial/SerialPort;

    iget-object v4, p0, Landroid/hardware/serial/SerialManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/serial/SerialPortInfo;

    iget-object v6, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/serial/SerialPort;-><init>(Landroid/content/Context;Landroid/hardware/serial/SerialPortInfo;Landroid/hardware/serial/ISerialManager;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 72
    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v0

    .line 73
    :catch_30
    move-exception v0

    .line 74
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist registerSerialPortListener(Ljava/util/concurrent/Executor;Landroid/hardware/serial/SerialPortListener;)V
    .registers 6

    .line 85
    iget-object v0, p0, Landroid/hardware/serial/SerialManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;

    if-nez v1, :cond_1d

    .line 87
    new-instance v1, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;-><init>(Landroid/hardware/serial/SerialManager;Landroid/hardware/serial/SerialManager-IA;)V

    iput-object v1, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3f

    .line 89
    :try_start_f
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    iget-object v2, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;

    invoke-interface {v1, v2}, Landroid/hardware/serial/ISerialManager;->registerSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17
    .catchall {:try_start_f .. :try_end_16} :catchall_3f

    .line 92
    goto :goto_1d

    .line 90
    :catch_17
    move-exception p1

    .line 91
    :try_start_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 94
    :cond_1d
    :goto_1d
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_28

    .line 95
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    .line 97
    :cond_28
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 100
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 98
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Listener has already been registered."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public blacklist unregisterSerialPortListener(Landroid/hardware/serial/SerialPortListener;)V
    .registers 5

    .line 108
    iget-object v0, p0, Landroid/hardware/serial/SerialManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    .line 110
    monitor-exit v0

    return-void

    .line 112
    :cond_9
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Landroid/hardware/serial/SerialManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 114
    iget-object p1, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_32

    if-eqz p1, :cond_30

    .line 116
    const/4 p1, 0x0

    :try_start_1b
    iget-object v1, p0, Landroid/hardware/serial/SerialManager;->mService:Landroid/hardware/serial/ISerialManager;

    iget-object v2, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;

    invoke-interface {v1, v2}, Landroid/hardware/serial/ISerialManager;->unregisterSerialPortListener(Landroid/hardware/serial/ISerialPortListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_27
    .catchall {:try_start_1b .. :try_end_22} :catchall_25

    .line 123
    :try_start_22
    iput-object p1, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_32

    .line 124
    goto :goto_30

    .line 123
    :catchall_25
    move-exception v1

    goto :goto_2d

    .line 117
    :catch_27
    move-exception v1

    .line 118
    :try_start_28
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_25

    .line 123
    :goto_2d
    :try_start_2d
    iput-object p1, p0, Landroid/hardware/serial/SerialManager;->mServiceListener:Landroid/hardware/serial/SerialManager$SerialPortServiceListener;

    .line 124
    throw v1

    .line 127
    :cond_30
    :goto_30
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw p1
.end method
