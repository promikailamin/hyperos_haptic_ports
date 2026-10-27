.class public Lcom/android/server/wm/DimmerAnimationHelper;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"


# instance fields
.field public mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

.field public final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field public final mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

.field public final mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public static synthetic $r8$lambda$-4RXDsMsps1xuQdh2yjXk8VxS7M(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .registers 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 97
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 111
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 112
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method

.method public static getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1a

    .line 312
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTransitionAnimationScaleLocked()F

    move-result p0

    if-nez v0, :cond_15

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0

    .line 316
    :cond_15
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
    .registers 9

    .line 239
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 240
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 241
    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v3

    sub-float/2addr v3, v0

    .line 242
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 244
    new-instance v4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    new-instance v5, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 245
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 246
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V

    .line 249
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_65

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x107bda7fb260c74eL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_65
    return-object v4
.end method

.method public static setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 276
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, v1

    .line 277
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 279
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    .line 280
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    move v4, v3

    .line 282
    :goto_29
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-eqz v4, :cond_4b

    .line 285
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    move-result v0

    if-eqz v0, :cond_39

    move-object v2, v1

    :cond_39
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 287
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    iget p1, v1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_58

    .line 290
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 291
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 292
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 295
    :goto_58
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 296
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget p1, v5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public applyChanges(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;)V
    .registers 9

    .line 146
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->copyFrom(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v2, "WindowManager"

    if-nez v1, :cond_2d

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a dimming container. Have you forgotten to call adjustRelativeLayer?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "does not have a surface"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 160
    :cond_5c
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_80

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dimming surface "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has already been released! Can not apply changes."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_80
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->ensureVisible(Landroid/view/SurfaceControl$Transaction;)V

    .line 168
    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_9b

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_9c

    :cond_9b
    move-object v1, v3

    .line 170
    :goto_9c
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v2, v4, :cond_b2

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 167
    :cond_b2
    invoke-virtual {p0, p2, v1, v3, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameVisualProperties(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-nez v1, :cond_125

    .line 175
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    const-string v2, "new target values"

    invoke-static {v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmDimCancelAnim(ILjava/lang/String;)V

    .line 176
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->stopCurrentAnimation(Landroid/view/SurfaceControl;)V

    .line 178
    iget-boolean v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 182
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_e9

    goto :goto_ef

    .line 190
    :cond_e9
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    return-void

    .line 183
    :cond_ef
    :goto_ef
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_11e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x346ea5c6c622399aL    # 3.905950942569482E-56

    const/16 v4, 0x18

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 187
    :cond_11e
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x0

    .line 188
    iput-boolean p0, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    return-void

    .line 192
    :cond_125
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result p0

    if-nez p0, :cond_12e

    .line 195
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    :cond_12e
    return-void
.end method

.method public final synthetic lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .registers 6

    .line 212
    iget-object p3, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p3, p3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p3

    .line 213
    :try_start_a
    iget-object p4, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p4

    invoke-static {p4}, Lcom/android/server/wm/EventLogTags;->writeWmDimFinishAnim(I)V

    .line 214
    iget-object p4, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 215
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    .line 216
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_32

    .line 217
    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result p2

    if-nez p2, :cond_32

    .line 218
    invoke-virtual {p1, p4}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 220
    iget-object p1, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_3c

    :cond_32
    :goto_32
    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 223
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 224
    monitor-exit p3
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 260
    iget-object p0, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_a

    .line 263
    :try_start_4
    invoke-virtual {p4, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a

    :catch_8
    move-exception p1

    goto :goto_11

    :cond_a
    :goto_a
    if-eqz p3, :cond_2c

    const/4 p1, -0x1

    .line 266
    invoke-virtual {p4, p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_8

    return-void

    .line 269
    :goto_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to change parent of dim "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " after remove"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WindowManager"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return-void
.end method

.method public setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 300
    iget-object p1, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 302
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 303
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to change look of dim "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after remove"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setExitParameters()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedAppearance(FI)V

    return-void
.end method

.method public setRequestedAppearance(FI)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;F)V

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;I)V

    return-void
.end method

.method public setRequestedGeometryParent(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowContainer;)V

    :cond_7
    return-void
.end method

.method public setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V
    .registers 10

    .line 202
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x5838e9a5f346c47cL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 203
    :cond_19
    invoke-static {p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;->get(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 207
    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result p3

    .line 208
    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p4

    int-to-float p4, p4

    invoke-static {v0, p3, p4}, Lcom/android/server/wm/EventLogTags;->writeWmDimAnimate(IFF)V

    .line 210
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    new-instance v1, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V

    const/4 p0, 0x4

    invoke-interface {p4, v0, p1, p0, v1}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method

.method public stopCurrentAnimation(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->inheritPropertiesFromAnimation(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 233
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    return-void
.end method
