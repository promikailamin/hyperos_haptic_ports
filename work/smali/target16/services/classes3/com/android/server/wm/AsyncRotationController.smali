.class public Lcom/android/server/wm/AsyncRotationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "AsyncRotationController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mHasScreenRotationAnimation:Z

.field public mHideImmediately:Z

.field public mIsStartTransactionCommitted:Z

.field public mIsStartTransactionPrepared:Z

.field public mIsSyncDrawRequested:Z

.field public mNavBarToken:Lcom/android/server/wm/WindowToken;

.field public mOnShowRunnable:Ljava/lang/Runnable;

.field public mOriginalRotation:I

.field public mRotator:Lcom/android/server/wm/SeamlessRotator;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTargetWindowTokens:Landroid/util/ArrayMap;

.field public mTimeoutRunnable:Ljava/lang/Runnable;

.field public final mTransitionOp:I


# direct methods
.method public static synthetic $r8$lambda$Oa6FtXbJwr3LMuRcvfY_AJCLKRk(Lcom/android/server/wm/AsyncRotationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->lambda$setupStartTransaction$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$PtCO_81xYwXV73uQFHrlsomD81E(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$jEAiEPvteaP_XtxOEwzemo2HPis(Lcom/android/server/wm/AsyncRotationController;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AsyncRotationController;->lambda$finishOp$1(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYwDFNOZAqwN3R8jlPun6FKFUpE(Lcom/android/server/wm/AsyncRotationController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->lambda$updateRotation$2(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZhELYMNbDKN9vJbgZinpPi7roU(Lcom/android/server/wm/AsyncRotationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->lambda$scheduleTimeout$3()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 112
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 114
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_51

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 122
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4e

    .line 123
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 125
    iput v6, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5e

    .line 127
    :cond_4e
    iput v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5e

    .line 129
    :cond_51
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 130
    iput v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_5e

    .line 132
    :cond_5c
    iput v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 139
    :goto_5e
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v0, v3, :cond_63

    move v2, v4

    :cond_63
    iput-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v2, :cond_69

    .line 142
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 146
    :cond_69
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 149
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_73

    .line 150
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    return-void

    .line 151
    :cond_73
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    :cond_7e
    return-void
.end method

.method public static canBeAsync(Lcom/android/server/wm/WindowToken;)Z
    .registers 2

    .line 189
    iget p0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v0, 0x63

    if-le p0, v0, :cond_14

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_14

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x7f8

    if-eq p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static clearTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 8

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    .line 299
    invoke-virtual {v0, v1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .registers 8

    .line 159
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_65

    .line 162
    :cond_d
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_16

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v1, :cond_16

    goto :goto_65

    .line 166
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v1, v2, :cond_51

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 169
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    .line 170
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v1, :cond_36

    .line 171
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_43

    goto :goto_65

    :cond_36
    if-nez v0, :cond_44

    if-eq v1, v4, :cond_44

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    if-eqz v0, :cond_43

    goto :goto_44

    :cond_43
    move v3, v5

    .line 178
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_51
    if-eq v0, v4, :cond_59

    .line 182
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_58

    goto :goto_59

    :cond_58
    move v3, v5

    .line 184
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 58
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final canDrawBeforeStartTransaction(Lcom/android/server/wm/AsyncRotationController$Operation;)Z
    .registers 2

    .line 715
    iget p0, p1, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_7

    return p1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public completeAll()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 308
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 310
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->onAllCompleted()V

    return-void
.end method

.method public completeRotation(Lcom/android/server/wm/WindowToken;)Z
    .registers 6

    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 331
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_12

    .line 338
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    :cond_12
    return v2

    .line 342
    :cond_13
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz v0, :cond_2f

    .line 344
    iget v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    return v2

    .line 350
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-nez v0, :cond_36

    return v2

    .line 351
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v0, :cond_4d

    .line 353
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    .line 354
    iget-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 355
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->onAllCompleted()V

    return v1

    :cond_4d
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AsyncRotationController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTransitionOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsStartTransactionCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsSyncDrawRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOriginalRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTargetWindowTokens="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishOp(Lcom/android/server/wm/WindowToken;)V
    .registers 7

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-nez v0, :cond_b

    goto :goto_61

    .line 262
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_1b

    .line 264
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    .line 265
    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 268
    :cond_1b
    iget v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 v2, 0x4

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2c

    .line 270
    new-instance v1, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    invoke-virtual {p0, v4, p1, v3, v1}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_33

    :cond_2c
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_33

    .line 277
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 279
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController$Operation;->isValidSeamless()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 282
    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v1, v0}, Lcom/android/server/wm/AsyncRotationController;->clearTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 286
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->isSeamlessTransition()Z

    move-result p0

    if-eqz p0, :cond_61

    .line 287
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v4

    :goto_4d
    if-ltz p0, :cond_61

    .line 288
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 289
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 291
    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->updateInsetsControlPosition(Lcom/android/server/wm/WindowState;)Z

    :cond_5e
    add-int/lit8 p0, p0, -0x1

    goto :goto_4d

    :cond_61
    :goto_61
    return-void
.end method

.method public getDrawTransaction(Lcom/android/server/wm/WindowToken;)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    .line 518
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 523
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_1e

    .line 525
    iget-object p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez p1, :cond_1b

    .line 526
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 528
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0

    :cond_1e
    return-object v1
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 4

    .line 690
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 691
    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v1, :cond_11

    const/16 v1, 0xc8

    .line 693
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FadeAnimationController;->getScaledDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_11
    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 701
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    if-eqz v0, :cond_13

    .line 704
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 705
    :goto_d
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0

    .line 707
    :cond_13
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public handleFinishDrawing(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 7

    .line 645
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 648
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    const/4 v2, 0x1

    if-nez v0, :cond_40

    .line 654
    iget p2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne p2, v2, :cond_3f

    iget-boolean p2, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez p2, :cond_3f

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 655
    invoke-static {p2}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result p2

    if-eqz p2, :cond_3f

    iget-object p2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->hasFixedRotationTransientLaunch()Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p2, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 656
    invoke-virtual {p2, v0}, Lcom/android/server/wm/BackNavigationController;->hasFixedRotationAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 658
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;I)V

    :cond_3f
    return v1

    :cond_40
    if-eqz p2, :cond_75

    .line 664
    iget-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    if-eqz v3, :cond_75

    .line 665
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AsyncRotationController;->canDrawBeforeStartTransaction(Lcom/android/server/wm/AsyncRotationController$Operation;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_75

    .line 669
    :cond_4d
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_6a

    .line 670
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isClientLocal()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 673
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 674
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6d

    .line 678
    :cond_67
    iput-object p2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_6d

    .line 681
    :cond_6a
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 683
    :goto_6d
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    return v2

    .line 666
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    return v1
.end method

.method public hasFadeOperation(Lcom/android/server/wm/WindowToken;)Z
    .registers 2

    .line 486
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_12

    .line 487
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public hasSeamlessOperation(Lcom/android/server/wm/WindowToken;)Z
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_11

    .line 493
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    return p1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public hideImeImmediately()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_7

    goto :goto_f

    .line 453
    :cond_7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x4

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;I)V

    return-void
.end method

.method public final hideImmediately(Lcom/android/server/wm/WindowToken;I)V
    .registers 6

    .line 460
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    const/4 v1, 0x1

    .line 461
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 462
    new-instance v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v1, p2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 463
    iget-object p2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const/16 v2, 0x40

    .line 464
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 465
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 466
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    return-void
.end method

.method public final isSeamlessTransition()Z
    .registers 3

    .line 510
    iget p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v0
.end method

.method public isTargetToken(Lcom/android/server/wm/WindowToken;)Z
    .registers 2

    .line 481
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public keepAppearanceInPreviousRotation()V
    .registers 7

    .line 201
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    if-eqz v0, :cond_5

    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_41

    .line 206
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AsyncRotationController;->canDrawBeforeStartTransaction(Lcom/android/server/wm/AsyncRotationController$Operation;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_3e

    .line 210
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 211
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_2b
    if-ltz v3, :cond_3e

    .line 213
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    new-instance v5, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 217
    :cond_41
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    return-void
.end method

.method public final synthetic lambda$finishOp$1(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 271
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer()V

    return-void
.end method

.method public final synthetic lambda$scheduleTimeout$3()V
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 418
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez v1, :cond_18

    .line 419
    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    if-nez v1, :cond_15

    .line 420
    const-string v1, "setupStartTransaction is not called"

    goto :goto_2b

    :catchall_13
    move-exception p0

    goto :goto_5f

    .line 422
    :cond_15
    const-string v1, "start transaction is not committed"

    goto :goto_2b

    .line 425
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unfinished windows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    :goto_2b
    const-string v2, "AsyncRotation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async rotation timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    if-eqz v1, :cond_4e

    .line 439
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 441
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 442
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 443
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$setupStartTransaction$4()V
    .registers 5

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x1

    .line 576
    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 577
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_12
    if-ltz v2, :cond_33

    .line 578
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget-boolean v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    if-eqz v1, :cond_30

    .line 583
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_38

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 586
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateRotation$2(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 400
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 402
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 403
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 404
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public final onAllCompleted()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 317
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 320
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    :cond_15
    return-void
.end method

.method public onTransactionCommitTimeout(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 593
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-eqz v0, :cond_5

    goto :goto_49

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_49

    .line 595
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 596
    iput-boolean v1, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    .line 597
    invoke-virtual {v2}, Lcom/android/server/wm/AsyncRotationController$Operation;->isValidSeamless()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction timeout. Clear transform for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 599
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    const-string v4, "AsyncRotation"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {p1, v2}, Lcom/android/server/wm/AsyncRotationController;->clearTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_49
    :goto_49
    return-void
.end method

.method public onTransitionFinished()V
    .registers 5

    .line 607
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 610
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    return-void

    .line 619
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_51

    .line 620
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 621
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_31

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    goto :goto_4e

    .line 625
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_37
    if-ltz v2, :cond_4e

    .line 628
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    goto :goto_4e

    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 634
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 635
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    :cond_5c
    return-void
.end method

.method public final scheduleTimeout()V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 415
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 446
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnShowRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    .line 542
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-eqz v0, :cond_5

    return-void

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_56

    .line 544
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 545
    iget-object v3, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_53

    .line 546
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_53

    .line 547
    :cond_22
    iget-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v4, :cond_30

    iget v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    const/4 v2, 0x0

    .line 549
    invoke-virtual {p1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_53

    .line 557
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-nez v2, :cond_4e

    .line 558
    new-instance v2, Lcom/android/server/wm/SeamlessRotator;

    iget v4, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    iget-object v5, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 559
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 560
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 563
    :cond_4e
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 573
    :cond_56
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 588
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    return-void
.end method

.method public shouldFreezeInsetsPosition(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 503
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->isSeamlessTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    sget v0, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    if-ne v0, v1, :cond_20

    :cond_f
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 505
    invoke-static {v0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result p0

    if-eqz p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .registers 7

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_3a

    .line 370
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 371
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 372
    iget v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_2b

    const/4 v5, 0x4

    if-ne v4, v5, :cond_24

    goto :goto_2b

    :cond_24
    if-ne v4, v1, :cond_37

    .line 378
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v2, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_37

    :cond_2b
    :goto_2b
    const/4 v4, 0x0

    const/16 v5, 0x40

    .line 374
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 375
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 382
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v0, :cond_41

    .line 383
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    :cond_41
    return-void
.end method

.method public updateRotation()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-nez v0, :cond_5

    goto :goto_13

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 394
    iget v1, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    if-ne v1, v0, :cond_14

    :goto_13
    return-void

    .line 397
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update original rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncRotation"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 409
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    return-void
.end method

.method public updateTargetWindows()V
    .registers 9

    .line 226
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_6

    goto/16 :goto_86

    .line 227
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez v0, :cond_37

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    if-nez v0, :cond_86

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 229
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 230
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_86

    .line 231
    const-string v0, "AsyncRotation"

    const-string v1, "Cancel for no change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    return-void

    .line 236
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3f
    if-ltz v0, :cond_86

    .line 237
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 238
    iget-boolean v3, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    if-nez v3, :cond_83

    iget v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    if-ne v2, v1, :cond_52

    goto :goto_83

    .line 242
    :cond_52
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 244
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    :goto_61
    if-ltz v4, :cond_7c

    .line 246
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 248
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v7

    if-nez v7, :cond_77

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v6

    if-nez v6, :cond_79

    :cond_77
    add-int/lit8 v5, v5, 0x1

    :cond_79
    add-int/lit8 v4, v4, -0x1

    goto :goto_61

    :cond_7c
    if-ne v5, v3, :cond_83

    .line 253
    iget-object v3, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    :cond_83
    :goto_83
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_86
    :goto_86
    return-void
.end method
