.class public Lcom/android/server/wm/ActionChain$Tracker;
.super Ljava/lang/Object;
.source "ActionChain.java"


# instance fields
.field public final mAsyncStarts:Ljava/util/ArrayList;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCurrentThread:J

.field public final mStack:Ljava/util/ArrayList;

.field public final mStats:Lcom/android/server/wm/ActionChain$Stats;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Lcom/android/server/wm/ActionChain$Stats;

    invoke-direct {v0}, Lcom/android/server/wm/ActionChain$Stats;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStats:Lcom/android/server/wm/ActionChain$Stats;

    .line 264
    iput-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public end()V
    .registers 5

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->getThreadBase()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_68

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improperly balanced ActionChain: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActionChain;

    iget-object v3, v3, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_29
    iget-object v3, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActionChain;

    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 333
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionChain"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_68
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public endPartial()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 347
    const-string p0, "TransitionChain"

    const-string v0, "Trying to double-close action-chain"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method public final getThreadBase()I
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 307
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActionChain$AsyncStart;

    iget p0, p0, Lcom/android/server/wm/ActionChain$AsyncStart;->mStackPos:I

    return p0
.end method

.method public isInChain()Z
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 297
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public final makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .registers 9

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->getThreadBase()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 272
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mCurrentThread:J

    goto :goto_21

    .line 273
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActionChain$AsyncStart;

    iget-wide v1, v1, Lcom/android/server/wm/ActionChain$AsyncStart;->mThreadId:J

    .line 274
    :goto_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_bc

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Likely improperly balanced ActionChain: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActionChain;

    iget-object v2, v2, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 278
    :goto_4a
    iget-object v3, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActionChain;

    iget-object v1, v1, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 281
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionChain"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_bc

    .line 284
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActionChain$AsyncStart;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/ActionChain$AsyncStart;->mThreadId:J

    goto :goto_bc

    .line 287
    :cond_b2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mCurrentThread:J

    .line 289
    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/ActionChain;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActionChain;

    iget-object p2, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p1, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActionChain;

    return-object p0
.end method

.method public popAsyncStart()V
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method public pushAsyncStart()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 368
    const-string p0, "TransitionChain"

    const-string v0, "AsyncStart outside of chain!?"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAsyncStarts:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/ActionChain$AsyncStart;

    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActionChain$AsyncStart;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .registers 5

    .line 384
    iget-object v0, p2, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 385
    :goto_8
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p1

    if-eqz v0, :cond_14

    .line 387
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStats:Lcom/android/server/wm/ActionChain$Stats;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActionChain$Stats;->onTransitionCreated(Lcom/android/server/wm/ActionChain;)V

    return-object p1

    .line 389
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStats:Lcom/android/server/wm/ActionChain$Stats;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActionChain$Stats;->onTransitionContinued(Lcom/android/server/wm/ActionChain;)V

    return-object p1
.end method

.method public startDefault(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .registers 3

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startFailsafe(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .registers 3

    const/4 v0, 0x5

    .line 431
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .registers 4

    const/4 v0, 0x4

    .line 419
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    return-object p0
.end method

.method public startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .registers 3

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mStats:Lcom/android/server/wm/ActionChain$Stats;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActionChain$Stats;->onTransitionCombined(Lcom/android/server/wm/ActionChain;)V

    :cond_10
    return-object p1
.end method
