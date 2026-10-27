.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_c

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 46
    :cond_c
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 47
    return-void
.end method

.method public declared-synchronized start()V
    .registers 4

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 53
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_19

    .line 54
    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorMessage(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorEvent(Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 57
    .end local p0    # "this":Lcom/android/server/ServiceThread;
    :cond_19
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
