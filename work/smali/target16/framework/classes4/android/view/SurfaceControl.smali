.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$NativeProperties;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$OnJankDataListenerRegistration;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$TrustedPresentationCallback;,
        Landroid/view/SurfaceControl$TrustedPresentationThresholds;,
        Landroid/view/SurfaceControl$TransactionStats;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;,
        Landroid/view/SurfaceControl$RefreshRateRanges;,
        Landroid/view/SurfaceControl$RefreshRateRange;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$FrameRateSelectionStrategy;,
        Landroid/view/SurfaceControl$CachingHint;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final blacklist BUFFER_TRANSFORM_MIRROR_HORIZONTAL_ROTATE_90:I = 0x5

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final blacklist BUFFER_TRANSFORM_MIRROR_VERTICAL_ROTATE_90:I = 0x6

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final blacklist CACHING_DISABLED:I = 0x0

.field public static final blacklist CACHING_ENABLED:I = 0x1

.field public static final blacklist CAN_OCCLUDE_PRESENTATION:I = 0x1000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CURSOR_WINDOW:I = 0x2000

.field public static final blacklist DISPLAY_DECORATION:I = 0x200

.field public static final blacklist DISPLAY_RECEIVES_INPUT:I = 0x1

.field public static final blacklist ENABLE_BACKPRESSURE:I = 0x100

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_OVERRIDE_CHILDREN:I = 0x1

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_PROPAGATE:I = 0x0

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_SELF:I = 0x2

.field public static final blacklist FX_SURFACE_BLAST:I = 0x40000

.field public static final blacklist FX_SURFACE_CONTAINER:I = 0x80000

.field public static final blacklist FX_SURFACE_EFFECT:I = 0x20000

.field public static final greylist-max-o FX_SURFACE_MASK:I = 0xf0000

.field public static final greylist-max-o FX_SURFACE_NORMAL:I = 0x0

.field public static final greylist-max-r HIDDEN:I = 0x4

.field public static final blacklist IGNORE_DESTINATION_FRAME:I = 0x400

.field public static final blacklist LAYER_IS_REFRESH_RATE_INDICATOR:I = 0x800

.field public static final blacklist METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final blacklist METADATA_GAME_MODE:I = 0x8

.field public static final blacklist METADATA_MOUSE_CURSOR:I = 0x4

.field public static final blacklist METADATA_OWNER_PID:I = 0x6

.field public static final blacklist METADATA_OWNER_UID:I = 0x1

.field public static final blacklist METADATA_TASK_ID:I = 0x3

.field public static final blacklist METADATA_WINDOW_TYPE:I = 0x2

.field public static final greylist-max-o NON_PREMULTIPLIED:I = 0x100

.field public static final blacklist NO_COLOR_FILL:I = 0x4000

.field public static final greylist-max-o OPAQUE:I = 0x400

.field public static final greylist-max-o POWER_MODE_DOZE:I = 0x1

.field public static final greylist-max-o POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final greylist-max-o POWER_MODE_NORMAL:I = 0x2

.field public static final greylist-max-o POWER_MODE_OFF:I = 0x0

.field public static final greylist-max-o POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final greylist-max-o PROTECTED_APP:I = 0x800

.field public static final blacklist RECOVERABLE_FROM_BUFFER_STUFFING:I = 0x2000

.field private static final blacklist RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

.field public static final greylist-max-o SECURE:I = 0x80

.field public static final blacklist SKIP_SCREENSHOT:I = 0x40

.field private static final greylist-max-o SURFACE_HIDDEN:I = 0x1

.field private static final greylist-max-o SURFACE_OPAQUE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceControl"

.field private static volatile blacklist sDebugUsageAfterRelease:Z

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCallsite:Ljava/lang/String;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mChoreographerLock:Ljava/lang/Object;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private greylist-max-o mHeight:I

.field private blacklist mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field public greylist-max-o mNativeObject:J

.field private blacklist mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

.field private blacklist mReleaseStack:Ljava/lang/Throwable;

.field private blacklist mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeTrustedPresentationCallbackFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->getNativeTrustedPresentationCallbackFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionBarrier(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionBarrier(JLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeApplyTransaction(JZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTrustedPresentationCallback(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeClearTrustedPresentationCallback(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeEnableDebugLogCallPoints(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeEnableDebugLogCallPoints(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeFlushJankData(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetJankDataListenerWrapperFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetJankDataListenerWrapperFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetTransactionId(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetTransactionId(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeMergeTransaction(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveCurrentInputFocus(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeRemoveCurrentInputFocus(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveJankDataListener(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReparent(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSanitize(JII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSanitize(JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAlpha(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAnimationTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBackgroundBlurRadius(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBackgroundBlurScale(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurScale(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBorderSettings(JJLandroid/os/Parcel;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBorderSettings(JJLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBoxShadowSettings(JJLandroid/os/Parcel;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBoxShadowSettings(JJLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBufferTransform(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBufferTransform(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCachingHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCachingHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetClientDrawnCornerRadius(JJFFFFFFFF)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetClientDrawnCornerRadius(JJFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColor(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorTransform(JJ[F[F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetContentPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetContentPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCornerRadius(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCrop(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetCrop(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDataSpace(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDataSpace(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDefaultFrameRateCompatibility(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredHdrHeadroom(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDesiredHdrHeadroom(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredPresentTimeNanos(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDesiredPresentTimeNanos(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDimmingEnabled(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDimmingEnabled(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDropInputMode(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDropInputMode(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupEnd(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(JLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupStart(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(JLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEdgeExtensionEffect(JJZZZZ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetEdgeExtensionEffect(JJZZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetExtendedRangeBrightness(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFixedTransformHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFlags(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRate(JJFII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateCategory(JJIZ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFrameRateCategory(JJIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionStrategy(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionStrategy(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameTimelineVsync(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetFrameTimelineVsync(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayer(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayerStack(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLuts(JJ[F[I[I[I[I)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeSetLuts(JJ[F[I[I[I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMatrix(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPictureProfileId(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPictureProfileId(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPosition(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetRelativeLayer(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetScale(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetScale(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetShadowRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetSystemContentPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetSystemContentPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedOverlay(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSurfaceFlushJankData(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSurfaceFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeUnsetBuffer(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeUnsetBuffer(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 116
    new-instance v0, Landroid/view/SurfaceControl$NativeProperties;

    const-string v1, "<released>"

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/SurfaceControl$NativeProperties;-><init>(JLjava/lang/String;I)V

    sput-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    .line 743
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 745
    nop

    .line 746
    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 747
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeSurfaceControlFinalizer()J

    move-result-wide v1

    .line 746
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1771
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 713
    sget-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 727
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1595
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 713
    sget-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 727
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1585
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 1586
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 713
    sget-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 727
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1581
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1582
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 713
    sget-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 727
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1539
    if-eqz p2, :cond_95

    .line 1543
    iput p3, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1544
    iput p4, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1545
    iput-object p9, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p9

    .line 1547
    nop

    .line 1549
    if-eqz p8, :cond_70

    :try_start_2d
    invoke-virtual {p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 1550
    invoke-virtual {p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    const/4 v0, 0x0

    move v1, v0

    :goto_3c
    invoke-virtual {p8}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 1552
    invoke-virtual {p8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    nop

    .line 1554
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1555
    invoke-virtual {p8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1553
    invoke-virtual {p9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1551
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1557
    :cond_69
    invoke-virtual {p9, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_70

    .line 1562
    :catchall_6d
    move-exception v0

    move-object p1, v0

    goto :goto_91

    .line 1559
    :cond_70
    :goto_70
    nop

    .line 1560
    const-wide/16 v0, 0x0

    if-eqz p7, :cond_78

    iget-wide p7, p7, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_79

    :cond_78
    move-wide p7, v0

    .line 1559
    :goto_79
    invoke-static/range {p1 .. p9}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide p1
    :try_end_7d
    .catchall {:try_start_2d .. :try_end_7d} :catchall_6d

    .line 1562
    invoke-virtual {p9}, Landroid/os/Parcel;->recycle()V

    .line 1563
    nop

    .line 1564
    cmp-long p3, p1, v0

    if-eqz p3, :cond_89

    .line 1568
    invoke-direct {p0, p1, p2, p10}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1569
    return-void

    .line 1565
    :cond_89
    new-instance p1, Landroid/view/Surface$OutOfResourcesException;

    const-string p2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {p1, p2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1562
    :goto_91
    invoke-virtual {p9}, Landroid/os/Parcel;->recycle()V

    .line 1563
    throw p1

    .line 1540
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist assignNativeObject(JLjava/lang/String;)V
    .registers 8

    .line 1057
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 1058
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1060
    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    .line 1061
    sget-object v1, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1062
    invoke-virtual {v1, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 1064
    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1065
    iget-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;->getNativeProperties(J)Landroid/view/SurfaceControl$NativeProperties;

    move-result-object p1

    iput-object p1, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 1066
    sget-boolean p1, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz p1, :cond_35

    iget-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_35

    .line 1067
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Assigned invalid nativeObject"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    goto :goto_38

    .line 1069
    :cond_35
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1071
    :goto_38
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 1072
    if-eqz v0, :cond_44

    .line 1075
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlRegistry;->add(Landroid/view/SurfaceControl;)V

    .line 1077
    :cond_44
    return-void
.end method

.method public static blacklist bootFinished()Z
    .registers 1

    .line 2952
    invoke-static {}, Landroid/view/SurfaceControl;->nativeBootFinished()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o checkNotReleased()V
    .registers 5

    .line 1841
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 1842
    iget-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    .line 1843
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage after release of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1846
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeObject of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1850
    :cond_46
    return-void
.end method

.method public static greylist-max-o clearAnimationFrameStats()Z
    .registers 1

    .line 1909
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 2

    .line 2707
    if-eqz p0, :cond_6

    .line 2711
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    .line 2712
    return-void

    .line 2708
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist closeTransaction()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1887
    return-void
.end method

.method public static greylist-max-o getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 1

    .line 1916
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result p0

    return p0
.end method

.method public static blacklist getBootDisplayModeSupport()Z
    .registers 1

    .line 2688
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 6

    .line 2662
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    .line 2663
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2664
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 2665
    if-eqz v0, :cond_28

    array-length v1, v0

    if-ne v1, v2, :cond_28

    .line 2666
    nop

    :goto_19
    if-ge v4, v2, :cond_28

    .line 2667
    aget v1, v0, v4

    invoke-static {v1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2668
    if-eqz v1, :cond_25

    .line 2669
    aput-object v1, v3, v4

    .line 2666
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2673
    :cond_28
    return-object v3
.end method

.method public static blacklist getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 2

    .line 2572
    if-eqz p0, :cond_7

    .line 2576
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object p0

    return-object p0

    .line 2573
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 1

    .line 2755
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static blacklist getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 1

    .line 2926
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 2

    .line 2639
    if-eqz p0, :cond_7

    .line 2643
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object p0

    return-object p0

    .line 2640
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 5

    .line 2192
    if-eqz p0, :cond_7

    .line 2195
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0

    .line 2193
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2

    .line 2165
    if-eqz p0, :cond_7

    .line 2168
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0

    .line 2166
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "displayToken must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 2

    .line 2157
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getGPUContextPriority()I
    .registers 1

    .line 2944
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxPictureProfiles()I
    .registers 1

    .line 2979
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetMaxPictureProfiles()I

    move-result v0

    return v0
.end method

.method private blacklist getNativeProperties(J)Landroid/view/SurfaceControl$NativeProperties;
    .registers 7

    .line 1049
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 1050
    sget-object p1, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    return-object p1

    .line 1052
    :cond_9
    new-instance v0, Landroid/view/SurfaceControl$NativeProperties;

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v1

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetName(J)Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/view/SurfaceControl$NativeProperties;-><init>(JLjava/lang/String;I)V

    .line 1052
    return-object v0
.end method

.method private static native blacklist getNativeTrustedPresentationCallbackFinalizer()J
.end method

.method public static blacklist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 1

    .line 2681
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getProtectedContentSupport()Z
    .registers 1

    .line 2741
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
    .registers 1

    .line 5625
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 2

    .line 2150
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    .line 5617
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    .line 5618
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5619
    return-void
.end method

.method public static blacklist mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2

    .line 2838
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist mirrorSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 4

    .line 2870
    if-eqz p1, :cond_5

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 2871
    :goto_7
    iget-wide p0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {p0, p1, v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(JJ)J

    move-result-wide p0

    .line 2872
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    .line 2873
    const-string v1, "mirrorSurface"

    invoke-direct {v0, p0, p1, v1}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 2874
    return-object v0
.end method

.method private static native blacklist nativeAddJankDataListener(J)V
.end method

.method private static native blacklist nativeAddTransactionBarrier(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native blacklist nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$TransactionStats;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
.end method

.method private static native blacklist nativeApplyTransaction(JZZ)V
.end method

.method private static native blacklist nativeBootFinished()Z
.end method

.method private static native greylist-max-o nativeClearAnimationFrameStats()Z
.end method

.method private static native blacklist nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native greylist-max-o nativeClearContentFrameStats(J)Z
.end method

.method private static native blacklist nativeClearTransaction(J)V
.end method

.method private static native blacklist nativeClearTrustedPresentationCallback(JJ)V
.end method

.method private static native blacklist nativeCopyFromSurfaceControl(J)J
.end method

.method private static native blacklist nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native blacklist nativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native blacklist nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
.end method

.method private static native greylist-max-o nativeCreateTransaction()J
.end method

.method private static native greylist-max-o nativeDisconnect(J)V
.end method

.method private static native blacklist nativeEnableDebugLogCallPoints(J)V
.end method

.method private static native blacklist nativeFlushJankData(J)V
.end method

.method private static native greylist-max-o nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native blacklist nativeGetBootDisplayModeSupport()Z
.end method

.method private static native blacklist nativeGetCompositionDataspaces()[I
.end method

.method private static native greylist-max-o nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native blacklist nativeGetDefaultApplyToken()Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.end method

.method private static native blacklist nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native blacklist nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
.end method

.method private static native blacklist nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native blacklist nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native blacklist nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native blacklist nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native blacklist nativeGetGPUContextPriority()I
.end method

.method private static native blacklist nativeGetHandle(J)J
.end method

.method private static native blacklist nativeGetJankDataListenerWrapperFinalizer()J
.end method

.method private static native blacklist nativeGetLayerId(J)I
.end method

.method private static native blacklist nativeGetMaxPictureProfiles()I
.end method

.method private static native blacklist nativeGetName(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetNativeSurfaceControlFinalizer()J
.end method

.method private static native greylist-max-o nativeGetNativeTransactionFinalizer()J
.end method

.method private static native blacklist nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;
.end method

.method private static native blacklist nativeGetProtectedContentSupport()Z
.end method

.method private static native blacklist nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
.end method

.method private static native blacklist nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native blacklist nativeGetTransactionId(J)J
.end method

.method private static native blacklist nativeGetTransformHint(J)I
.end method

.method private static native greylist-max-o nativeMergeTransaction(JJ)V
.end method

.method private static native blacklist nativeMirrorSurface(JJ)J
.end method

.method private static native blacklist nativeNotifyShutdown()V
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native blacklist nativeRemoveJankDataListener(JJ)V
.end method

.method private static native blacklist nativeReparent(JJJ)V
.end method

.method private static native blacklist nativeSanitize(JII)V
.end method

.method private static native greylist-max-o nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native greylist-max-o nativeSetAlpha(JJF)V
.end method

.method private static native greylist-max-o nativeSetAnimationTransaction(J)V
.end method

.method private static native blacklist nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native blacklist nativeSetBackgroundBlurScale(JJF)V
.end method

.method private static native blacklist nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native blacklist nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
.end method

.method private static native blacklist nativeSetBorderSettings(JJLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetBoxShadowSettings(JJLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/hardware/HardwareBuffer;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeSetBufferTransform(JJI)V
.end method

.method private static native blacklist nativeSetCachingHint(JJI)V
.end method

.method private static native blacklist nativeSetCanOccludePresentation(JJZ)V
.end method

.method private static native blacklist nativeSetClientDrawnCornerRadius(JJFFFFFFFF)V
.end method

.method private static native greylist-max-o nativeSetColor(JJ[F)V
.end method

.method private static native blacklist nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native blacklist nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native blacklist nativeSetContentPriority(JJI)V
.end method

.method private static native blacklist nativeSetCornerRadius(JJF)V
.end method

.method private static native blacklist nativeSetCornerRadius(JJFFFF)V
.end method

.method private static native blacklist nativeSetCrop(JJFFFF)V
.end method

.method private static native blacklist nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetDataSpace(JJI)V
.end method

.method private static native blacklist nativeSetDefaultApplyToken(Landroid/os/IBinder;)V
.end method

.method private static native blacklist nativeSetDefaultFrameRateCompatibility(JJI)V
.end method

.method private static native blacklist nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native blacklist nativeSetDesiredHdrHeadroom(JJF)V
.end method

.method private static native blacklist nativeSetDesiredPresentTimeNanos(JJ)V
.end method

.method private static native blacklist nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native blacklist nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native blacklist nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native blacklist nativeSetDisplayFlags(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native greylist-max-o nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native greylist-max-o nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native blacklist nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native blacklist nativeSetDropInputMode(JJI)V
.end method

.method private static native blacklist nativeSetEarlyWakeupEnd(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetEarlyWakeupStart(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetEdgeExtensionEffect(JJZZZZ)V
.end method

.method private static native blacklist nativeSetExtendedRangeBrightness(JJFF)V
.end method

.method private static native blacklist nativeSetFixedTransformHint(JJI)V
.end method

.method private static native greylist-max-o nativeSetFlags(JJII)V
.end method

.method private static native blacklist nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native blacklist nativeSetFrameRate(JJFII)V
.end method

.method private static native blacklist nativeSetFrameRateCategory(JJIZ)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionStrategy(JJI)V
.end method

.method private static native blacklist nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native blacklist nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native blacklist nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native blacklist nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native greylist-max-o nativeSetLayer(JJI)V
.end method

.method private static native greylist-max-o nativeSetLayerStack(JJI)V
.end method

.method private static native blacklist nativeSetLuts(JJ[F[I[I[I[I)V
.end method

.method private static native greylist-max-o nativeSetMatrix(JJFFFF)V
.end method

.method private static native blacklist nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetPictureProfileId(JJJ)V
.end method

.method private static native greylist-max-o nativeSetPosition(JJFF)V
.end method

.method private static native blacklist nativeSetRelativeLayer(JJJI)V
.end method

.method private static native blacklist nativeSetScale(JJFF)V
.end method

.method private static native blacklist nativeSetShadowRadius(JJF)V
.end method

.method private static native blacklist nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native blacklist nativeSetSystemContentPriority(JJI)V
.end method

.method private static native blacklist nativeSetTransformHint(JI)V
.end method

.method private static native greylist-max-o nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetTrustedOverlay(JJI)V
.end method

.method private static native blacklist nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
.end method

.method private static native greylist-max-o nativeSetWindowCrop(JJIIII)V
.end method

.method private static native blacklist nativeSurfaceFlushJankData(J)V
.end method

.method private static native blacklist nativeUnsetBuffer(JJ)V
.end method

.method private static native blacklist nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist notifyShutdown()V
    .registers 0

    .line 5633
    invoke-static {}, Landroid/view/SurfaceControl;->nativeNotifyShutdown()V

    .line 5634
    return-void
.end method

.method public static greylist openTransaction()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1874
    return-void
.end method

.method public static blacklist rotationToBufferTransform(I)I
    .registers 4

    .line 428
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_24

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SurfaceControl"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v0

    .line 432
    :pswitch_1d
    const/4 p0, 0x7

    return p0

    .line 431
    :pswitch_1f
    const/4 p0, 0x3

    return p0

    .line 430
    :pswitch_21
    const/4 p0, 0x4

    return p0

    .line 429
    :pswitch_23
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public static greylist-max-o setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 2

    .line 2650
    if-eqz p0, :cond_7

    .line 2653
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result p0

    return p0

    .line 2651
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 2

    .line 2718
    if-eqz p0, :cond_6

    .line 2722
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 2723
    return-void

    .line 2719
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 2

    .line 2696
    if-eqz p0, :cond_6

    .line 2700
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    .line 2701
    return-void

    .line 2697
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setDebugUsageAfterRelease(Z)V
    .registers 2

    .line 1642
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1643
    return-void

    .line 1645
    :cond_7
    sput-boolean p0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 1646
    return-void
.end method

.method public static blacklist setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 3

    .line 2554
    if-eqz p0, :cond_1d

    .line 2557
    if-eqz p1, :cond_15

    .line 2560
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_d

    .line 2564
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    return p0

    .line 2561
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "defaultMode must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2558
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2555
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3

    .line 2776
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result p0

    return p0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 9

    .line 2807
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4a

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4a

    .line 2813
    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_31

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_31

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2c

    cmpl-float v0, p1, v3

    if-nez v0, :cond_31

    .line 2818
    :cond_2c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result p0

    return p0

    .line 2815
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2810
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 2

    .line 2140
    if-eqz p0, :cond_6

    .line 2143
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 2144
    return-void

    .line 2141
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 5

    .line 2176
    if-eqz p0, :cond_13

    .line 2180
    shr-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_b

    .line 2183
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result p0

    return p0

    .line 2181
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid componentMask when enabling sampling"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2177
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setGameContentType(Landroid/os/IBinder;Z)V
    .registers 2

    .line 2729
    if-eqz p0, :cond_6

    .line 2733
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    .line 2734
    return-void

    .line 2730
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setGlobalShadowSettings([F[FFFF)V
    .registers 5

    .line 2908
    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2909
    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2910
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    .line 2911
    return-void
.end method

.method private static blacklist validateColorArg([F)V
    .registers 6

    .line 2880
    array-length v0, p0

    const/4 v1, 0x4

    const-string v2, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    if-ne v0, v1, :cond_21

    .line 2883
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    aget v3, p0, v1

    .line 2884
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1a

    .line 2883
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2885
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2888
    :cond_20
    return-void

    .line 2881
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist addOnJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 3

    .line 2936
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-direct {v0, p0, p1}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$OnJankDataListener;)V

    return-object v0
.end method

.method public blacklist addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5

    .line 760
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 764
    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 765
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public greylist-max-o clearContentFrameStats()Z
    .registers 3

    .line 1893
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1894
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public blacklist copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5

    .line 1083
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1084
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1085
    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1086
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1087
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1614
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disconnect()V
    .registers 5

    .line 1835
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1836
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 1838
    :cond_d
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1764
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1765
    const-wide v0, 0x10500000001L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1766
    iget-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-object v0, v0, Landroid/view/SurfaceControl$NativeProperties;->name:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1767
    const-wide v0, 0x10500000003L

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1768
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1769
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1788
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1789
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1791
    :cond_9
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 1793
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1793
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1794
    throw v0
.end method

.method blacklist getCallsite()Ljava/lang/String;
    .registers 2

    .line 1668
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .registers 3

    .line 1703
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1704
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1705
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_14

    .line 1706
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl;->getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1708
    :cond_14
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    .line 1709
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;
    .registers 5

    .line 1727
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1728
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1729
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_15

    .line 1730
    iget-object v1, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-wide v1, v1, Landroid/view/SurfaceControl$NativeProperties;->nativeHandle:J

    invoke-static {v1, v2, p1}, Landroid/view/Choreographer;->getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_1d

    .line 1732
    :cond_15
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->isTheLooperSame(Landroid/os/Looper;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1736
    :goto_1d
    iget-object p1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object p1

    .line 1733
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Choreographer already exists with a different looper"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1737
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public greylist-max-o getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4

    .line 1901
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1902
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o getHeight()I
    .registers 3

    .line 1932
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1933
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 1934
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getLayerId()I
    .registers 2

    .line 5612
    iget-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget v0, v0, Landroid/view/SurfaceControl$NativeProperties;->layerId:I

    return v0
.end method

.method public blacklist getLocalOwnerView()Landroid/view/View;
    .registers 2

    .line 1945
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1676
    iget-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-object v0, v0, Landroid/view/SurfaceControl$NativeProperties;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTransformHint()I
    .registers 3

    .line 5591
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 5592
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidth()I
    .registers 3

    .line 1923
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1924
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 1925
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist hasChoreographer()Z
    .registers 3

    .line 1750
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1752
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6

    .line 1688
    iget-object p1, p1, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-wide v0, p1, Landroid/view/SurfaceControl$NativeProperties;->nativeHandle:J

    iget-object p1, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-wide v2, p1, Landroid/view/SurfaceControl$NativeProperties;->nativeHandle:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist isValid()Z
    .registers 5

    .line 1860
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 1598
    if-eqz p1, :cond_22

    .line 1602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1605
    nop

    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1607
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    goto :goto_1c

    .line 1606
    :cond_1a
    const-wide/16 v0, 0x0

    .line 1609
    :goto_1c
    const-string p1, "readFromParcel"

    invoke-direct {p0, v0, v1, p1}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1610
    return-void

    .line 1599
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist release()V
    .registers 6

    .line 1808
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4d

    .line 1809
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1810
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string v4, "release"

    invoke-virtual {v0, v4, v1, p0, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1813
    :cond_16
    iget-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1814
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1815
    sget-object v0, Landroid/view/SurfaceControl;->RELEASED_NATIVE_PROPERTIES:Landroid/view/SurfaceControl$NativeProperties;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    .line 1816
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_2e

    .line 1817
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1819
    :cond_2e
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1820
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_36
    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v2, :cond_41

    .line 1822
    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->invalidate()V

    .line 1823
    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    .line 1825
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_4a

    .line 1826
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V

    goto :goto_4d

    .line 1825
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1

    .line 1828
    :cond_4d
    :goto_4d
    return-void
.end method

.method public blacklist removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 4

    .line 777
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 779
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 780
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 782
    :cond_14
    monitor-exit v0

    return p1

    .line 783
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist resize(II)V
    .registers 5

    .line 5582
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 5583
    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 5584
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    .line 5585
    return-void
.end method

.method public blacklist setTransformHint(I)V
    .registers 4

    .line 5605
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    .line 5606
    return-void
.end method

.method public blacklist setUnreleasedWarningCallSite(Ljava/lang/String;)V
    .registers 4

    .line 1656
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1657
    return-void

    .line 1659
    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1, p1}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iput-object p1, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    .line 1661
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mNativeProperties:Landroid/view/SurfaceControl$NativeProperties;

    iget-object v1, v1, Landroid/view/SurfaceControl$NativeProperties;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1951
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1950
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1619
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_7

    .line 1620
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1622
    :cond_7
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 1627
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    :goto_22
    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 1631
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_2e

    .line 1632
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1634
    :cond_2e
    return-void
.end method
