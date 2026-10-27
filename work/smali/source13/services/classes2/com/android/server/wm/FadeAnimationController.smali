.class public Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 43
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .registers 6
    .param p1, "animationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "show"    # Z
    .param p3, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 85
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowToken;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    return-object v0
.end method

.method protected createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 91
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .registers 12
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "animationType"    # I

    .line 68
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_30

    .line 72
    :cond_9
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 73
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_14
    if-eqz v0, :cond_1f

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 75
    .local v1, "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    :goto_20
    if-nez v1, :cond_23

    .line 76
    return-void

    .line 79
    :cond_23
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, v1

    move v5, p1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 81
    return-void

    .line 69
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    :cond_30
    :goto_30
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
