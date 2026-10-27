.class Lcom/android/server/wm/AsyncRotationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "AsyncRotationController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AsyncRotationController$Operation;,
        Lcom/android/server/wm/AsyncRotationController$TransitionOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/FadeAnimationController;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OP_APP_SWITCH:I = 0x1

.field private static final OP_CHANGE:I = 0x2

.field private static final OP_CHANGE_MAY_SEAMLESS:I = 0x3

.field private static final OP_LEGACY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncRotation"


# instance fields
.field private final mHasScreenRotationAnimation:Z

.field private mHideImmediately:Z

.field private mIsStartTransactionCommitted:Z

.field private mIsSyncDrawRequested:Z

.field private mNavBarToken:Lcom/android/server/wm/WindowToken;

.field private mOnShowRunnable:Ljava/lang/Runnable;

.field private final mOriginalRotation:I

.field private mRotator:Lcom/android/server/wm/SeamlessRotator;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTargetWindowTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowToken;",
            "Lcom/android/server/wm/AsyncRotationController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTransitionOp:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 11
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 107
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 108
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    .line 109
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 110
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v1

    .line 111
    .local v1, "transitionType":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_4f

    .line 112
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v5

    .line 113
    .local v5, "dr":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 117
    .local v6, "w":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_4c

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4c

    .line 118
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_4c

    .line 119
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v7

    invoke-virtual {v5, v0, v7}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 120
    iput v8, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_4e

    .line 122
    :cond_4c
    iput v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 124
    .end local v5    # "dr":Lcom/android/server/wm/DisplayRotation;
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :goto_4e
    goto :goto_56

    :cond_4f
    if-eqz v1, :cond_54

    .line 125
    iput v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    goto :goto_56

    .line 127
    :cond_54
    iput v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 134
    :goto_56
    nop

    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-nez v0, :cond_61

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v0, v2, :cond_62

    :cond_61
    move v3, v4

    :cond_62
    iput-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    .line 136
    if-eqz v3, :cond_68

    .line 138
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 142
    :cond_68
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 145
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_72

    .line 146
    iput-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    goto :goto_85

    .line 147
    :cond_72
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 149
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    .line 151
    :cond_85
    :goto_85
    return-void
.end method

.method private finishOp(Lcom/android/server/wm/WindowToken;)V
    .registers 6
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 221
    .local v0, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    if-nez v0, :cond_b

    return-void

    .line 222
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_1d

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 225
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 228
    :cond_1d
    iget v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_29

    .line 232
    const/16 v1, 0x40

    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    goto :goto_4a

    .line 233
    :cond_29
    iget v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    if-ne v1, v3, :cond_4a

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 234
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/SeamlessRotator;->setIdentityMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 238
    :cond_4a
    :goto_4a
    return-void
.end method

.method static synthetic lambda$keepAppearanceInPreviousRotation$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 211
    return-void
.end method

.method private scheduleTimeout()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 321
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 330
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 156
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_8e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-ne v0, v1, :cond_1a

    goto/16 :goto_8e

    .line 160
    :cond_1a
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_23

    .line 162
    return-void

    .line 164
    :cond_23
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    const/4 v2, 0x3

    if-ne v0, v1, :cond_65

    .line 165
    const/4 v0, 0x2

    .line 166
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 167
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v1

    .line 168
    .local v1, "navigationBarCanMove":Z
    iget v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v3, :cond_51

    .line 169
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    .line 171
    if-eqz v1, :cond_42

    return-void

    .line 173
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    .line 174
    .local v2, "recents":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController;->isNavigationBarAttachedToApp()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 175
    return-void

    .line 177
    .end local v2    # "recents":Lcom/android/server/wm/RecentsAnimationController;
    :cond_51
    if-nez v1, :cond_57

    if-ne v3, v2, :cond_56

    goto :goto_57

    :cond_56
    goto :goto_58

    .line 178
    :cond_57
    :goto_57
    const/4 v0, 0x1

    .line 180
    :goto_58
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v4, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v4, v0}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void

    .line 184
    .end local v0    # "action":I
    .end local v1    # "navigationBarCanMove":Z
    :cond_65
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_72

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_70

    goto :goto_72

    .line 185
    :cond_70
    move v0, v1

    goto :goto_73

    :cond_72
    :goto_72
    move v0, v3

    .line 188
    .restart local v0    # "action":I
    :goto_73
    invoke-static {}, Lcom/android/server/wm/AsyncRotationControllerStub;->get()Lcom/android/server/wm/AsyncRotationControllerStub;

    move-result-object v2

    if-ne v0, v1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    invoke-interface {v2, p1, v3}, Lcom/android/server/wm/AsyncRotationControllerStub;->excludeFromFadeRotationAnimation(Lcom/android/server/wm/WindowState;Z)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    new-instance v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    invoke-direct {v3, v0}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_8d
    return-void

    .line 158
    .end local v0    # "action":I
    :cond_8e
    :goto_8e
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 60
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method completeAll()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 248
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2a

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_34

    .line 253
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 256
    :cond_34
    return-void
.end method

.method completeRotation(Lcom/android/server/wm/WindowToken;)Z
    .registers 7
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 269
    .local v0, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    if-eqz v0, :cond_12

    .line 271
    iput-boolean v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    .line 273
    :cond_12
    return v2

    .line 275
    .end local v0    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    :cond_13
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 277
    .restart local v0    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    if-eqz v0, :cond_2f

    iget v3, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    .line 280
    return v2

    .line 283
    .end local v0    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-nez v0, :cond_36

    return v2

    .line 284
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v0, :cond_57

    .line 286
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    :cond_56
    return v1

    .line 294
    :cond_57
    return v2
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v0, :cond_e

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mContext:Landroid/content/Context;

    const v1, 0x10a008d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 486
    :cond_e
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 491
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    if-eqz v0, :cond_13

    .line 494
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 495
    .local v0, "alpha":F
    :goto_d
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v1

    .line 497
    .end local v0    # "alpha":F
    :cond_13
    invoke-super {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method handleFinishDrawing(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 460
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    if-eqz p2, :cond_4b

    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 461
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4b

    .line 464
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 465
    .local v0, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    if-nez v0, :cond_21

    return v1

    .line 466
    :cond_21
    iget v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    iget v2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 468
    .local v2, "keepUntilTransitionFinish":Z
    :goto_2e
    iget-boolean v4, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-nez v4, :cond_38

    iget v4, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    if-ne v4, v3, :cond_38

    move v4, v3

    goto :goto_39

    :cond_38
    move v4, v1

    .line 470
    .local v4, "keepUntilStartTransaction":Z
    :goto_39
    if-nez v2, :cond_3e

    if-nez v4, :cond_3e

    return v1

    .line 471
    :cond_3e
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_45

    .line 472
    iput-object p2, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_4a

    .line 474
    :cond_45
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 477
    :goto_4a
    return v3

    .line 462
    .end local v0    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    .end local v2    # "keepUntilTransitionFinish":Z
    .end local v4    # "keepUntilStartTransaction":Z
    :cond_4b
    :goto_4b
    return v1
.end method

.method hideImmediately(Lcom/android/server/wm/WindowToken;)V
    .registers 6
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 336
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 337
    .local v0, "original":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 338
    new-instance v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 339
    .local v1, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 341
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 342
    iput-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHideImmediately:Z

    .line 344
    return-void
.end method

.method isAsync(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 348
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mNavBarToken:Lcom/android/server/wm/WindowToken;

    if-eq v0, v1, :cond_19

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v0, :cond_19

    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 348
    :goto_1a
    return v0
.end method

.method isTargetToken(Lcom/android/server/wm/WindowToken;)Z
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method keepAppearanceInPreviousRotation()V
    .registers 7

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3f

    .line 203
    iget-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 204
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget v2, v2, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 207
    goto :goto_3c

    .line 209
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 210
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_29
    if-ltz v3, :cond_3c

    .line 211
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowToken;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    new-instance v5, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    .line 210
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 202
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    .end local v3    # "j":I
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 214
    .end local v0    # "i":I
    :cond_3f
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    .line 216
    return-void
.end method

.method synthetic lambda$scheduleTimeout$1$com-android-server-wm-AsyncRotationController()V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 323
    const-string v1, "AsyncRotation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async rotation timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 325
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 327
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 328
    return-void

    .line 327
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$setupStartTransaction$2$com-android-server-wm-AsyncRotationController()V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_30

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget-boolean v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    if-eqz v1, :cond_2d

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 411
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 420
    .end local v2    # "i":I
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 421
    return-void

    .line 420
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onTransitionFinished()V
    .registers 5

    .line 426
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 429
    return-void

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_44

    .line 435
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 436
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v2

    if-nez v2, :cond_24

    .line 437
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 438
    goto :goto_41

    .line 440
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_2a
    if-ltz v2, :cond_41

    .line 443
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowToken;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 444
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 445
    goto :goto_41

    .line 440
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 434
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .end local v2    # "j":I
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 449
    .end local v0    # "i":I
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 450
    invoke-direct {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    .line 452
    :cond_4f
    return-void
.end method

.method setOnShowRunnable(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "onShowRunnable"    # Ljava/lang/Runnable;

    .line 368
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController;->mOnShowRunnable:Ljava/lang/Runnable;

    .line 369
    return-void
.end method

.method setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_51

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 378
    .local v1, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    iget-object v2, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 379
    .local v2, "leash":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_4e

    .line 380
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v3, :cond_2b

    iget v3, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 382
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4e

    .line 390
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-nez v3, :cond_49

    .line 391
    new-instance v3, Lcom/android/server/wm/SeamlessRotator;

    iget v4, p0, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    iget-object v5, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 392
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/AsyncRotationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 393
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 396
    :cond_49
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/SeamlessRotator;->applyTransform(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 376
    .end local v1    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 403
    .end local v0    # "i":I
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    if-eqz v0, :cond_56

    return-void

    .line 407
    :cond_56
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v1, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 422
    return-void
.end method

.method shouldFreezeInsetsPosition(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 363
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 363
    :goto_17
    return v1
.end method

.method start()V
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_37

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 304
    .local v2, "windowToken":Lcom/android/server/wm/WindowToken;
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 305
    .local v3, "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    iget v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2c

    .line 306
    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/wm/AsyncRotationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    .line 307
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_34

    .line 309
    :cond_2c
    iget v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    if-ne v4, v1, :cond_34

    .line 310
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 302
    .end local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .end local v3    # "op":Lcom/android/server/wm/AsyncRotationController$Operation;
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 314
    .end local v0    # "i":I
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz v0, :cond_3e

    .line 315
    invoke-direct {p0}, Lcom/android/server/wm/AsyncRotationController;->scheduleTimeout()V

    .line 317
    :cond_3e
    return-void
.end method
