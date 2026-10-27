.class public Lmiui/mqsas/oom/ExceptionHandlerChain;
.super Ljava/lang/Object;
.source "ExceptionHandlerChain.java"


# instance fields
.field private final blacklist handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/mqsas/oom/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/mqsas/oom/ExceptionHandlerChain;->handlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addHandler(Lmiui/mqsas/oom/ExceptionHandler;)V
    .registers 3
    .param p1, "handler"    # Lmiui/mqsas/oom/ExceptionHandler;

    .line 13
    iget-object v0, p0, Lmiui/mqsas/oom/ExceptionHandlerChain;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public blacklist handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 6
    .param p1, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "dumpCategory":I
    iget-object v1, p0, Lmiui/mqsas/oom/ExceptionHandlerChain;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/oom/ExceptionHandler;

    .line 19
    .local v2, "handler":Lmiui/mqsas/oom/ExceptionHandler;
    invoke-interface {v2, p1}, Lmiui/mqsas/oom/ExceptionHandler;->handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v3

    .line 20
    .local v3, "result":I
    if-eqz v3, :cond_1b

    .line 21
    or-int/2addr v0, v3

    .line 22
    goto :goto_1c

    .line 24
    .end local v2    # "handler":Lmiui/mqsas/oom/ExceptionHandler;
    .end local v3    # "result":I
    :cond_1b
    goto :goto_7

    .line 25
    :cond_1c
    :goto_1c
    return v0
.end method
