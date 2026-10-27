.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$GlobalTransactionWrapper;,
        Landroid/view/SurfaceControl$MiuiTransaction;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$WallpaperCaptureArgs;,
        Landroid/view/SurfaceControl$LayerCaptureArgs;,
        Landroid/view/SurfaceControl$DisplayCaptureArgs;,
        Landroid/view/SurfaceControl$CaptureArgs;,
        Landroid/view/SurfaceControl$SyncScreenCaptureListener;,
        Landroid/view/SurfaceControl$ScreenCaptureListener;,
        Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_90:I = 0x4

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

.field private static final blacklist FLAG_CAST:I = 0x800

.field public static final blacklist FX_SURFACE_BLAST:I = 0x40000

.field public static final blacklist FX_SURFACE_CONTAINER:I = 0x80000

.field public static final blacklist FX_SURFACE_EFFECT:I = 0x20000

.field public static final greylist-max-o FX_SURFACE_MASK:I = 0xf0000

.field public static final greylist-max-o FX_SURFACE_NORMAL:I = 0x0

.field public static final greylist-max-r HIDDEN:I = 0x4

.field private static final blacklist INTERNAL_DATASPACE_DISPLAY_P3:I = 0x88a0000

.field private static final blacklist INTERNAL_DATASPACE_SCRGB:I = 0x18810000

.field private static final blacklist INTERNAL_DATASPACE_SRGB:I = 0x8810000

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

.field public static final greylist-max-o SECURE:I = 0x80

.field public static final blacklist SKIP_SCREENSHOT:I = 0x40

.field private static final greylist-max-o SURFACE_HIDDEN:I = 0x1

.field private static final greylist-max-o SURFACE_OPAQUE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceControl"

.field private static final blacklist USE_PARENT_SELF_BLUR:I = 0x10000

.field private static blacklist mCastLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

.field static greylist-max-o sTransactionNestCount:J


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mDebugRelease:Z

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

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mNativeHandle:J

.field public greylist-max-o mNativeObject:J

.field private blacklist mPropDynamicLog:Z

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

.method static bridge synthetic blacklist -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCastLayer()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeApplyMiuiTransaction(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyMiuiTransaction(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeApplyTransaction(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateMiuiTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateMiuiTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeDeferAnimation(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeDeferAnimation(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeEnableWallpaperAnim(JZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeEnableWallpaperAnim(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
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

.method static bridge synthetic blacklist -$$Nest$smnativeReparent(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSanitize(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSanitize(J)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBlurScaleRatio(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBlurScaleRatio(JJF)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetCastMode(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetCastMode(JJLandroid/os/IBinder;Z)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupEnd(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupStart(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRate(JJFII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetHdrDimmer(JJZ[[FI[[FI)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeSetHdrDimmer(JJZ[[FI[[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetHdrDimmerRatio(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetHdrDimmerRatio(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLastFrame(JJLandroid/os/IBinder;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetLastFrame(JJLandroid/os/IBinder;Z)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetMiBlendModes(JJ[[II)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMiBlendModes(JJ[[II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMiShadow(JJIFFFFF[F)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/view/SurfaceControl;->nativeSetMiShadow(JJIFFFFF[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPassBlurSurface(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPassBlurSurface(JJJ)V

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

.method static bridge synthetic blacklist -$$Nest$smnativeSetScreenProjection(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetScreenProjection(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetSelfBlurRadius(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetSelfBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetShadowRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetShadowSettings(JJIF[FFFFI)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/view/SurfaceControl;->nativeSetShadowSettings(JJIF[FFFFI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetSize(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetSize(JJII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetSurfaceRotation(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetSurfaceRotation(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedOverlay(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetUpdateTextureFlag(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetUpdateTextureFlag(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetWallpaperAnimProcess(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetWallpaperAnimProcess(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSyncInputWindows(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSyncInputWindows(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateColorArg([F)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 560
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    .line 1847
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2a

    .line 546
    const-string/jumbo v0, "persist.mtbf.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_28

    .line 547
    const-string/jumbo v0, "persist.omni.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 4961
    iput-boolean v1, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    .line 1762
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2a

    .line 546
    const-string/jumbo v0, "persist.mtbf.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_28

    .line 547
    const-string/jumbo v0, "persist.omni.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 4961
    iput-boolean v1, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    .line 1755
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 1756
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2a

    .line 546
    const-string/jumbo v0, "persist.mtbf.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_28

    .line 547
    const-string/jumbo v0, "persist.omni.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 4961
    iput-boolean v1, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    .line 1751
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 32
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "parent"    # Landroid/view/SurfaceControl;
    .param p8, "metadata"    # Landroid/util/SparseIntArray;
    .param p10, "callsite"    # Ljava/lang/String;
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

    .line 1702
    .local p9, "localOwnerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v14, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_33

    .line 546
    const-string/jumbo v0, "persist.mtbf.test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_31

    .line 547
    const-string/jumbo v0, "persist.omni.test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    move v0, v14

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    iput-boolean v0, v1, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 548
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 4961
    iput-boolean v2, v1, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    .line 1703
    if-eqz v11, :cond_11f

    .line 1707
    iput-object v11, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1708
    move/from16 v15, p3

    iput v15, v1, Landroid/view/SurfaceControl;->mWidth:I

    .line 1709
    move/from16 v10, p4

    iput v10, v1, Landroid/view/SurfaceControl;->mHeight:I

    .line 1710
    move-object/from16 v8, p9

    iput-object v8, v1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 1713
    .local v9, "metaParcel":Landroid/os/Parcel;
    if-eqz v13, :cond_9d

    :try_start_58
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_9d

    .line 1714
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_66
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_92

    .line 1716
    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    const/4 v3, 0x4

    .line 1718
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1719
    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1717
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1715
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1721
    .end local v0    # "i":I
    :cond_92
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9d

    .line 1726
    :catchall_96
    move-exception v0

    move-object/from16 v3, p10

    move-object/from16 v20, v9

    goto/16 :goto_11b

    .line 1723
    :cond_9d
    :goto_9d
    nop

    .line 1724
    const-wide/16 v16, 0x0

    if-eqz v12, :cond_a7

    iget-wide v2, v12, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_a4
    .catchall {:try_start_58 .. :try_end_a4} :catchall_96

    move-wide/from16 v18, v2

    goto :goto_a9

    :cond_a7
    move-wide/from16 v18, v16

    .line 1723
    :goto_a9
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v20, v9

    .end local v9    # "metaParcel":Landroid/os/Parcel;
    .local v20, "metaParcel":Landroid/os/Parcel;
    move-wide/from16 v8, v18

    move-object/from16 v10, v20

    :try_start_bb
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_118

    .line 1726
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    .line 1727
    nop

    .line 1728
    iget-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_10e

    .line 1732
    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 1733
    iget-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "release"

    move-object/from16 v3, p10

    invoke-virtual {v0, v2, v3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-direct {v1, v14}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sc.construct incStrong "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceControl"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_10d
    return-void

    .line 1729
    :cond_10e
    move-object/from16 v3, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v2, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v2}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1726
    :catchall_118
    move-exception v0

    move-object/from16 v3, p10

    :goto_11b
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    .line 1727
    throw v0

    .line 1704
    .end local v20    # "metaParcel":Landroid/os/Parcel;
    :cond_11f
    move/from16 v15, p3

    move-object/from16 v3, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p0, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 3059
    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeAddJankDataListener(JJ)V

    .line 3060
    return-void
.end method

.method private blacklist assignNativeObject(JLjava/lang/String;)V
    .registers 8
    .param p1, "nativeObject"    # J
    .param p3, "callsite"    # Ljava/lang/String;

    .line 826
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 827
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 829
    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    .line 830
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p3}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 833
    cmp-long v0, p1, v2

    if-eqz v0, :cond_22

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v0

    goto :goto_23

    :cond_22
    move-wide v0, v2

    :goto_23
    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 834
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_52

    .line 835
    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    if-eqz v0, :cond_55

    .line 836
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "assigned zero nativeObject here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    goto :goto_55

    .line 839
    :cond_52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 841
    :cond_55
    :goto_55
    return-void
.end method

.method public static blacklist captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
    .registers 3
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .param p1, "captureListener"    # Landroid/view/SurfaceControl$ScreenCaptureListener;

    .line 2719
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCaptureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v0

    return v0
.end method

.method public static blacklist captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$DisplayCaptureArgs;

    .line 2729
    new-instance v0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V

    .line 2731
    .local v0, "screenCaptureListener":Landroid/view/SurfaceControl$SyncScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v2

    .line 2732
    .local v2, "status":I
    if-eqz v2, :cond_d

    .line 2733
    return-object v1

    .line 2736
    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->-$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
    .registers 3
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$LayerCaptureArgs;
    .param p1, "captureListener"    # Landroid/view/SurfaceControl$ScreenCaptureListener;

    .line 2822
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCaptureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v0

    return v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$LayerCaptureArgs;

    .line 2788
    new-instance v0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V

    .line 2790
    .local v0, "screenCaptureListener":Landroid/view/SurfaceControl$SyncScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v2

    .line 2791
    .local v2, "status":I
    if-eqz v2, :cond_d

    .line 2792
    return-object v1

    .line 2795
    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->-$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F

    .line 2755
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 6
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I

    .line 2775
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2776
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2777
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2778
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2779
    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    .line 2781
    .local v0, "captureArgs":Landroid/view/SurfaceControl$LayerCaptureArgs;
    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 7
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I
    .param p4, "exclude"    # [Landroid/view/SurfaceControl;

    .line 2805
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2806
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2807
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2808
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2809
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    .line 2810
    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    .line 2812
    .local v0, "captureArgs":Landroid/view/SurfaceControl$LayerCaptureArgs;
    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
    .registers 3
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$WallpaperCaptureArgs;
    .param p1, "captureListener"    # Landroid/view/SurfaceControl$ScreenCaptureListener;

    .line 2846
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCaptureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v0

    return v0
.end method

.method public static blacklist captureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "captureArgs"    # Landroid/view/SurfaceControl$WallpaperCaptureArgs;

    .line 2830
    new-instance v0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V

    .line 2832
    .local v0, "screenCaptureListener":Landroid/view/SurfaceControl$SyncScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->captureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I

    move-result v2

    .line 2833
    .local v2, "status":I
    if-eqz v2, :cond_d

    .line 2834
    return-object v1

    .line 2837
    :cond_d
    invoke-static {v0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->-$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o checkNotReleased()V
    .registers 5

    .line 1939
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1944
    return-void

    .line 1940
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caused by:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const-string v3, "SurfaceControl"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1941
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNativeObject is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkSurfaceLayers()Z
    .registers 1

    .line 1927
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCheckLayerNum()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist-max-o clearAnimationFrameStats()Z
    .registers 1

    .line 2027
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2550
    if-eqz p0, :cond_6

    .line 2554
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    .line 2555
    return-void

    .line 2551
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist closeTransaction()V
    .registers 7

    .line 1996
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1997
    :try_start_3
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_13

    .line 1998
    const-string v1, "SurfaceControl"

    const-string v2, "Call to SurfaceControl.closeTransaction without matching openTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 2000
    :cond_13
    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    .line 2001
    monitor-exit v0

    return-void

    .line 2003
    :cond_1e
    :goto_1e
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyGlobalTransaction(Z)V

    .line 2004
    monitor-exit v0

    .line 2005
    return-void

    .line 2004
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static greylist createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .line 2657
    if-eqz p0, :cond_7

    .line 2660
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 2658
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist destroyDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2668
    if-eqz p0, :cond_6

    .line 2671
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 2672
    return-void

    .line 2669
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enableCurtainAnim(Z)V
    .registers 1
    .param p0, "isEnable"    # Z

    .line 3027
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeEnableCurtainAnim(Z)V

    .line 3028
    return-void
.end method

.method public static greylist-max-o getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .line 2034
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBootDisplayModeSupport()Z
    .registers 1

    .line 2531
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getCastLayer()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation

    .line 2230
    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static blacklist getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 6

    .line 2504
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    .line 2505
    .local v0, "dataspaces":[I
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2506
    .local v1, "srgb":Landroid/graphics/ColorSpace;
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 2507
    .local v3, "colorSpaces":[Landroid/graphics/ColorSpace;
    array-length v4, v0

    if-ne v4, v2, :cond_34

    .line 2508
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v2, :cond_34

    .line 2509
    aget v5, v0, v4

    sparse-switch v5, :sswitch_data_36

    goto :goto_31

    .line 2514
    :sswitch_1f
    sget-object v5, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2515
    goto :goto_31

    .line 2511
    :sswitch_28
    sget-object v5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2512
    nop

    .line 2508
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 2524
    .end local v4    # "i":I
    :cond_34
    return-object v3

    nop

    :sswitch_data_36
    .sparse-switch
        0x88a0000 -> :sswitch_28
        0x18810000 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static blacklist getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2414
    if-eqz p0, :cond_7

    .line 2418
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0

    .line 2415
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2868
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 3051
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2481
    if-eqz p0, :cond_7

    .line 2485
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    .line 2482
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "maxFrames"    # J
    .param p3, "timestamp"    # J

    .line 2295
    if-eqz p0, :cond_7

    .line 2298
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    .line 2296
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2268
    if-eqz p0, :cond_7

    .line 2271
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    .line 2269
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2257
    if-eqz p0, :cond_7

    .line 2260
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0

    .line 2258
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getGPUContextPriority()I
    .registers 1

    .line 3075
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 4882
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    return-object v0
.end method

.method public static blacklist getInternalDisplayToken()Landroid/os/IBinder;
    .registers 3

    .line 2705
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    .line 2706
    .local v0, "physicalDisplayIds":[J
    array-length v1, v0

    if-nez v1, :cond_9

    .line 2707
    const/4 v1, 0x0

    return-object v1

    .line 2709
    :cond_9
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getLeakedLayers()Ljava/lang/String;
    .registers 1

    .line 1934
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetLeakedLayers()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhysicalDisplayIds()[J
    .registers 1

    .line 2678
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 3
    .param p0, "physicalDisplayId"    # J

    .line 2694
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPrimaryPhysicalDisplayId()J
    .registers 2

    .line 2687
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPrimaryPhysicalDisplayId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getProtectedContentSupport()Z
    .registers 1

    .line 2854
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2247
    if-eqz p0, :cond_7

    .line 2250
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0

    .line 2248
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initDebugProp()V
    .registers 3

    .line 4970
    const-string/jumbo v0, "persist.sys.sc.dynamic.log"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4971
    .local v0, "prop":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4972
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    .line 4974
    :cond_1e
    return-void
.end method

.method private static blacklist invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .registers 4
    .param p1, "nativeFencePtr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    .line 4928
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/SyncFence;>;"
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    .line 4929
    .local v0, "fence":Landroid/hardware/SyncFence;
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4930
    return-void
.end method

.method private blacklist isDynamicLog(Z)Z
    .registers 3
    .param p1, "refresh"    # Z

    .line 4963
    if-eqz p1, :cond_5

    .line 4964
    invoke-direct {p0}, Landroid/view/SurfaceControl;->initDebugProp()V

    .line 4966
    :cond_5
    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mPropDynamicLog:Z

    return v0
.end method

.method public static greylist-max-o mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1986
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1987
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1988
    monitor-exit v0

    .line 1989
    return-void

    .line 1988
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 5
    .param p0, "mirrorOf"    # Landroid/view/SurfaceControl;

    .line 2975
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    .line 2976
    .local v0, "nativeObj":J
    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    .line 2977
    .local v2, "sc":Landroid/view/SurfaceControl;
    iget-boolean v3, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    iput-boolean v3, v2, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 2978
    const-string/jumbo v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 2982
    return-object v2
.end method

.method private static native blacklist nativeAddJankDataListener(JJ)V
.end method

.method private static native blacklist nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native blacklist nativeApplyMiuiTransaction(JZ)V
.end method

.method private static native greylist-max-o nativeApplyTransaction(JZ)V
.end method

.method private static native blacklist nativeCaptureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
.end method

.method private static native blacklist nativeCaptureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
.end method

.method private static native blacklist nativeCaptureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;Landroid/view/SurfaceControl$ScreenCaptureListener;)I
.end method

.method private static native blacklist nativeCheckLayerNum()Z
.end method

.method private static native greylist-max-o nativeClearAnimationFrameStats()Z
.end method

.method private static native blacklist nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native greylist-max-o nativeClearContentFrameStats(J)Z
.end method

.method private static native blacklist nativeClearTransaction(J)V
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

.method private static native greylist-max-o nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native blacklist nativeCreateMiuiTransaction()J
.end method

.method private static native greylist-max-o nativeCreateTransaction()J
.end method

.method private static native blacklist nativeDeferAnimation(JJI)V
.end method

.method private static native greylist-max-o nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native greylist-max-o nativeDisconnect(J)V
.end method

.method private static native blacklist nativeEnableCurtainAnim(Z)V
.end method

.method private static native blacklist nativeEnableWallpaperAnim(JZ)V
.end method

.method private static native greylist-max-o nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native blacklist nativeGetBootDisplayModeSupport()Z
.end method

.method private static native blacklist nativeGetCompositionDataspaces()[I
.end method

.method private static native greylist-max-o nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
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

.method private static native blacklist nativeGetDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native blacklist nativeGetGPUContextPriority()I
.end method

.method private static native blacklist nativeGetHandle(J)J
.end method

.method private static native blacklist nativeGetLayerId(J)I
.end method

.method private static native blacklist nativeGetLeakedLayers()Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetNativeTransactionFinalizer()J
.end method

.method private static native blacklist nativeGetPhysicalDisplayIds()[J
.end method

.method private static native blacklist nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetPrimaryPhysicalDisplayId()J
.end method

.method private static native blacklist nativeGetProtectedContentSupport()Z
.end method

.method private static native blacklist nativeGetStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native blacklist nativeGetTransformHint(J)I
.end method

.method private static native greylist-max-o nativeMergeTransaction(JJ)V
.end method

.method private static native blacklist nativeMirrorSurface(J)J
.end method

.method private static native blacklist nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeRelease(J)V
.end method

.method private static native blacklist nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native blacklist nativeRemoveJankDataListener(J)V
.end method

.method private static native blacklist nativeReparent(JJJ)V
.end method

.method private static native blacklist nativeSanitize(J)V
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

.method private static native blacklist nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native blacklist nativeSetBlurScaleRatio(JJF)V
.end method

.method private static native blacklist nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
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

.method private static native blacklist nativeSetCastMode(JJLandroid/os/IBinder;Z)V
.end method

.method private static native greylist-max-o nativeSetColor(JJ[F)V
.end method

.method private static native blacklist nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native blacklist nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native blacklist nativeSetCornerRadius(JJF)V
.end method

.method private static native blacklist nativeSetCurtainAnimRate(F)V
.end method

.method private static native blacklist nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetDataSpace(JJI)V
.end method

.method private static native blacklist nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native blacklist nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native blacklist nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
.end method

.method private static native blacklist nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native blacklist nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native blacklist nativeSetDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z
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

.method private static native blacklist nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native blacklist nativeSetEarlyWakeupStart(J)V
.end method

.method private static native blacklist nativeSetFixedTransformHint(JJI)V
.end method

.method private static native greylist-max-o nativeSetFlags(JJII)V
.end method

.method private static native blacklist nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native blacklist nativeSetFrameRate(JJFII)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native blacklist nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native blacklist nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native blacklist nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native blacklist nativeSetHdrDimmer(JJZ[[FI[[FI)V
.end method

.method private static native blacklist nativeSetHdrDimmerRatio(JJF)V
.end method

.method private static native blacklist nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native blacklist nativeSetLastFrame(JJLandroid/os/IBinder;Z)V
.end method

.method private static native greylist-max-o nativeSetLayer(JJI)V
.end method

.method private static native greylist-max-o nativeSetLayerStack(JJI)V
.end method

.method private static native blacklist nativeSetLimitedFrameRate(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetMatrix(JJFFFF)V
.end method

.method private static native blacklist nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetMiBlendModes(JJ[[II)V
.end method

.method private static native blacklist nativeSetMiSecurityDisplay(JLandroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetMiShadow(JJIFFFFF[F)V
.end method

.method private static native blacklist nativeSetPassBlurSurface(JJJ)V
.end method

.method private static native greylist-max-o nativeSetPosition(JJFF)V
.end method

.method private static native blacklist nativeSetRelativeLayer(JJJI)V
.end method

.method private static native blacklist nativeSetScale(JJFF)V
.end method

.method private static native blacklist nativeSetScreenProjection(JJI)V
.end method

.method private static native blacklist nativeSetSelfBlurRadius(JJI)V
.end method

.method private static native blacklist nativeSetShadowRadius(JJF)V
.end method

.method private static native blacklist nativeSetShadowSettings(JJIF[FFFFI)V
.end method

.method private static native greylist-max-o nativeSetSize(JJII)V
.end method

.method private static native blacklist nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native blacklist nativeSetSurfaceRotation(JJFFFFFFFFFF)V
.end method

.method private static native blacklist nativeSetTransformHint(JI)V
.end method

.method private static native greylist-max-o nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetTrustedOverlay(JJZ)V
.end method

.method private static native blacklist nativeSetUpdateTextureFlag(JJZ)V
.end method

.method private static native blacklist nativeSetWallpaperAnimProcess(JF)V
.end method

.method private static native greylist-max-o nativeSetWindowCrop(JJIIII)V
.end method

.method private static native blacklist nativeSyncInputWindows(J)V
.end method

.method private static native blacklist nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static greylist openTransaction()V
    .registers 5

    .line 1967
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 1968
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    if-nez v1, :cond_f

    .line 1969
    new-instance v1, Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V

    sput-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    .line 1971
    :cond_f
    monitor-enter v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1d

    .line 1972
    :try_start_10
    sget-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Landroid/view/SurfaceControl;->sTransactionNestCount:J

    .line 1973
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    .line 1974
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1d

    .line 1975
    return-void

    .line 1973
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1

    .line 1974
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static blacklist overrideHdrTypes(Landroid/os/IBinder;[I)V
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "modes"    # [I

    .line 2649
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeOverrideHdrTypes(Landroid/os/IBinder;[I)V

    .line 2650
    return-void
.end method

.method public static blacklist removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 3
    .param p0, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 3067
    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(J)V

    .line 3068
    return-void
.end method

.method public static blacklist rotationToBufferTransform(I)I
    .registers 4
    .param p0, "rotation"    # I

    .line 422
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_24

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v0

    .line 426
    :pswitch_1d
    const/4 v0, 0x7

    return v0

    .line 425
    :pswitch_1f
    const/4 v0, 0x3

    return v0

    .line 424
    :pswitch_21
    const/4 v0, 0x4

    return v0

    .line 423
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
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    .line 2492
    if-eqz p0, :cond_7

    .line 2495
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 2493
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2561
    if-eqz p0, :cond_6

    .line 2565
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 2566
    return-void

    .line 2562
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "displayModeId"    # I

    .line 2539
    if-eqz p0, :cond_6

    .line 2543
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    .line 2544
    return-void

    .line 2540
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setCurtainAnimRate(F)V
    .registers 1
    .param p0, "rate"    # F

    .line 3034
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetCurtainAnimRate(F)V

    .line 3035
    return-void
.end method

.method public static blacklist setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "desiredDisplayModeSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2396
    if-eqz p0, :cond_1d

    .line 2399
    if-eqz p1, :cond_15

    .line 2402
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_d

    .line 2406
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0

    .line 2403
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultMode must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2400
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2397
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "brightness"    # F

    .line 2889
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 9
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "sdrBrightness"    # F
    .param p2, "sdrBrightnessNits"    # F
    .param p3, "displayBrightness"    # F
    .param p4, "displayBrightnessNits"    # F

    .line 2920
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    .line 2926
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

    .line 2931
    :cond_2c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0

    .line 2928
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2923
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z
    .registers 11
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "sdrBrightness"    # F
    .param p2, "sdrBrightnessNits"    # F
    .param p3, "displayBrightness"    # F
    .param p4, "displayBrightnessNits"    # F
    .param p5, "hdrBoost"    # Z
    .param p6, "dimmerFactor"    # F

    .line 2943
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    .line 2949
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

    .line 2954
    :cond_2c
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z

    move-result v0

    return v0

    .line 2951
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2946
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FZF)Z
    .registers 11
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "brightness"    # F
    .param p2, "hdrBoost"    # Z
    .param p3, "dimmerFactor"    # F

    .line 2937
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z

    move-result v0

    return v0
.end method

.method public static greylist setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .line 2596
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2597
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 2598
    monitor-exit v0

    .line 2599
    return-void

    .line 2598
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist-max-o setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .line 2237
    if-eqz p0, :cond_6

    .line 2240
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 2241
    return-void

    .line 2238
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .line 2585
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2586
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2588
    monitor-exit v0

    .line 2589
    return-void

    .line 2588
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist-max-o setDisplaySize(Landroid/os/IBinder;II)V
    .registers 5
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2615
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2616
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 2617
    monitor-exit v0

    .line 2618
    return-void

    .line 2617
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2606
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2607
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    .line 2608
    monitor-exit v0

    .line 2609
    return-void

    .line 2608
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "enable"    # Z
    .param p2, "componentMask"    # I
    .param p3, "maxFrames"    # I

    .line 2279
    if-eqz p0, :cond_14

    .line 2282
    const/4 v0, 0x4

    .line 2283
    .local v0, "maxColorComponents":I
    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_c

    .line 2286
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    .line 2284
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2280
    .end local v0    # "maxColorComponents":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGameContentType(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2572
    if-eqz p0, :cond_6

    .line 2576
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    .line 2577
    return-void

    .line 2573
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGlobalShadowSettings([F[FFFF)V
    .registers 5
    .param p0, "ambientColor"    # [F
    .param p1, "spotColor"    # [F
    .param p2, "lightPosY"    # F
    .param p3, "lightPosZ"    # F
    .param p4, "lightRadius"    # F

    .line 3016
    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 3017
    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 3018
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    .line 3019
    return-void
.end method

.method public static blacklist setLimitedFrameRate(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "frameRate"    # I

    .line 2625
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2626
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setLimitedFrameRate(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    .line 2627
    monitor-exit v0

    .line 2628
    return-void

    .line 2627
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist setMiSecurityDisplay(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "isSecurity"    # Z

    .line 2634
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 2635
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setMiSecurityDisplay(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;

    .line 2636
    monitor-exit v0

    .line 2637
    return-void

    .line 2636
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static blacklist validateColorArg([F)V
    .registers 7
    .param p0, "color"    # [F

    .line 2986
    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    .line 2988
    .local v0, "msg":Ljava/lang/String;
    array-length v1, p0

    const-string v2, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_23

    .line 2991
    array-length v1, p0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_22

    aget v4, p0, v3

    .line 2992
    .local v4, "c":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_1c

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1c

    .line 2991
    .end local v4    # "c":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2993
    .restart local v4    # "c":F
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2996
    .end local v4    # "c":F
    :cond_22
    return-void

    .line 2989
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 573
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 577
    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 578
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public greylist-max-o clearContentFrameStats()Z
    .registers 3

    .line 2011
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2012
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public blacklist copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 847
    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 848
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 849
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 850
    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 851
    iget-boolean v0, p1, Landroid/view/SurfaceControl;->mDebugRelease:Z

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 852
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sc.copyFrom incStrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_50
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disconnect()V
    .registers 5

    .line 1917
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1918
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 1920
    :cond_b
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1840
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1841
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1842
    iget-object v2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1844
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1845
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1864
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 1865
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1867
    :cond_7
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 1869
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1870
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sc.finalize decStrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_33
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_3d

    .line 1876
    :cond_38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1877
    nop

    .line 1878
    return-void

    .line 1876
    :catchall_3d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1877
    throw v0
.end method

.method public greylist-max-o getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 2019
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 2020
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 3

    .line 2050
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 2052
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getLayerId()I
    .registers 5

    .line 4919
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    .line 4920
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result v0

    return v0

    .line 4923
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLocalOwnerView()Landroid/view/View;
    .registers 2

    .line 2063
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getTransformHint()I
    .registers 3

    .line 4898
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4899
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidth()I
    .registers 3

    .line 2041
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 2043
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 1828
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isValid()Z
    .registers 5

    .line 1954
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
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1765
    if-eqz p1, :cond_60

    .line 1769
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1772
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 1774
    const-wide/16 v0, 0x0

    .line 1775
    .local v0, "object":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 1776
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 1778
    :cond_26
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1780
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sc.readFromParcel incStrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_5f
    return-void

    .line 1766
    .end local v0    # "object":J
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 5

    .line 1892
    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1893
    sget-object v0, Landroid/view/SurfaceControl;->mCastLayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1896
    :cond_d
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7c

    .line 1898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;->isDynamicLog(Z)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sc.release decStrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_48
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 1903
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1904
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 1905
    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    if-eqz v0, :cond_77

    .line 1906
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": released here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1908
    :cond_77
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1910
    :cond_7c
    return-void
.end method

.method public blacklist removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 590
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 592
    .local v1, "removed":Z
    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 593
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 595
    :cond_14
    monitor-exit v0

    return v1

    .line 596
    .end local v1    # "removed":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist reparent(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "newParent"    # Landroid/view/SurfaceControl;

    .line 4937
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 4938
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4939
    monitor-exit v0

    .line 4940
    return-void

    .line 4939
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist resize(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 4889
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 4890
    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 4891
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    .line 4892
    return-void
.end method

.method public blacklist setCastLayer(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 4788
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4789
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 4791
    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 4793
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4794
    nop

    .line 4795
    return-void

    .line 4793
    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4794
    throw v0
.end method

.method public greylist-max-o setColor([F)V
    .registers 4
    .param p1, "color"    # [F

    .line 4945
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4946
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 4947
    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 4948
    monitor-exit v0

    .line 4949
    return-void

    .line 4948
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setDebugRelease(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .line 1816
    iput-boolean p1, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    .line 1817
    return-void
.end method

.method public greylist-max-o setLayerStack(I)V
    .registers 4
    .param p1, "layerStack"    # I

    .line 4954
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4955
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 4956
    :try_start_6
    sget-object v1, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4957
    monitor-exit v0

    .line 4958
    return-void

    .line 4957
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setScreenProjection(I)V
    .registers 3
    .param p1, "flag"    # I

    .line 4774
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4775
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 4777
    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 4779
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4780
    nop

    .line 4781
    return-void

    .line 4779
    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4780
    throw v0
.end method

.method public blacklist setSkipScreenshot(Z)V
    .registers 3
    .param p1, "skipScrenshot"    # Z

    .line 4759
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 4760
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 4762
    :try_start_6
    sget-object v0, Landroid/view/SurfaceControl;->sGlobalTransaction:Landroid/view/SurfaceControl$GlobalTransactionWrapper;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 4764
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4765
    nop

    .line 4766
    return-void

    .line 4764
    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4765
    throw v0
.end method

.method public blacklist setTransformHint(I)V
    .registers 4
    .param p1, "transformHint"    # I

    .line 4912
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    .line 4913
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2069
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2068
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1793
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1794
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mDebugRelease:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1797
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_45

    .line 1798
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    iget-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_49

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const-string v2, "SurfaceControl"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1803
    :cond_45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    :cond_49
    :goto_49
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 1807
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_55

    .line 1808
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1810
    :cond_55
    return-void
.end method
