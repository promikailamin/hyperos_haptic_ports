.class Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;,
        Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;,
        Lcom/android/server/wm/Dimmer$DimState;,
        Lcom/android/server/wm/Dimmer$DimAnimatable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_ANIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mAnimateEnter:Z

.field mDimState:Lcom/android/server/wm/Dimmer$DimState;

.field private mHost:Lcom/android/server/wm/WindowContainer;

.field private mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

.field private final mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "host"    # Lcom/android/server/wm/WindowContainer;

    .line 176
    new-instance v0, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V

    .line 177
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V
    .registers 4
    .param p1, "host"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "surfaceAnimatorStarter"    # Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer;->mAnimateEnter:Z

    .line 180
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 181
    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    .line 182
    return-void
.end method

.method private dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "relativeLayer"    # I
    .param p4, "alpha"    # F
    .param p5, "blurRadius"    # I

    .line 229
    invoke-direct {p0, p2}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object v0

    .line 231
    .local v0, "d":Lcom/android/server/wm/Dimmer$DimState;
    if-nez v0, :cond_7

    .line 232
    return-void

    .line 235
    :cond_7
    const/4 v1, 0x1

    if-eqz p2, :cond_37

    .line 239
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1, v2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 242
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionState()I

    move-result v2

    if-ne v2, v1, :cond_3f

    .line 243
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionPrivaceState()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_33

    .line 244
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p2, Lcom/android/server/wm/WindowContainer;->mIsPrivacy:Z

    if-eqz v2, :cond_2f

    :cond_2e
    move v3, v1

    :cond_2f
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/Dimmer;->setPrivacyFlags(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_3f

    .line 246
    :cond_33
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/Dimmer;->setPrivacyFlags(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_3f

    .line 250
    :cond_37
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 252
    :cond_3f
    :goto_3f
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 253
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p5}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 255
    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 256
    return-void
.end method

.method private getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 443
    if-nez p1, :cond_5

    .line 444
    const-wide/16 v0, 0x0

    return-wide v0

    .line 448
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 449
    .local v0, "animationAdapter":Lcom/android/server/wm/AnimationAdapter;
    if-nez v0, :cond_10

    const-wide/16 v1, 0xc8

    goto :goto_14

    .line 450
    :cond_10
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v1

    .line 449
    :goto_14
    return-wide v1
.end method

.method private getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;
    .registers 10
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_51

    .line 199
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/wm/Dimmer;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 202
    .local v0, "ctl":Landroid/view/SurfaceControl;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    instance-of v3, v2, Lcom/android/server/wm/Task;

    if-eqz v3, :cond_2d

    .line 204
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/Task;

    .line 205
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 206
    .local v2, "miuiffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v3

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    move v1, v3

    move v7, v1

    goto :goto_2e

    .line 203
    .end local v2    # "miuiffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_2d
    move v7, v1

    .line 208
    .end local v1    # "scale":F
    .local v7, "scale":F
    :goto_2e
    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move v3, v7

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 210
    new-instance v1, Lcom/android/server/wm/Dimmer$DimState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 215
    if-nez p1, :cond_48

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z
    :try_end_48
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_48} :catch_49

    .line 220
    .end local v0    # "ctl":Landroid/view/SurfaceControl;
    .end local v7    # "scale":F
    :cond_48
    goto :goto_51

    .line 218
    :catch_49
    move-exception v0

    .line 219
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "WindowManager"

    const-string v2, "OutOfResourcesException creating dim surface"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_51
    :goto_51
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return-object v0
.end method

.method private makeDimLayer()Landroid/view/SurfaceControl;
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dim Layer for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 188
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 189
    const-string v1, "Dimmer.makeDimLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method private startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V
    .registers 12
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "startAlpha"    # F
    .param p5, "endAlpha"    # F

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;

    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v4

    invoke-direct {v1, p4, p5, v4, v5}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;-><init>(FFJ)V

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3, v1, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 434
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;->startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 438
    return-void
.end method

.method private startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 424
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    .line 425
    return-void
.end method

.method private startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 429
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    .line 430
    return-void
.end method


# virtual methods
.method dimAbove(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 281
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    .line 282
    return-void
.end method

.method dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "alpha"    # F

    .line 294
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    .line 295
    return-void
.end method

.method dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;FI)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "alpha"    # F
    .param p4, "blurRadius"    # I

    .line 308
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    .line 309
    return-void
.end method

.method dontAnimateEnter()V
    .registers 2

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer;->mAnimateEnter:Z

    .line 334
    return-void
.end method

.method dontAnimateExit()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_7

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 329
    :cond_7
    return-void
.end method

.method resetDimStates()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    if-nez v0, :cond_d

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 323
    :cond_d
    return-void
.end method

.method public setCastFlags(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "enter"    # Z

    .line 497
    invoke-direct {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object v0

    .line 499
    .local v0, "d":Lcom/android/server/wm/Dimmer$DimState;
    if-nez v0, :cond_7

    .line 500
    return-void

    .line 503
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    .line 504
    return-void
.end method

.method public setPrivacyFlags(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "isPrivacy"    # Z

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object v0

    .line 510
    .local v0, "d":Lcom/android/server/wm/Dimmer$DimState;
    if-nez v0, :cond_7

    .line 511
    return-void

    .line 514
    :cond_7
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v1

    .line 515
    .local v1, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    if-eqz p2, :cond_17

    .line 516
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-interface {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_1d

    .line 518
    :cond_17
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 520
    :goto_1d
    return-void
.end method

.method stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    .line 269
    :cond_12
    return-void
.end method

.method updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 347
    return v1

    .line 350
    :cond_6
    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_2f

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez v0, :cond_22

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2b

    .line 356
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/wm/Dimmer;->startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    .line 358
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 359
    return v1

    .line 365
    :cond_2f
    const/4 v0, 0x0

    .line 366
    .local v0, "inMiuiSizeCompatMode":Z
    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    instance-of v2, v1, Lcom/android/server/wm/WindowState;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-eqz v2, :cond_77

    .line 367
    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 368
    .local v1, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 369
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatControllerStub:Lcom/android/server/wm/BoundsCompatControllerStub;

    invoke-virtual {v2}, Lcom/android/server/wm/BoundsCompatControllerStub;->getDispatchedBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 370
    .local v2, "compatBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v6, v6, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 371
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->getCurrentMiuiSizeCompatScale(F)F

    move-result v6

    .line 372
    .local v6, "scale":F
    iget-object v7, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v7, v7, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-double v8, v8

    add-double/2addr v8, v4

    double-to-int v8, v8

    .line 373
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v9, v9

    add-double/2addr v9, v4

    double-to-int v9, v9

    .line 372
    invoke-virtual {p1, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 374
    const/4 v0, 0x1

    .line 378
    .end local v1    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "compatBounds":Landroid/graphics/Rect;
    .end local v6    # "scale":F
    :cond_77
    const/4 v1, 0x0

    .line 379
    .local v1, "isFixedOrizationScale":Z
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    instance-of v6, v2, Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_b9

    .line 380
    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 381
    .local v2, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_b9

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isFixedOrizationScale()Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 382
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLetterboxBoundsForFixedOrientationAndAspectRatio()Landroid/graphics/Rect;

    move-result-object v6

    .line 383
    .local v6, "compatBounds":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v7, v7, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 384
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->getCurrentFixedOrizationScale(F)F

    move-result v3

    .line 385
    .local v3, "scale":F
    iget-object v7, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v7, v7, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-double v8, v8

    add-double/2addr v8, v4

    double-to-int v8, v8

    .line 386
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-double v9, v9

    add-double/2addr v9, v4

    double-to-int v4, v9

    .line 385
    invoke-virtual {p1, v7, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 387
    const/4 v1, 0x1

    .line 391
    .end local v2    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "scale":F
    .end local v6    # "compatBounds":Landroid/graphics/Rect;
    :cond_b9
    if-nez v0, :cond_d9

    if-nez v1, :cond_d9

    .line 392
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 393
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 397
    :cond_d9
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v2, v2, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    const/4 v3, 0x1

    if-nez v2, :cond_fb

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v3, v2, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 402
    iget-boolean v2, p0, Lcom/android/server/wm/Dimmer;->mAnimateEnter:Z

    if-eqz v2, :cond_f9

    .line 403
    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v4, v4, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/wm/Dimmer;->startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_fb

    .line 405
    :cond_f9
    iput-boolean v3, p0, Lcom/android/server/wm/Dimmer;->mAnimateEnter:Z

    .line 410
    :cond_fb
    :goto_fb
    const/high16 v2, 0x3f800000    # 1.0f

    .line 411
    .local v2, "scale":F
    iget-object v4, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    instance-of v5, v4, Lcom/android/server/wm/Task;

    if-eqz v5, :cond_11e

    .line 412
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v5, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    check-cast v5, Lcom/android/server/wm/Task;

    .line 413
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 414
    .local v4, "miuiffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v4, :cond_11c

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v5

    goto :goto_11d

    :cond_11c
    move v5, v2

    :goto_11d
    move v2, v5

    .line 416
    .end local v4    # "miuiffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_11e
    iget-object v4, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v6, v4, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 418
    return v3
.end method
