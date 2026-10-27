.class Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnProjectionStateChangedListenerResourceManager"
.end annotation


# instance fields
.field private final blacklist mExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOuterListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    .line 1765
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/UiModeManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;
    .registers 3

    .line 1783
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method blacklist getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .registers 3

    .line 1779
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    return-object p1
.end method

.method blacklist put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 5

    .line 1769
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object p3, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    return-void
.end method

.method blacklist remove(Landroid/app/UiModeManager$InnerListener;)V
    .registers 3

    .line 1774
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    return-void
.end method
