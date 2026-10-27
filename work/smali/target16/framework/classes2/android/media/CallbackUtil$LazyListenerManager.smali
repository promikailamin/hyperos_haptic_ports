.class Landroid/media/CallbackUtil$LazyListenerManager;
.super Ljava/lang/Object;
.source "CallbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CallbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyListenerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    .line 260
    return-void
.end method

.method static synthetic blacklist lambda$addListener$0(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2

    .line 278
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$removeListener$1(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2

    .line 295
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method


# virtual methods
.method blacklist addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/media/CallbackUtil$DispatcherStub;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_3
    iget-object v5, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v8, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;-><init>()V

    .line 275
    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v7, p4

    invoke-static/range {v2 .. v8}, Landroid/media/CallbackUtil;->addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object p1

    .line 279
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 280
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object p1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    .line 281
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_22
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_22

    throw p1
.end method

.method blacklist callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CallbackUtil$CallbackMethod<",
            "TT;>;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 308
    return-void
.end method

.method blacklist removeListener(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v3, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;-><init>()V

    .line 293
    invoke-static {p2, p1, v1, v2, v3}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object p1

    .line 296
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 297
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object p1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method
