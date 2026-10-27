.class public Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# instance fields
.field final mPendingTransactions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static shouldDispatchLaunchActivityItemIndependently(Ljava/lang/String;I)Z
    .registers 4

    const-wide/32 v0, 0x1352f516

    .line 249
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 247
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public dispatchPendingTransaction(Landroid/app/IApplicationThread;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/servertransaction/ClientTransaction;

    if-eqz p1, :cond_11

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    :cond_11
    return-void
.end method

.method public dispatchPendingTransactions()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 164
    :cond_9
    const-string v0, "clientTransactionsDispatched"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_27

    .line 167
    iget-object v4, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ClientTransaction;

    .line 168
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 170
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 171
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;
    .registers 4

    .line 198
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v1, :cond_f

    return-object v1

    .line 205
    :cond_f
    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z
    .registers 4

    if-nez p2, :cond_b

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    .line 222
    :cond_b
    :goto_b
    iget-object p2, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p0

    return p0
.end method

.method public onLayoutContinued()V
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransactions()V

    :cond_9
    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z
    .registers 5

    .line 74
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()Landroid/os/RemoteException;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object p1

    .line 76
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deliver transaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\ntransaction="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientLifecycleManager"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 3

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    const/4 p2, 0x0

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z

    move-result p0

    return p0
.end method

.method public scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 4

    .line 93
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p0

    return p0
.end method

.method public varargs scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 7

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 151
    array-length v0, p3

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    .line 153
    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 156
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z

    move-result p0

    return p0
.end method

.method public varargs scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 4

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p0

    return p0
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public final shouldDispatchPendingTransactionsImmediately()Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 239
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 240
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isTraversalScheduled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result p0

    if-nez p0, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
