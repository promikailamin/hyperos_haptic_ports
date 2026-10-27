.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorConstantState;,
        Landroid/animation/Animator$AnimatorPauseListener;,
        Landroid/animation/Animator$AnimatorListener;
    }
.end annotation


# static fields
.field public static final whitelist DURATION_INFINITE:J = -0x1L

.field private static blacklist sBackgroundPauseDelay:J


# instance fields
.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mConstantState:Landroid/animation/Animator$AnimatorConstantState;

.field greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPaused:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmConstantState(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    const-wide/16 v0, 0x2710

    sput-wide v0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 59
    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return-void
.end method

.method public static blacklist getBackgroundPauseDelay()J
    .registers 2

    .line 92
    sget-wide v0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    return-wide v0
.end method

.method public static blacklist setAnimatorPausingEnabled(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 106
    invoke-static {p0}, Landroid/animation/AnimationHandler;->setAnimatorPausingEnabled(Z)V

    .line 107
    xor-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Landroid/animation/AnimationHandler;->setOverrideAnimatorPausingSystemProperty(Z)V

    .line 108
    return-void
.end method

.method public static blacklist setBackgroundPauseDelay(J)V
    .registers 2
    .param p0, "value"    # J

    .line 81
    sput-wide p0, Landroid/animation/Animator;->sBackgroundPauseDelay:J

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 309
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 312
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public whitelist addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 348
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 351
    :cond_b
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method greylist-max-o animateBasedOnPlayTime(JJZ)V
    .registers 6
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 564
    return-void
.end method

.method public greylist-max-o appendChangingConfigurations(I)V
    .registers 3
    .param p1, "configs"    # I

    .line 421
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 422
    return-void
.end method

.method public greylist-max-o canReverse()Z
    .registers 2

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist cancel()V
    .registers 1

    .line 136
    return-void
.end method

.method public whitelist clone()Landroid/animation/Animator;
    .registers 4

    .line 445
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 446
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 449
    :cond_13
    iget-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_20} :catch_21

    .line 452
    :cond_20
    return-object v0

    .line 453
    .end local v0    # "anim":Landroid/animation/Animator;
    :catch_21
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/animation/Animator$AnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/Animator$AnimatorConstantState;-><init>(Landroid/animation/Animator;)V

    return-object v0
.end method

.method public whitelist end()V
    .registers 1

    .line 147
    return-void
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 2

    .line 397
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    return v0
.end method

.method public abstract whitelist getDuration()J
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract whitelist getStartDelay()J
.end method

.method public whitelist getTotalDuration()J
    .registers 6

    .line 248
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    .line 249
    .local v0, "duration":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 250
    return-wide v2

    .line 252
    :cond_b
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPaused()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    return v0
.end method

.method public abstract whitelist isRunning()Z
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 299
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist pause()V
    .registers 5

    .line 160
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-nez v0, :cond_2b

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 162
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 163
    nop

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 165
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 166
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 171
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeAllListeners()V
    .registers 3

    .line 376
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 380
    :cond_a
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 384
    :cond_13
    return-void
.end method

.method public whitelist removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 322
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 323
    return-void

    .line 325
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 329
    :cond_13
    return-void
.end method

.method public whitelist removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 361
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 362
    return-void

    .line 364
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 368
    :cond_13
    return-void
.end method

.method public whitelist resume()V
    .registers 5

    .line 184
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v0, :cond_25

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 186
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 187
    nop

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 189
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_25

    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 195
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public greylist-max-r reverse()V
    .registers 3

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .registers 2
    .param p1, "mayRunAsync"    # Z

    .line 692
    return-void
.end method

.method public greylist-max-o setChangingConfigurations(I)V
    .registers 2
    .param p1, "configs"    # I

    .line 411
    iput p1, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    .line 412
    return-void
.end method

.method public abstract whitelist setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract whitelist setStartDelay(J)V
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public whitelist setupEndValues()V
    .registers 1

    .line 480
    return-void
.end method

.method public whitelist setupStartValues()V
    .registers 1

    .line 468
    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 2
    .param p1, "inReverse"    # Z

    .line 547
    return-void
.end method

.method public whitelist start()V
    .registers 1

    .line 124
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 2
    .param p1, "inReverse"    # Z

    .line 532
    if-eqz p1, :cond_6

    .line 533
    invoke-virtual {p0}, Landroid/animation/Animator;->reverse()V

    goto :goto_9

    .line 535
    :cond_6
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 537
    :goto_9
    return-void
.end method
