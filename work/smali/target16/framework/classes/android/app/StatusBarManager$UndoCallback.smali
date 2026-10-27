.class final Landroid/app/StatusBarManager$UndoCallback;
.super Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UndoCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/Runnable;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3

    .line 1690
    invoke-direct {p0}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;-><init>()V

    .line 1691
    iput-object p1, p0, Landroid/app/StatusBarManager$UndoCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1692
    iput-object p2, p0, Landroid/app/StatusBarManager$UndoCallback;->mCallback:Ljava/lang/Runnable;

    .line 1693
    return-void
.end method


# virtual methods
.method public blacklist onUndoTriggered()V
    .registers 5

    .line 1697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1699
    :try_start_4
    iget-object v2, p0, Landroid/app/StatusBarManager$UndoCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/StatusBarManager$UndoCallback;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 1701
    invoke-static {v0, v1}, Landroid/app/StatusBarManager$UndoCallback;->restoreCallingIdentity(J)V

    .line 1702
    nop

    .line 1703
    return-void

    .line 1701
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/app/StatusBarManager$UndoCallback;->restoreCallingIdentity(J)V

    .line 1702
    throw v2
.end method
