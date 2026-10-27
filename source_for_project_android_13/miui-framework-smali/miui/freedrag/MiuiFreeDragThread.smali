.class public Lmiui/freedrag/MiuiFreeDragThread;
.super Landroid/os/HandlerThread;
.source "MiuiFreeDragThread.java"


# static fields
.field private static blacklist sInstance:Lmiui/freedrag/MiuiFreeDragThread;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 13
    const-string v0, "MiuiFreeDragThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/freedrag/MiuiFreeDragThread;
    .registers 2

    const-class v0, Lmiui/freedrag/MiuiFreeDragThread;

    monitor-enter v0

    .line 17
    :try_start_3
    sget-object v1, Lmiui/freedrag/MiuiFreeDragThread;->sInstance:Lmiui/freedrag/MiuiFreeDragThread;

    if-nez v1, :cond_11

    .line 18
    new-instance v1, Lmiui/freedrag/MiuiFreeDragThread;

    invoke-direct {v1}, Lmiui/freedrag/MiuiFreeDragThread;-><init>()V

    sput-object v1, Lmiui/freedrag/MiuiFreeDragThread;->sInstance:Lmiui/freedrag/MiuiFreeDragThread;

    .line 19
    invoke-virtual {v1}, Lmiui/freedrag/MiuiFreeDragThread;->start()V

    .line 21
    :cond_11
    sget-object v1, Lmiui/freedrag/MiuiFreeDragThread;->sInstance:Lmiui/freedrag/MiuiFreeDragThread;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 16
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method
