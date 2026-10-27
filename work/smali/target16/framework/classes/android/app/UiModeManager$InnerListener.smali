.class Landroid/app/UiModeManager$InnerListener;
.super Landroid/app/IOnProjectionStateChangedListener$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field private final blacklist mResourceManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V
    .registers 4

    .line 1727
    invoke-direct {p0}, Landroid/app/IOnProjectionStateChangedListener$Stub;-><init>()V

    .line 1728
    invoke-virtual {p3, p0, p1, p2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 1729
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    .line 1730
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onProjectionStateChanged(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1735
    iget-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    .line 1736
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 1737
    const-string v1, "UiModeManager"

    if-nez v0, :cond_12

    .line 1738
    const-string p1, "Can\'t execute onProjectionStateChanged, resource manager is gone."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    return-void

    .line 1742
    :cond_12
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    move-result-object v2

    .line 1743
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1744
    if-eqz v2, :cond_39

    if-nez v0, :cond_1f

    goto :goto_39

    .line 1749
    :cond_1f
    new-instance v1, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;-><init>()V

    .line 1752
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1749
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1753
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1749
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1754
    return-void

    .line 1745
    :cond_39
    :goto_39
    const-string p1, "Can\'t execute onProjectionStatechanged, references are null."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    return-void
.end method
