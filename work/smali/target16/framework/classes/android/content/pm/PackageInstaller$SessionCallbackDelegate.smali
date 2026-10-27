.class Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
.super Landroid/content/pm/IPackageInstallerCallback$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionCallbackDelegate"
.end annotation


# static fields
.field private static final greylist-max-o MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final greylist-max-o MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final greylist-max-o MSG_SESSION_CREATED:I = 0x1

.field private static final greylist-max-o MSG_SESSION_FINISHED:I = 0x5

.field private static final greylist-max-o MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field final greylist-max-o mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1667
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerCallback$Stub;-><init>()V

    .line 1668
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1669
    iput-object p2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1670
    return-void
.end method


# virtual methods
.method public greylist-max-o onSessionActiveChanged(IZ)V
    .registers 6

    .line 1686
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1686
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1687
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1686
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1688
    return-void
.end method

.method public greylist-max-o onSessionBadgingChanged(I)V
    .registers 5

    .line 1680
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1680
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1681
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1680
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1682
    return-void
.end method

.method public greylist-max-o onSessionCreated(I)V
    .registers 5

    .line 1674
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1674
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1675
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1674
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1676
    return-void
.end method

.method public greylist-max-o onSessionFinished(IZ)V
    .registers 6

    .line 1698
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1698
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1699
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1698
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1700
    return-void
.end method

.method public greylist-max-o onSessionProgressChanged(IF)V
    .registers 6

    .line 1692
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1693
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 1692
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1693
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1692
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1694
    return-void
.end method
