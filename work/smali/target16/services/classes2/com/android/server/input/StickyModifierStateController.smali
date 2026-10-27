.class public final Lcom/android/server/input/StickyModifierStateController;
.super Ljava/lang/Object;
.source "StickyModifierStateController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mStickyModifierStateListenerRecords:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$monStickyModifierStateListenerDied(Lcom/android/server/input/StickyModifierStateController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/StickyModifierStateController;->onStickyModifierStateListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-string v0, "ModifierStateController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public notifyStickyModifierStateChanged(II)V
    .registers 6

    .line 47
    sget-boolean v0, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 48
    const-string v0, "ModifierStateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sticky modifier state changed, modifierState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockedModifierState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_22
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 53
    :goto_26
    :try_start_26
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 54
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->notifyStickyModifierStateChanged(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :catchall_3c
    move-exception p0

    goto :goto_40

    .line 57
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_3c

    throw p0
.end method

.method public final onStickyModifierStateListenerDied(I)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;I)V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    .line 69
    new-instance v1, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;-><init>(Lcom/android/server/input/StickyModifierStateController;ILandroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1f

    .line 72
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_21
    .catchall {:try_start_10 .. :try_end_18} :catchall_1f

    .line 76
    :try_start_18
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_30

    :catch_21
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 66
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_1f

    throw p0
.end method

.method public unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;I)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    if-eqz v1, :cond_34

    .line 90
    iget-object v2, v1, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v2}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_2c

    .line 94
    iget-object p1, v1, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 95
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_3c

    .line 91
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_2a

    throw p0
.end method
