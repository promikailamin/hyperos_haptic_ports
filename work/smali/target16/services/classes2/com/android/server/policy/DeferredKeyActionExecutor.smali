.class public Lcom/android/server/policy/DeferredKeyActionExecutor;
.super Ljava/lang/Object;
.source "DeferredKeyActionExecutor.java"


# instance fields
.field public final mBuffers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public cancelQueuedAction(I)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    if-eqz p0, :cond_d

    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->clear()V

    :cond_d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Deferred key action executor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_31

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v0, 0x0

    .line 112
    :goto_32
    iget-object v1, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_48
    return-void
.end method

.method public final getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;
    .registers 7

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    if-eqz v0, :cond_14

    .line 93
    invoke-virtual {v0}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->getDownTime()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    return-object v0

    .line 100
    :cond_14
    :goto_14
    new-instance v0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;-><init>(IJ)V

    .line 101
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public queueKeyAction(IJLjava/lang/Runnable;)V
    .registers 5

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/DeferredKeyActionExecutor;->getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->addAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActionsExecutable(IJ)V
    .registers 4

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/DeferredKeyActionExecutor;->getActionsBufferWithLazyCleanUp(IJ)Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->setExecutable()V

    return-void
.end method
