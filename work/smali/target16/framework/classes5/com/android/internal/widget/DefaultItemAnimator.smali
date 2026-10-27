.class public Lcom/android/internal/widget/DefaultItemAnimator;
.super Lcom/android/internal/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;,
        Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static blacklist sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field blacklist mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/SimpleItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 200
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/internal/widget/DefaultItemAnimator$4;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 219
    return-void
.end method

.method private blacklist endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_22

    .line 402
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 403
    invoke-direct {p0, v1, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 404
    iget-object v2, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 409
    :cond_22
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 3

    .line 412
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 415
    :cond_9
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_12

    .line 416
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 418
    :cond_12
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 420
    nop

    .line 421
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_b

    .line 422
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    goto :goto_12

    .line 423
    :cond_b
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_28

    .line 424
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 425
    move v3, v1

    .line 429
    :goto_12
    iget-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 431
    iget-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    invoke-virtual {p0, p2, v3}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 433
    return v1

    .line 427
    :cond_28
    return v3
.end method

.method private blacklist resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 523
    sget-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 524
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    :cond_f
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 528
    return-void
.end method


# virtual methods
.method public blacklist animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 224
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 p1, 0x1

    return p1
.end method

.method blacklist animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 230
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator$5;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 234
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    return-void
.end method

.method public blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14

    .line 322
    if-ne p1, p2, :cond_9

    .line 325
    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lcom/android/internal/widget/DefaultItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 327
    :cond_9
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p1

    move-object p1, p0

    iget-object v1, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 328
    iget-object v2, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 329
    iget-object v3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 330
    invoke-direct {p0, p3}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 331
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 332
    sub-int v5, v0, p5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    .line 334
    iget-object v6, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 335
    iget-object v1, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-object v1, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 337
    if-eqz p2, :cond_56

    .line 339
    invoke-direct {p0, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 340
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 341
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 344
    :cond_56
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    move-object p0, p1

    move-object p1, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    move-object p1, p0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 p1, 0x1

    return p1
.end method

.method blacklist animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 8

    .line 349
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 350
    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 351
    :goto_9
    iget-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 352
    if-eqz v2, :cond_f

    iget-object v1, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 353
    :cond_f
    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 354
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 356
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget v4, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v5, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    iget v4, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v5, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 359
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/internal/widget/DefaultItemAnimator$7;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/android/internal/widget/DefaultItemAnimator$7;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 377
    :cond_47
    if-eqz v1, :cond_76

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 379
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 381
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator$8;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 398
    :cond_76
    return-void
.end method

.method public blacklist animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 13

    .line 258
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 259
    int-to-float p2, p2

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v3, p2

    .line 260
    int-to-float p2, p3

    iget-object p3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v4, p2

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 262
    sub-int p2, p4, v3

    .line 263
    sub-int p3, p5, v4

    .line 264
    if-nez p2, :cond_24

    if-nez p3, :cond_24

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 266
    const/4 p1, 0x0

    return p1

    .line 268
    :cond_24
    if-eqz p2, :cond_2b

    .line 269
    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    :cond_2b
    if-eqz p3, :cond_32

    .line 272
    neg-int p2, p3

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 274
    :cond_32
    iget-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const/4 p1, 0x1

    return p1
.end method

.method blacklist animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .registers 13

    .line 279
    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 280
    sub-int v3, p4, p2

    .line 281
    sub-int v5, p5, p3

    .line 282
    const/4 p2, 0x0

    if-eqz v3, :cond_10

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 285
    :cond_10
    if-eqz v5, :cond_19

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 291
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 292
    iget-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/DefaultItemAnimator$6;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    return-void
.end method

.method public blacklist animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 666
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method blacklist cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 642
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 643
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 645
    :cond_1a
    return-void
.end method

.method blacklist dispatchFinishedWhenDone()V
    .registers 2

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 554
    :cond_9
    return-void
.end method

.method public blacklist endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 9

    .line 438
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 443
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 444
    iget-object v3, v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_2e

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 451
    :cond_31
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 452
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_46

    .line 453
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 456
    :cond_46
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 457
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 461
    :cond_54
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5c
    if-ltz v1, :cond_77

    .line 462
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 463
    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 464
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 465
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 468
    :cond_77
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7f
    if-ltz v1, :cond_b9

    .line 469
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_8f
    if-ltz v5, :cond_b6

    .line 471
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 472
    iget-object v6, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_b3

    .line 473
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 474
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 476
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 478
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 470
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    .line 468
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 484
    :cond_b9
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c1
    if-ltz v1, :cond_e5

    .line 485
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 486
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 487
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 490
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 497
    :cond_e5
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 520
    return-void
.end method

.method public blacklist endAnimations()V
    .registers 8

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_2a

    .line 560
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 561
    iget-object v3, v2, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 562
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 563
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 564
    iget-object v1, v2, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 565
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 567
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    add-int/lit8 v0, v0, -0x1

    :goto_32
    if-ltz v0, :cond_47

    .line 569
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 570
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 571
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 573
    :cond_47
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    add-int/lit8 v0, v0, -0x1

    :goto_4f
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_6b

    .line 575
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 576
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 577
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 578
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .line 580
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 581
    add-int/lit8 v0, v0, -0x1

    :goto_73
    if-ltz v0, :cond_83

    .line 582
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 581
    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    .line 584
    :cond_83
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 586
    return-void

    .line 589
    :cond_8f
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    add-int/lit8 v0, v0, -0x1

    :goto_97
    if-ltz v0, :cond_d2

    .line 591
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 592
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 593
    add-int/lit8 v4, v4, -0x1

    :goto_a7
    if-ltz v4, :cond_cf

    .line 594
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 595
    iget-object v6, v5, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 596
    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 597
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 598
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 599
    iget-object v5, v5, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 600
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 601
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 602
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_cc
    add-int/lit8 v4, v4, -0x1

    goto :goto_a7

    .line 590
    :cond_cf
    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    .line 606
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 607
    add-int/lit8 v0, v0, -0x1

    :goto_da
    if-ltz v0, :cond_10e

    .line 608
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 609
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 610
    add-int/lit8 v3, v3, -0x1

    :goto_ea
    if-ltz v3, :cond_10b

    .line 611
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 612
    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 613
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 614
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 615
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 617
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    :cond_108
    add-int/lit8 v3, v3, -0x1

    goto :goto_ea

    .line 607
    :cond_10b
    add-int/lit8 v0, v0, -0x1

    goto :goto_da

    .line 621
    :cond_10e
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 622
    add-int/lit8 v0, v0, -0x1

    :goto_116
    if-ltz v0, :cond_142

    .line 623
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 624
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    add-int/lit8 v2, v2, -0x1

    :goto_126
    if-ltz v2, :cond_13f

    .line 626
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 627
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 628
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    :cond_13c
    add-int/lit8 v2, v2, -0x1

    goto :goto_126

    .line 622
    :cond_13f
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    .line 633
    :cond_142
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 639
    return-void
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 532
    :goto_5c
    return v0
.end method

.method public blacklist runPendingAnimations()V
    .registers 11

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 107
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    if-eqz v3, :cond_21

    if-eqz v2, :cond_21

    .line 109
    return-void

    .line 112
    :cond_21
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 113
    invoke-direct {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 114
    goto :goto_27

    .line 115
    :cond_37
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v4, 0x0

    if-nez v1, :cond_6f

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 122
    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$1;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 133
    if-nez v0, :cond_6c

    .line 134
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 136
    goto :goto_6f

    .line 137
    :cond_6c
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_6f
    :goto_6f
    if-nez v2, :cond_a1

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 146
    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$2;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 156
    if-nez v0, :cond_9e

    .line 157
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 158
    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 159
    goto :goto_a1

    .line 160
    :cond_9e
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 164
    :cond_a1
    :goto_a1
    if-nez v3, :cond_f0

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 169
    new-instance v5, Lcom/android/internal/widget/DefaultItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/widget/DefaultItemAnimator$3;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 179
    if-eqz v0, :cond_c7

    if-eqz v1, :cond_c7

    if-nez v2, :cond_c3

    goto :goto_c7

    .line 187
    :cond_c3
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_f0

    .line 180
    :cond_c7
    :goto_c7
    const-wide/16 v6, 0x0

    if-nez v0, :cond_d0

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_d1

    :cond_d0
    move-wide v8, v6

    .line 181
    :goto_d1
    if-nez v1, :cond_d8

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_d9

    :cond_d8
    move-wide v0, v6

    .line 182
    :goto_d9
    if-nez v2, :cond_df

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 183
    :cond_df
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 184
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    invoke-virtual {v0, v5, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 186
    nop

    .line 190
    :cond_f0
    :goto_f0
    return-void
.end method
