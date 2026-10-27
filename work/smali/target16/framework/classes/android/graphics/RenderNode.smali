.class public final Landroid/graphics/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderNode$AnimationHost;,
        Landroid/graphics/RenderNode$NoImagePreloadHolder;,
        Landroid/graphics/RenderNode$CompositePositionUpdateListener;,
        Landroid/graphics/RenderNode$PositionUpdateListener;,
        Landroid/graphics/RenderNode$UsageHint;
    }
.end annotation


# static fields
.field public static final blacklist USAGE_BACKGROUND:I = 0x1

.field public static final blacklist USAGE_NAVIGATION_BAR_BACKGROUND:I = 0x4

.field public static final blacklist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

.field private blacklist mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

.field private blacklist mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

.field public final blacklist mNativeRenderNode:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RenderNode;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-wide p1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 239
    sget-object p1, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 240
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 241
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    .line 226
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V
    .registers 5

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Landroid/graphics/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 230
    sget-object p1, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 231
    iput-object p2, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 232
    return-void
.end method

.method public static blacklist adopt(J)Landroid/graphics/RenderNode;
    .registers 3

    .line 257
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;
    .registers 3

    .line 245
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    return-object v0
.end method

.method private static native blacklist nAddAnimator(JJ)V
.end method

.method private static native blacklist nClearStretch(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/lang/String;)J
.end method

.method private static native blacklist nDiscardDisplayList(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nEndAllAnimators(J)V
.end method

.method private static native blacklist nForceEndAnimators(J)V
.end method

.method private static native blacklist nGetAllocatedSize(J)I
.end method

.method private static native blacklist nGetAllowForceDark(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAmbientShadowColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAnimationMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetBottom(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetCameraDistance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetClipToBounds(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetClipToOutline(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetElevation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetInverseTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLayerType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLeft(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetNativeFinalizer()J
.end method

.method private static native blacklist nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetSpotShadowColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTop(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationZ(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetUniqueId(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetUsageSize(J)I
.end method

.method private static native blacklist nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasIdentityMatrix(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasOverlappingRendering(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasShadow(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nIsPivotExplicitlySet(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nIsValid(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOffsetLeftAndRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOffsetTopAndBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOutput(J)V
.end method

.method private static native blacklist nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nResetPivot(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAllowForceDark(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAmbientShadowColor(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAnimationMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBackdropRenderEffect(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetCameraDistance(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipBounds(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipBoundsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipToBounds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipToOutline(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetElevation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetHasOverlappingRendering(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetIsTextureView(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLayerPaint(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLayerType(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLeft(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLeftTopRightBottom(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineNone(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlinePath(JJF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineRoundRect(JIIIIFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetPivotX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetPivotY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetProjectBackwards(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetProjectionReceiver(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRenderEffect(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRevealClip(JZFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetScaleX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetScaleY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetSpotShadowColor(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetStaticMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTop(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationZ(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetUsageHint(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nStretch(JFFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addAnimator(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 6

    .line 1670
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1673
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/animation/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nAddAnimator(JJ)V

    .line 1674
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p0, p1}, Landroid/graphics/RenderNode$AnimationHost;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;Landroid/animation/Animator;)V

    .line 1675
    return-void

    .line 1671
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot start this animator on a detached view!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .registers 5

    .line 441
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 442
    if-nez v0, :cond_10

    .line 443
    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    goto :goto_14

    .line 445
    :cond_10
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object v0

    .line 447
    :goto_14
    iput-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 448
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, p1}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 449
    return-void
.end method

.method public whitelist beginRecording()Landroid/graphics/RecordingCanvas;
    .registers 4

    .line 507
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetWidth(J)I

    move-result v0

    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v1, v2}, Landroid/graphics/RenderNode;->nGetHeight(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist beginRecording(II)Landroid/graphics/RecordingCanvas;
    .registers 4

    .line 487
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_d

    .line 491
    invoke-static {p0, p1, p2}, Landroid/graphics/RecordingCanvas;->obtain(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 492
    iget-object p1, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    return-object p1

    .line 488
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Recording currently in progress - missing #endRecording() call?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist clearStretch()Z
    .registers 3

    .line 815
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nClearStretch(J)Z

    move-result v0

    return v0
.end method

.method public blacklist computeApproximateMemoryAllocated()J
    .registers 3

    .line 1590
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllocatedSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist computeApproximateMemoryUsage()J
    .registers 3

    .line 1575
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUsageSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist discardDisplayList()V
    .registers 3

    .line 556
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nDiscardDisplayList(J)V

    .line 557
    return-void
.end method

.method public blacklist end(Landroid/graphics/RecordingCanvas;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_8

    .line 547
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 548
    return-void

    .line 545
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong canvas"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist endAllAnimators()V
    .registers 3

    .line 1692
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nEndAllAnimators(J)V

    .line 1693
    return-void
.end method

.method public whitelist endRecording()V
    .registers 3

    .line 519
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_10

    .line 523
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 525
    invoke-virtual {v0, p0}, Landroid/graphics/RecordingCanvas;->finishRecording(Landroid/graphics/RenderNode;)V

    .line 526
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->recycle()V

    .line 527
    return-void

    .line 520
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No recording in progress, forgot to call #beginRecording()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist forceEndAnimators()V
    .registers 3

    .line 1697
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nForceEndAnimators(J)V

    .line 1698
    return-void
.end method

.method public whitelist getAlpha()F
    .registers 3

    .line 1039
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public whitelist getAmbientShadowColor()I
    .registers 3

    .line 906
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAmbientShadowColor(J)I

    move-result v0

    return v0
.end method

.method public blacklist getAnimationMatrix()Landroid/graphics/Matrix;
    .registers 6

    .line 979
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 980
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nGetAnimationMatrix(JJ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 981
    return-object v0

    .line 983
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBottom()I
    .registers 3

    .line 1478
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetBottom(J)I

    move-result v0

    return v0
.end method

.method public whitelist getCameraDistance()F
    .registers 3

    .line 1398
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public whitelist getClipToBounds()Z
    .registers 3

    .line 720
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToBounds(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getClipToOutline()Z
    .registers 3

    .line 926
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .registers 3

    .line 1124
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 1496
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getInverseMatrix(Landroid/graphics/Matrix;)V
    .registers 6

    .line 609
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetInverseTransformMatrix(JJ)V

    .line 610
    return-void
.end method

.method public whitelist getLeft()I
    .registers 3

    .line 1451
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetLeft(J)I

    move-result v0

    return v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .registers 6

    .line 599
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetTransformMatrix(JJ)V

    .line 600
    return-void
.end method

.method public whitelist getPivotX()F
    .registers 3

    .line 1312
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getPivotY()F
    .registers 3

    .line 1333
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRight()I
    .registers 3

    .line 1469
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getRotationX()F
    .registers 3

    .line 1228
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationY()F
    .registers 3

    .line 1249
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationZ()F
    .registers 3

    .line 1207
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleX()F
    .registers 3

    .line 1270
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleY()F
    .registers 3

    .line 1291
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getSpotShadowColor()I
    .registers 3

    .line 880
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetSpotShadowColor(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTop()I
    .registers 3

    .line 1460
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTop(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTranslationX()F
    .registers 3

    .line 1145
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationY()F
    .registers 3

    .line 1166
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationZ()F
    .registers 3

    .line 1186
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUniqueId()J
    .registers 3

    .line 1632
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUniqueId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUseCompositingLayer()Z
    .registers 3

    .line 671
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetLayerType(J)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 1487
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist hasDisplayList()Z
    .registers 3

    .line 575
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsValid(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasIdentityMatrix()Z
    .registers 3

    .line 590
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 3

    .line 1105
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasShadow()Z
    .registers 3

    .line 854
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttached()Z
    .registers 2

    .line 1679
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0}, Landroid/graphics/RenderNode$AnimationHost;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isForceDarkAllowed()Z
    .registers 3

    .line 1616
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllowForceDark(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isPivotExplicitlySet()Z
    .registers 3

    .line 1342
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public whitelist offsetLeftAndRight(I)Z
    .registers 4

    .line 1544
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist offsetTopAndBottom(I)Z
    .registers 4

    .line 1554
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result p1

    return p1
.end method

.method public blacklist output()V
    .registers 3

    .line 1564
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nOutput(J)V

    .line 1565
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 3

    .line 1684
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1687
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p1}, Landroid/graphics/RenderNode$AnimationHost;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1688
    return-void

    .line 1685
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot start this animator on a detached view!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .registers 5

    .line 459
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 460
    if-eqz v0, :cond_14

    .line 461
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object p1

    .line 462
    iput-object p1, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 463
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 465
    :cond_14
    return-void
.end method

.method public whitelist resetPivot()Z
    .registers 3

    .line 1353
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nResetPivot(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setAlpha(F)Z
    .registers 4

    .line 996
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAlpha(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setAmbientShadowColor(I)Z
    .registers 4

    .line 898
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAmbientShadowColor(JI)Z

    move-result p1

    return p1
.end method

.method public blacklist setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .registers 6

    .line 962
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 963
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    .line 962
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist setBackdropRenderEffect(Landroid/graphics/RenderEffect;)Z
    .registers 6

    .line 1028
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 1029
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    .line 1028
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetBackdropRenderEffect(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist setBottom(I)Z
    .registers 4

    .line 1442
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetBottom(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist setCameraDistance(F)Z
    .registers 5

    .line 1383
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_13

    .line 1388
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    neg-float p1, p1

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetCameraDistance(JF)Z

    move-result p1

    return p1

    .line 1384
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance must be finite & positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setClipRect(Landroid/graphics/Rect;)Z
    .registers 8

    .line 691
    if-nez p1, :cond_9

    .line 692
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result p1

    return p1

    .line 694
    :cond_9
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetClipBounds(JIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist setClipToBounds(Z)Z
    .registers 4

    .line 710
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToBounds(JZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setClipToOutline(Z)Z
    .registers 4

    .line 917
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToOutline(JZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setElevation(F)Z
    .registers 4

    .line 1115
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetElevation(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setForceDarkAllowed(Z)Z
    .registers 4

    .line 1607
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAllowForceDark(JZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setHasOverlappingRendering(Z)Z
    .registers 4

    .line 1053
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result p1

    return p1
.end method

.method public blacklist setIsTextureView()V
    .registers 3

    .line 1642
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetIsTextureView(J)V

    .line 1643
    return-void
.end method

.method public blacklist setLayerPaint(Landroid/graphics/Paint;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist setLayerType(I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result p1

    return p1
.end method

.method public blacklist setLeft(I)Z
    .registers 4

    .line 1409
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLeft(JI)Z

    move-result p1

    return p1
.end method

.method public blacklist setLeftTopRightBottom(IIII)Z
    .registers 11

    .line 1510
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist setOutline(Landroid/graphics/Outline;)Z
    .registers 10

    .line 793
    if-nez p1, :cond_9

    .line 794
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineNone(J)Z

    move-result p1

    return p1

    .line 797
    :cond_9
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    packed-switch v0, :pswitch_data_46

    .line 810
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized outline?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 806
    :pswitch_16
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget p1, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/RenderNode;->nSetOutlinePath(JJF)Z

    move-result p1

    return p1

    .line 801
    :pswitch_23
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Outline;->mRadius:F

    iget v7, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v0 .. v7}, Landroid/graphics/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result p1

    return p1

    .line 799
    :pswitch_3e
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineEmpty(J)Z

    move-result p1

    return p1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_23
        :pswitch_16
    .end packed-switch
.end method

.method public whitelist setPivotX(F)Z
    .registers 4

    .line 1303
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotX(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setPivotY(F)Z
    .registers 4

    .line 1324
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotY(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setPosition(IIII)Z
    .registers 11

    .line 1523
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist setPosition(Landroid/graphics/Rect;)Z
    .registers 8

    .line 1533
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist setProjectBackwards(Z)Z
    .registers 4

    .line 764
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setProjectionReceiver(Z)Z
    .registers 4

    .line 778
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result p1

    return p1
.end method

.method public whitelist setRenderEffect(Landroid/graphics/RenderEffect;)Z
    .registers 6

    .line 1011
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 1012
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    .line 1011
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetRenderEffect(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist setRevealClip(ZFFF)Z
    .registers 11

    .line 936
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result p1

    return p1
.end method

.method public blacklist setRight(I)Z
    .registers 4

    .line 1431
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRight(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist setRotationX(F)Z
    .registers 4

    .line 1219
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationX(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setRotationY(F)Z
    .registers 4

    .line 1240
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationY(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setRotationZ(F)Z
    .registers 4

    .line 1198
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotation(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setScaleX(F)Z
    .registers 4

    .line 1261
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleX(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setScaleY(F)Z
    .registers 4

    .line 1282
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleY(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setSpotShadowColor(I)Z
    .registers 4

    .line 872
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetSpotShadowColor(JI)Z

    move-result p1

    return p1
.end method

.method public blacklist setStaticMatrix(Landroid/graphics/Matrix;)Z
    .registers 6

    .line 947
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result p1

    return p1
.end method

.method public blacklist setTop(I)Z
    .registers 4

    .line 1420
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTop(JI)Z

    move-result p1

    return p1
.end method

.method public whitelist setTranslationX(F)Z
    .registers 4

    .line 1136
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationX(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setTranslationY(F)Z
    .registers 4

    .line 1157
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationY(JF)Z

    move-result p1

    return p1
.end method

.method public whitelist setTranslationZ(F)Z
    .registers 4

    .line 1177
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationZ(JF)Z

    move-result p1

    return p1
.end method

.method public blacklist setUsageHint(I)V
    .registers 4

    .line 1095
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetUsageHint(JI)V

    .line 1096
    return-void
.end method

.method public whitelist setUseCompositingLayer(ZLandroid/graphics/Paint;)Z
    .registers 7

    .line 657
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result p1

    .line 658
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 659
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x0

    .line 658
    :goto_16
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result p2

    or-int/2addr p1, p2

    .line 660
    return p1
.end method

.method public blacklist start(II)Landroid/graphics/RecordingCanvas;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    return-object p1
.end method

.method public blacklist stretch(FFFF)Z
    .registers 12

    .line 821
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 824
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_60

    .line 828
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_46

    .line 832
    cmpg-float v0, p4, v0

    if-lez v0, :cond_2c

    .line 836
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/RenderNode;->nStretch(JFFFF)Z

    move-result p1

    return p1

    .line 833
    :cond_2c
    move v6, p4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The max vertical stretch amount must be >0, got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_46
    move v5, p3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The max horizontal stretch amount must be >0, got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_60
    move v4, p2

    .line 825
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "vecY must be a finite, non-NaN value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 821
    :cond_7b
    move v3, p1

    .line 822
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "vecX must be a finite, non-NaN value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
