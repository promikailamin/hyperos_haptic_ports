.class public final Landroid/graphics/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderNode$AnimationHost;,
        Landroid/graphics/RenderNode$UsageHint;,
        Landroid/graphics/RenderNode$CompositePositionUpdateListener;,
        Landroid/graphics/RenderNode$PositionUpdateListener;,
        Landroid/graphics/RenderNode$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final blacklist USAGE_BACKGROUND:I = 0x1

.field public static final blacklist USAGE_BIG_VIEW:I = 0x64

.field public static final blacklist USAGE_BUTTON:I = 0x65

.field public static final blacklist USAGE_DARK_EXCLUDE_TEXT:I = 0x68

.field public static final blacklist USAGE_DARK_FILTER:I = 0x66

.field public static final blacklist USAGE_FORCE_INVERT:I = 0x67

.field public static final blacklist USAGE_FORCE_TRANSPARENT:I = 0x69

.field public static final blacklist USAGE_FOREGROUND:I = 0x2

.field public static final blacklist USAGE_INVERT_EXCLUDE_BITMAP:I = 0x6a

.field public static final blacklist USAGE_PLACEHOLDER_FOR_IMAGEVIEW:I = 0x6b

.field public static final blacklist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

.field private blacklist mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

.field private blacklist mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

.field private blacklist mHostView:Landroid/view/View;

.field private blacklist mIsForeground:Z

.field public final blacklist mNativeRenderNode:J

.field private blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RenderNode;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "nativePtr"    # J

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-wide p1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 288
    sget-object v0, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 290
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    .line 275
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "animationHost"    # Landroid/graphics/RenderNode$AnimationHost;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-static {p1}, Landroid/graphics/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 279
    sget-object v2, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 280
    iput-object p2, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 281
    return-void
.end method

.method public static blacklist adopt(J)Landroid/graphics/RenderNode;
    .registers 3
    .param p0, "nativePtr"    # J

    .line 306
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "animationHost"    # Landroid/graphics/RenderNode$AnimationHost;

    .line 294
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    return-object v0
.end method

.method private static native blacklist nAddAnimator(JJ)V
.end method

.method private static native blacklist nAddBackgroundBlendColor(JII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nClearBackgroundBlendColor(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
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

.method private static native blacklist nGetBitmapStreams(J)I
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

.method private static native blacklist nGetForceDarkUsageHint(J)I
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

.method private static native blacklist nGetSmoothCornerEnabled(J)Z
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

.method private static native blacklist nGetUsageHint(J)I
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

.method private static native blacklist nHasText(J)Z
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

.method private static native blacklist nSetBackgroundBlurMode(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBackgroundBlurRadius(JI)Z
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

.method private static native blacklist nSetIsForeground(JZ)V
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

.method private static native blacklist nSetMixEffectEnabled(JZ)Z
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

.method private static native blacklist nSetShadowSettings(JIFFFF)Z
.end method

.method private static native blacklist nSetSmoothCornerEnabled(JZ)Z
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

.method private static native blacklist nSetViewBlurMode(JI)Z
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
    .param p1, "animator"    # Landroid/graphics/animation/RenderNodeAnimator;

    .line 1826
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1829
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/animation/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nAddAnimator(JJ)V

    .line 1830
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p0}, Landroid/graphics/RenderNode$AnimationHost;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 1831
    return-void

    .line 1827
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addBackgroundBlendColor(II)Z
    .registers 5
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 1082
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RenderNode;->nAddBackgroundBlendColor(JII)Z

    move-result v0

    return v0
.end method

.method public blacklist addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 450
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 451
    .local v0, "comp":Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    if-nez v0, :cond_11

    .line 452
    new-instance v1, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/RenderNode$PositionUpdateListener;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    move-object v0, v1

    goto :goto_15

    .line 454
    :cond_11
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object v0

    .line 456
    :goto_15
    iput-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 457
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 458
    return-void
.end method

.method public whitelist beginRecording()Landroid/graphics/RecordingCanvas;
    .registers 4

    .line 529
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
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 496
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_3f

    .line 500
    invoke-static {p0, p1, p2}, Landroid/graphics/RecordingCanvas;->obtain(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 502
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 503
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->getAutoUICanvas()Lcom/miui/autoui/IAutoUICanvas;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 504
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->getAutoUICanvas()Lcom/miui/autoui/IAutoUICanvas;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/autoui/IAutoUICanvas;->setView(Landroid/view/View;)V

    .line 508
    :cond_29
    iget-object v0, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 509
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    .line 511
    invoke-virtual {v1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v2

    iget-object v3, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 510
    invoke-interface {v0, v1, v2, v3}, Landroid/view/ForceDarkHelperStub;->updateForceDarkBeginRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V

    .line 514
    :cond_3c
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    return-object v0

    .line 497
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording currently in progress - missing #endRecording() call?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearBackgroundBlendColor()Z
    .registers 3

    .line 1087
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nClearBackgroundBlendColor(J)Z

    move-result v0

    return v0
.end method

.method public blacklist clearStretch()Z
    .registers 3

    .line 844
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nClearStretch(J)Z

    move-result v0

    return v0
.end method

.method public blacklist computeApproximateMemoryAllocated()J
    .registers 3

    .line 1751
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllocatedSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist computeApproximateMemoryUsage()J
    .registers 3

    .line 1736
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUsageSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist discardDisplayList()V
    .registers 3

    .line 585
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nDiscardDisplayList(J)V

    .line 586
    return-void
.end method

.method public blacklist end(Landroid/graphics/RecordingCanvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 573
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_8

    .line 576
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 577
    return-void

    .line 574
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong canvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist endAllAnimators()V
    .registers 3

    .line 1848
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nEndAllAnimators(J)V

    .line 1849
    return-void
.end method

.method public whitelist endRecording()V
    .registers 5

    .line 541
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_23

    .line 546
    iget-object v0, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 547
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    .line 549
    invoke-virtual {v1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v2

    iget-object v3, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 548
    invoke-interface {v0, v1, v2, v3}, Landroid/view/ForceDarkHelperStub;->updateForceDarkEndRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V

    .line 552
    :cond_17
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 553
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 554
    invoke-virtual {v0, p0}, Landroid/graphics/RecordingCanvas;->finishRecording(Landroid/graphics/RenderNode;)V

    .line 555
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->recycle()V

    .line 556
    return-void

    .line 542
    .end local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No recording in progress, forgot to call #beginRecording()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist forceEndAnimators()V
    .registers 3

    .line 1853
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nForceEndAnimators(J)V

    .line 1854
    return-void
.end method

.method public whitelist getAlpha()F
    .registers 3

    .line 1108
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public whitelist getAmbientShadowColor()I
    .registers 3

    .line 935
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAmbientShadowColor(J)I

    move-result v0

    return v0
.end method

.method public blacklist getAnimationMatrix()Landroid/graphics/Matrix;
    .registers 6

    .line 1008
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1009
    .local v0, "output":Landroid/graphics/Matrix;
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nGetAnimationMatrix(JJ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1010
    return-object v0

    .line 1012
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getBitmapStreams()I
    .registers 3

    .line 244
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetBitmapStreams(J)I

    move-result v0

    return v0
.end method

.method public whitelist getBottom()I
    .registers 3

    .line 1639
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetBottom(J)I

    move-result v0

    return v0
.end method

.method public whitelist getCameraDistance()F
    .registers 3

    .line 1559
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public whitelist getClipToBounds()Z
    .registers 3

    .line 749
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToBounds(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getClipToOutline()Z
    .registers 3

    .line 955
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .registers 3

    .line 1285
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public blacklist getForceDarkUsageHint()I
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetForceDarkUsageHint(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 1657
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getInverseMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 638
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetInverseTransformMatrix(JJ)V

    .line 639
    return-void
.end method

.method public whitelist getLeft()I
    .registers 3

    .line 1612
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetLeft(J)I

    move-result v0

    return v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 628
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetTransformMatrix(JJ)V

    .line 629
    return-void
.end method

.method public whitelist getPivotX()F
    .registers 3

    .line 1473
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getPivotY()F
    .registers 3

    .line 1494
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRight()I
    .registers 3

    .line 1630
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getRotationX()F
    .registers 3

    .line 1389
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationY()F
    .registers 3

    .line 1410
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationZ()F
    .registers 3

    .line 1368
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleX()F
    .registers 3

    .line 1431
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleY()F
    .registers 3

    .line 1452
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public blacklist getSmoothCornerEnabled()Z
    .registers 3

    .line 1055
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetSmoothCornerEnabled(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getSpotShadowColor()I
    .registers 3

    .line 909
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetSpotShadowColor(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTop()I
    .registers 3

    .line 1621
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTop(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTranslationX()F
    .registers 3

    .line 1306
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationY()F
    .registers 3

    .line 1327
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationZ()F
    .registers 3

    .line 1347
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUniqueId()J
    .registers 3

    .line 1798
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUniqueId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUsageHint()I
    .registers 3

    .line 224
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUsageHint(J)I

    move-result v0

    return v0
.end method

.method public whitelist getUseCompositingLayer()Z
    .registers 3

    .line 700
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

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 1245
    iget-object v0, p0, Landroid/graphics/RenderNode;->mView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 1648
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist hasDisplayList()Z
    .registers 3

    .line 604
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsValid(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasIdentityMatrix()Z
    .registers 3

    .line 619
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 3

    .line 1266
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasShadow()Z
    .registers 3

    .line 883
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasText()Z
    .registers 3

    .line 238
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasText(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttached()Z
    .registers 2

    .line 1835
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/graphics/RenderNode$AnimationHost;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isForceDarkAllowed()Z
    .registers 3

    .line 1782
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllowForceDark(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isPivotExplicitlySet()Z
    .registers 3

    .line 1503
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public whitelist offsetLeftAndRight(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 1705
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist offsetTopAndBottom(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 1715
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist output()V
    .registers 3

    .line 1725
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nOutput(J)V

    .line 1726
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 4
    .param p1, "animatorSet"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 1840
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1843
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p1}, Landroid/graphics/RenderNode$AnimationHost;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1844
    return-void

    .line 1841
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 468
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 469
    .local v0, "comp":Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    if-eqz v0, :cond_14

    .line 470
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object v0

    .line 471
    iput-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 472
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 474
    :cond_14
    return-void
.end method

.method public whitelist resetPivot()Z
    .registers 3

    .line 1514
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nResetPivot(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setAlpha(F)Z
    .registers 4
    .param p1, "alpha"    # F

    .line 1025
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setAmbientShadowColor(I)Z
    .registers 4
    .param p1, "color"    # I

    .line 927
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAmbientShadowColor(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 991
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 992
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    .line 991
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setBackgroundBlurMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 1077
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetBackgroundBlurMode(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setBackgroundBlurRadius(I)Z
    .registers 4
    .param p1, "blurRadius"    # I

    .line 1072
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetBackgroundBlurRadius(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setBottom(I)Z
    .registers 4
    .param p1, "bottom"    # I

    .line 1603
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setCameraDistance(F)Z
    .registers 5
    .param p1, "distance"    # F

    .line 1544
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_13

    .line 1549
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    neg-float v2, p1

    invoke-static {v0, v1, v2}, Landroid/graphics/RenderNode;->nSetCameraDistance(JF)Z

    move-result v0

    return v0

    .line 1545
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance must be finite & positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setClipRect(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 720
    if-nez p1, :cond_9

    .line 721
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result v0

    return v0

    .line 723
    :cond_9
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v1 .. v6}, Landroid/graphics/RenderNode;->nSetClipBounds(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setClipToBounds(Z)Z
    .registers 4
    .param p1, "clipToBounds"    # Z

    .line 739
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setClipToOutline(Z)Z
    .registers 4
    .param p1, "clipToOutline"    # Z

    .line 946
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setElevation(F)Z
    .registers 4
    .param p1, "lift"    # F

    .line 1276
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setForceDarkAllowed(Z)Z
    .registers 4
    .param p1, "allow"    # Z

    .line 1769
    iget-object v0, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Landroid/graphics/RenderNode;->mIsForeground:Z

    if-eqz v1, :cond_f

    .line 1770
    invoke-virtual {v0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewForceDarkStateStub;->setForceDarkAllowed(Z)V

    .line 1773
    :cond_f
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAllowForceDark(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setHasOverlappingRendering(Z)Z
    .registers 4
    .param p1, "hasOverlappingRendering"    # Z

    .line 1122
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setHostView(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isForeground"    # Z

    .line 1222
    iput-object p1, p0, Landroid/graphics/RenderNode;->mHostView:Landroid/view/View;

    .line 1223
    iput-boolean p2, p0, Landroid/graphics/RenderNode;->mIsForeground:Z

    .line 1224
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p2}, Landroid/graphics/RenderNode;->nSetIsForeground(JZ)V

    .line 1225
    return-void
.end method

.method public blacklist setLayerPaint(Landroid/graphics/Paint;)Z
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLayerType(I)Z
    .registers 4
    .param p1, "layerType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setLeft(I)Z
    .registers 4
    .param p1, "left"    # I

    .line 1570
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setLeftTopRightBottom(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1671
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public blacklist setMixEffectEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 1097
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetMixEffectEnabled(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setOutline(Landroid/graphics/Outline;)Z
    .registers 11
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 822
    if-nez p1, :cond_9

    .line 823
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineNone(J)Z

    move-result v0

    return v0

    .line 826
    :cond_9
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    packed-switch v0, :pswitch_data_46

    .line 839
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :pswitch_16
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nSetOutlinePath(JJF)Z

    move-result v0

    return v0

    .line 830
    :pswitch_23
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Outline;->mRadius:F

    iget v8, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v1 .. v8}, Landroid/graphics/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    return v0

    .line 828
    :pswitch_3e
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineEmpty(J)Z

    move-result v0

    return v0

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
    .param p1, "pivotX"    # F

    .line 1464
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setPivotY(F)Z
    .registers 4
    .param p1, "pivotY"    # F

    .line 1485
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setPosition(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1684
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setPosition(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1694
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setProjectBackwards(Z)Z
    .registers 4
    .param p1, "shouldProject"    # Z

    .line 793
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setProjectionReceiver(Z)Z
    .registers 4
    .param p1, "shouldRecieve"    # Z

    .line 807
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setRenderEffect(Landroid/graphics/RenderEffect;)Z
    .registers 6
    .param p1, "renderEffect"    # Landroid/graphics/RenderEffect;

    .line 1040
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 1041
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x0

    .line 1040
    :goto_b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetRenderEffect(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setRevealClip(ZFFF)Z
    .registers 11
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .line 965
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setRight(I)Z
    .registers 4
    .param p1, "right"    # I

    .line 1592
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationX(F)Z
    .registers 4
    .param p1, "rotationX"    # F

    .line 1380
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationY(F)Z
    .registers 4
    .param p1, "rotationY"    # F

    .line 1401
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationZ(F)Z
    .registers 4
    .param p1, "rotation"    # F

    .line 1359
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setScaleX(F)Z
    .registers 4
    .param p1, "scaleX"    # F

    .line 1422
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setScaleY(F)Z
    .registers 4
    .param p1, "scaleY"    # F

    .line 1443
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public blacklist setShadowSettings(IFFFF)Z
    .registers 13
    .param p1, "color"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "radius"    # F
    .param p5, "dispersion"    # F

    .line 217
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/RenderNode;->nSetShadowSettings(JIFFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setSmoothCornerEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 1049
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetSmoothCornerEnabled(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setSpotShadowColor(I)Z
    .registers 4
    .param p1, "color"    # I

    .line 901
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetSpotShadowColor(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setStaticMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 976
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setTop(I)Z
    .registers 4
    .param p1, "top"    # I

    .line 1581
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationX(F)Z
    .registers 4
    .param p1, "translationX"    # F

    .line 1297
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationY(F)Z
    .registers 4
    .param p1, "translationY"    # F

    .line 1318
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationZ(F)Z
    .registers 4
    .param p1, "translationZ"    # F

    .line 1338
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public blacklist setUsageHint(I)V
    .registers 4
    .param p1, "usageHint"    # I

    .line 1256
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetUsageHint(JI)V

    .line 1257
    return-void
.end method

.method public whitelist setUseCompositingLayer(ZLandroid/graphics/Paint;)Z
    .registers 8
    .param p1, "forceToLayer"    # Z
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 686
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_6

    const/4 v2, 0x2

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    .line 687
    .local v0, "didChange":Z
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 688
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_16

    :cond_14
    const-wide/16 v3, 0x0

    .line 687
    :goto_16
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 689
    return v0
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1238
    iput-object p1, p0, Landroid/graphics/RenderNode;->mView:Landroid/view/View;

    .line 1239
    return-void
.end method

.method public blacklist setViewBlurMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 1092
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetViewBlurMode(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist start(II)Landroid/graphics/RecordingCanvas;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stretch(FFFF)Z
    .registers 12
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F
    .param p3, "maxStretchAmountX"    # F
    .param p4, "maxStretchAmountY"    # F

    .line 850
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 853
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 857
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_45

    .line 861
    cmpg-float v0, p4, v0

    if-lez v0, :cond_2c

    .line 865
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/RenderNode;->nStretch(JFFFF)Z

    move-result v0

    return v0

    .line 862
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max vertical stretch amount must be >0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max horizontal stretch amount must be >0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vecY must be a finite, non-NaN value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vecX must be a finite, non-NaN value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
