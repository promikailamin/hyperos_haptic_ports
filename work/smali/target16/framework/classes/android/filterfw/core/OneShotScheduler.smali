.class public Landroid/filterfw/core/OneShotScheduler;
.super Landroid/filterfw/core/RoundRobinScheduler;
.source "OneShotScheduler.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OneShotScheduler"


# instance fields
.field private final greylist-max-o mLogVerbose:Z

.field private greylist-max-o scheduled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Landroid/filterfw/core/RoundRobinScheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    .line 42
    const-string p1, "OneShotScheduler"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    .line 43
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 47
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->reset()V

    .line 48
    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 49
    return-void
.end method

.method public greylist-max-o scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 7

    .line 53
    const/4 v0, 0x0

    move-object v1, v0

    .line 56
    :goto_2
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 57
    const-string v3, "OneShotScheduler"

    if-nez v2, :cond_14

    .line 58
    iget-boolean v1, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v1, :cond_13

    const-string v1, "No filters available to run."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_13
    return-object v0

    .line 61
    :cond_14
    iget-object v4, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 62
    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v0

    if-nez v0, :cond_34

    .line 63
    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_34
    iget-boolean v0, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling filter \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_60
    return-object v2

    .line 68
    :cond_61
    if-ne v1, v2, :cond_6e

    .line 69
    nop

    .line 74
    iget-boolean v1, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v1, :cond_6d

    const-string v1, "One pass through graph completed."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_6d
    return-object v0

    .line 72
    :cond_6e
    if-nez v1, :cond_71

    move-object v1, v2

    .line 73
    :cond_71
    goto :goto_2
.end method
