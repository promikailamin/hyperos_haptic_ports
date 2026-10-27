.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;
.implements Landroid/view/AttachedSurfaceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$UnhandledKeyManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CornerRadii;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$NoPreloadHolder;,
        Landroid/view/ViewRootImpl$SurfaceChangedCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;,
        Landroid/view/ViewRootImpl$GfxInfo;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$AsyncInputStage;
    }
.end annotation


# static fields
.field public static final blacklist CLIENT_TRANSIENT:Z

.field private static final blacklist CONTENT_CAPTURE_ENABLED_FALSE:I = 0x2

.field private static final blacklist CONTENT_CAPTURE_ENABLED_NOT_CHECKED:I = 0x0

.field private static final blacklist CONTENT_CAPTURE_ENABLED_TRUE:I = 0x1

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEBUG_BLAST:Z = false

.field private static final greylist-max-o DEBUG_CONFIGURATION:Z = false

.field private static final blacklist DEBUG_CONTENT_CAPTURE:Z = false

.field private static final greylist-max-o DEBUG_DIALOG:Z = false

.field private static final greylist-max-o DEBUG_DRAW:Z = false

.field private static final greylist-max-o DEBUG_FPS:Z = false

.field private static final greylist-max-o DEBUG_IMF:Z = false

.field private static final greylist-max-o DEBUG_INPUT_RESIZE:Z = false

.field private static final greylist-max-o DEBUG_INPUT_STAGES:Z = false

.field private static final greylist-max-o DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final greylist-max-o DEBUG_LAYOUT:Z = false

.field private static final greylist-max-o DEBUG_ORIENTATION:Z = false

.field private static final blacklist DEBUG_SCROLL_CAPTURE:Z = false

.field private static final blacklist DEBUG_SENSITIVE_CONTENT:Z = false

.field private static final blacklist DEBUG_TOUCH_NAVIGATION:Z = false

.field private static final greylist-max-o DEBUG_TRACKBALL:Z = false

.field private static final blacklist DISABLE_DRAW_WAKE_LOCK:J = 0x14cfa985L

.field private static final blacklist FRAME_RATE_BOOST_TIME:I = 0xbb8

.field private static final blacklist FRAME_RATE_CATEGORY_COUNT:I = 0x5

.field private static final blacklist FRAME_RATE_INITIAL_TOUCH_BOOST_TIME:I = 0x1e

.field private static final blacklist FRAME_RATE_SETTING_REEVALUATE_TIME:I = 0x64

.field private static final blacklist FRAME_RATE_SURFACE_REPLACED_TIME:I = 0xbb8

.field private static final blacklist FRAME_RATE_TOUCH_BOOST_TIME:I = 0xbb8

.field private static final blacklist IDLE_TIME_MILLIS:I = 0x2ee

.field private static final blacklist INFREQUENT_UPDATE_COUNTS:I = 0x2

.field private static final blacklist INFREQUENT_UPDATE_INTERVAL_MILLIS:I = 0x64

.field public static final blacklist INTERMITTENT_STATE_INTERMITTENT:I = 0x0

.field public static final blacklist INTERMITTENT_STATE_IN_TRANSITION:I = -0x1

.field public static final blacklist INTERMITTENT_STATE_NOT_INTERMITTENT:I = 0x1

.field private static final blacklist KEEP_CLEAR_AREA_REPORT_RATE_MILLIS:I = 0x64

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field private static final blacklist LOGTAG_INPUT_FOCUS:I = 0xf231

.field private static final blacklist LOGTAG_VIEWROOT_DRAW_EVENT:I = 0xea64

.field private static final greylist-max-o MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final greylist-max-o MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final greylist-max-o MSG_CHECK_FOCUS:I = 0xd

.field private static final blacklist MSG_CHECK_INVALIDATION_IDLE:I = 0x28

.field private static final greylist-max-o MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final greylist-max-o MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final blacklist MSG_DECOR_VIEW_GESTURE_INTERCEPTION:I = 0x26

.field private static final greylist-max-o MSG_DIE:I = 0x3

.field private static final greylist-max-o MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final greylist-max-o MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final greylist-max-o MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final greylist-max-o MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final greylist-max-o MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final greylist-max-o MSG_DISPATCH_KEY_FROM_AUTOFILL:I = 0xc

.field private static final greylist-max-o MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final greylist-max-o MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final greylist-max-o MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final blacklist MSG_FRAME_RATE_SETTING:I = 0x2a

.field private static final blacklist MSG_HIDE_INSETS:I = 0x20

.field private static final blacklist MSG_INITIAL_TOUCH_BOOST_TIMEOUT:I = 0x2c

.field private static final blacklist MSG_INSETS_CONTROL_CHANGED:I = 0x1d

.field private static final greylist-max-o MSG_INVALIDATE:I = 0x1

.field private static final greylist-max-o MSG_INVALIDATE_RECT:I = 0x2

.field private static final greylist-max-o MSG_INVALIDATE_WORLD:I = 0x16

.field private static final blacklist MSG_KEEP_CLEAR_RECTS_CHANGED:I = 0x23

.field private static final blacklist MSG_PAUSED_FOR_SYNC_TIMEOUT:I = 0x25

.field private static final greylist-max-o MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final greylist-max-o MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final blacklist MSG_REFRESH_POINTER_ICON:I = 0x29

.field private static final blacklist MSG_REPORT_KEEP_CLEAR_RECTS:I = 0x24

.field private static final greylist-max-o MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final blacklist MSG_REQUEST_SCROLL_CAPTURE:I = 0x21

.field private static final greylist-max-o MSG_RESIZED:I = 0x4

.field private static final greylist-max-o MSG_RESIZED_REPORT:I = 0x5

.field private static final blacklist MSG_SHOW_INSETS:I = 0x1f

.field private static final blacklist MSG_SURFACE_REPLACED_TIMEOUT:I = 0x2b

.field private static final greylist-max-o MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final blacklist MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED:I = 0x1e

.field private static final blacklist MSG_TOUCH_BOOST_TIMEOUT:I = 0x27

.field private static final greylist-max-o MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final greylist-max-o MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final greylist-max-o MSG_WINDOW_MOVED:I = 0x17

.field private static final blacklist MSG_WINDOW_TOUCH_MODE_CHANGED:I = 0x22

.field private static final greylist-max-o MT_RENDERER_AVAILABLE:Z = true

.field private static final blacklist NANOS_PER_MILLI:J = 0xf4240L

.field private static final blacklist NANOS_PER_SEC:J = 0x3b9aca00L

.field private static final greylist-max-o PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final blacklist SCROLL_CAPTURE_REQUEST_TIMEOUT_MILLIS:I = 0x9c4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final blacklist UNSET_SYNC_ID:I = -0x1

.field private static final blacklist WMS_SYNC_MERGED:I = 0x3

.field private static final blacklist WMS_SYNC_NONE:I = 0x0

.field private static final blacklist WMS_SYNC_PENDING:I = 0x1

.field private static final blacklist WMS_SYNC_RETURNED:I = 0x2

.field static final greylist-max-o mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static greylist-max-o sAlwaysAssignFocus:Z

.field private static volatile blacklist sAnrReported:Z

.field private static greylist-max-o sCompatibilityDone:Z

.field private static final greylist-max-o sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sEnableVrr:Z

.field static greylist-max-o sFirstDrawComplete:Z

.field static final greylist-max-o sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sNumSyncsInProgress:I

.field private static blacklist sPreInitializedBufferAllocator:Z

.field private static blacklist sProtoLogInitialized:Z

.field static final greylist-max-r sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSyncProgressLock:Ljava/lang/Object;

.field private static blacklist sToolkitEnableInvalidateCheckThreadFlagValue:Z

.field private static blacklist sToolkitFrameRateDebugFlagValue:Z

.field private static final blacklist sToolkitInitialTouchBoostFlagValue:Z

.field private static blacklist sToolkitMetricsForFrameRateDecisionFlagValue:Z

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z

.field static blacklist sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;


# instance fields
.field private blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field greylist-max-o mAccessibilityFocusedHost:Landroid/view/View;

.field greylist-max-o mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final greylist-max-o mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field greylist-max-o mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final greylist-max-o mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mAccessibilityWindowAttributes:Landroid/view/accessibility/AccessibilityWindowAttributes;

.field private blacklist mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

.field private greylist-max-o mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field greylist mAdded:Z

.field greylist-max-o mAddedTouchMode:Z

.field private blacklist mAppStartTimestampsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mAppStartTrackingStarted:Z

.field private greylist-max-o mAppVisibilityChanged:Z

.field greylist-max-o mAppVisible:Z

.field greylist-max-o mApplyInsetsRequested:Z

.field final greylist mAttachInfo:Landroid/view/View$AttachInfo;

.field greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field final greylist-max-o mBasePackageName:Ljava/lang/String;

.field private blacklist mBbqApplyToken:Landroid/os/IBinder;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final blacklist mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field private blacklist mBoundsLayer:Landroid/view/SurfaceControl;

.field private greylist-max-o mCanvasOffsetX:I

.field private greylist-max-o mCanvasOffsetY:I

.field private blacklist mCheckIfCanDraw:Z

.field private final blacklist mChildBoundingInsets:Landroid/graphics/Rect;

.field private blacklist mChildBoundingInsetsChanged:Z

.field final greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field greylist-max-o mClientWindowLayoutFlags:I

.field private blacklist mColorModeLastSetMillis:J

.field private blacklist mCompatOnBackInvokedCallback:Landroid/window/CompatOnBackInvokedCallback;

.field final blacklist mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

.field final greylist-max-o mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field greylist-max-o mConsumeBatchedInputImmediatelyScheduled:Z

.field greylist-max-o mConsumeBatchedInputScheduled:Z

.field final greylist-max-o mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field blacklist mContentCaptureEnabled:I

.field public final greylist mContext:Landroid/content/Context;

.field private blacklist mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

.field private blacklist mCornerRadiiCallback:Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;

.field greylist-max-o mCurScrollY:I

.field private blacklist mCurrentColorMode:I

.field greylist-max-o mCurrentDragView:Landroid/view/View;

.field private final greylist-max-o mDensity:I

.field private greylist-max-r mDirty:Landroid/graphics/Rect;

.field private final blacklist mDisableDrawWakeLock:Z

.field blacklist mDispatchedSystemBarAppearance:I

.field blacklist mDispatchedSystemUiVisibility:I

.field greylist-max-o mDisplay:Landroid/view/Display;

.field blacklist mDisplayDecorationCached:Z

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field greylist-max-o mDragDescription:Landroid/content/ClipDescription;

.field final greylist-max-o mDragPoint:Landroid/graphics/PointF;

.field private greylist-max-o mDragResizing:Z

.field greylist-max-o mDrawingAllowed:Z

.field private blacklist mDrawnThisFrame:Z

.field private blacklist mDrewOnceForSync:Z

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mExtraDisplayListenerLogging:Z

.field greylist mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private blacklist mFastScrollSoundEffectsEnabled:Z

.field greylist-max-o mFirst:Z

.field private blacklist mFirstFramePresentedTimeNs:J

.field greylist-max-o mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field greylist-max-o mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private greylist-max-o mForceDecorViewVisibility:Z

.field private blacklist mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

.field private greylist-max-o mForceNextConfigUpdate:Z

.field greylist-max-o mForceNextWindowRelayout:Z

.field private greylist-max-o mFpsNumFrames:I

.field private greylist-max-o mFpsPrevTime:J

.field private greylist-max-o mFpsStartTime:J

.field private blacklist mFpsTraceName:Ljava/lang/String;

.field private blacklist mFrameRateCategoryChangeReason:I

.field private blacklist mFrameRateCategoryHighCount:I

.field private blacklist mFrameRateCategoryHighHintCount:I

.field private blacklist mFrameRateCategoryLowCount:I

.field private blacklist mFrameRateCategoryNormalCount:I

.field private blacklist mFrameRateCategoryView:Ljava/lang/String;

.field blacklist mFrameRateCompatibility:I

.field private final blacklist mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

.field greylist-max-o mFullRedrawNeeded:Z

.field private final blacklist mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

.field final greylist-max-o mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field greylist-max-o mHandlingLayoutInLayoutRequest:Z

.field private final blacklist mHandwritingInitiator:Landroid/view/HandwritingInitiator;

.field blacklist mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

.field greylist-max-o mHardwareXOffset:I

.field greylist-max-o mHardwareYOffset:I

.field private blacklist mHasPendingKeepClearAreaChange:Z

.field blacklist mHasPendingTransactions:Z

.field private final blacklist mHdrRenderState:Landroid/view/HdrRenderState;

.field greylist-max-r mHeight:I

.field final greylist-max-o mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private final blacklist mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

.field private final blacklist mImeFocusController:Landroid/view/ImeFocusController;

.field private greylist-max-o mInLayout:Z

.field private blacklist mInfrequentUpdateCount:I

.field private final blacklist mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

.field private final blacklist mInputEventAssigner:Landroid/view/InputEventAssigner;

.field protected final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private greylist-max-o mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field greylist-max-o mInputQueue:Landroid/view/InputQueue;

.field greylist-max-o mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field private blacklist mInsetsAnimationRunning:Z

.field private final blacklist mInsetsController:Landroid/view/InsetsController;

.field private blacklist mInvCompatScale:F

.field final greylist-max-o mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private greylist-max-o mInvalidateRootRequested:Z

.field private blacklist mInvalidationIdleMessagePosted:Z

.field greylist-max-o mIsAmbientMode:Z

.field public greylist-max-o mIsAnimating:Z

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsDrawing:Z

.field private blacklist mIsFrameRateBoosting:Z

.field private blacklist mIsFrameRateConflicted:Z

.field greylist-max-o mIsInTraversal:Z

.field private blacklist mIsPressedGesture:Z

.field private final blacklist mIsStylusPointerIconEnabled:Z

.field private final blacklist mIsSubscribeGranularDisplayEventsEnabled:Z

.field private blacklist mIsSurfaceColorSpaceAgnostic:Z

.field private blacklist mIsSurfaceOpaque:Z

.field private blacklist mIsTouchBoosting:Z

.field private blacklist mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

.field private final blacklist mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

.field private blacklist mLargestChildPercentage:F

.field private blacklist mLargestViewTraceName:Ljava/lang/String;

.field private blacklist mLastClickToolType:I

.field private final greylist-max-o mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field private blacklist mLastDrawScreenOff:Z

.field final greylist-max-o mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field private final blacklist mLastLayoutFrame:Landroid/graphics/Rect;

.field blacklist mLastPerformDrawSkippedReason:Ljava/lang/String;

.field blacklist mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

.field private blacklist mLastPreferredFrameRate:F

.field private blacklist mLastPreferredFrameRateCategory:I

.field blacklist mLastReportNextDrawReason:Ljava/lang/String;

.field private blacklist mLastReportedActiveControlsSeq:I

.field private blacklist mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final blacklist mLastReportedFrames:Landroid/window/ClientWindowFrames;

.field private blacklist mLastReportedInsetsStateSeq:I

.field private final greylist-max-o mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field greylist mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLastSeqId:I

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field blacklist mLastSyncSeqId:I

.field greylist-max-o mLastSystemUiVisibility:I

.field blacklist mLastTouchDeviceId:I

.field final greylist-max-o mLastTouchPoint:Landroid/graphics/PointF;

.field blacklist mLastTouchPointerId:I

.field greylist-max-o mLastTouchSource:I

.field private blacklist mLastTraversalWasVisible:Z

.field private blacklist mLastUpdateTimeMillis:J

.field private greylist-max-o mLastWindowInsets:Landroid/view/WindowInsets;

.field greylist-max-o mLayoutRequested:Z

.field greylist-max-o mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLeashToken:Landroid/os/IBinder;

.field volatile greylist-max-o mLocalDragState:Ljava/lang/Object;

.field final greylist-max-o mLocation:Landroid/view/WindowLeaked;

.field final blacklist mLooper:Landroid/os/Looper;

.field private blacklist mMeasuredHeight:I

.field private blacklist mMeasuredWidth:I

.field private blacklist mMinusOneFrameIntervalMillis:I

.field private blacklist mMinusTwoFrameIntervalMillis:I

.field private greylist-max-o mNeedsRendererSetup:Z

.field greylist-max-o mNewSurfaceNeeded:Z

.field blacklist mNonSyncEarlySeqId:I

.field private final greylist-max-o mNoncompatDensity:I

.field private blacklist mNumPausedForSync:I

.field private final blacklist mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

.field greylist-max-o mOrigWindowType:I

.field blacklist mOverrideInsetsFrame:Landroid/graphics/Rect;

.field greylist-max-o mPausedForTransition:Z

.field private blacklist mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private blacklist mPendingDragResizing:Z

.field greylist-max-o mPendingInputEventCount:I

.field greylist-max-o mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field greylist-max-o mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field greylist-max-o mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final greylist-max-o mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field private blacklist mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPerformContentCapture:Z

.field greylist-max-o mPointerCapture:Z

.field private blacklist mPointerIconEvent:Landroid/view/MotionEvent;

.field private blacklist mPreferredFrameRate:F

.field private blacklist mPreferredFrameRateCategory:I

.field private blacklist mPreviousFrameDrawnTime:J

.field private blacklist mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

.field private final blacklist mPreviousSyncSafeguardLock:Ljava/lang/Object;

.field blacklist mPreviousTouchableRegion:Landroid/graphics/Region;

.field private blacklist mPreviousTransformHint:I

.field final greylist-max-o mPreviousTransparentRegion:Landroid/graphics/Region;

.field greylist-max-o mProcessInputEventsScheduled:Z

.field private greylist-max-o mProfileRendering:Z

.field final blacklist mQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private greylist-max-o mQueuedInputEventPoolSize:I

.field private blacklist mRelayoutRequested:Z

.field private final blacklist mRelayoutResult:Landroid/view/WindowRelayoutResult;

.field private blacklist mRelayoutSeq:I

.field private greylist-max-o mRemoved:Z

.field private greylist-max-o mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mRenderProfilingEnabled:Z

.field private blacklist mRenderThreadDrawStartTimeNs:J

.field greylist-max-o mReportNextDraw:Z

.field private blacklist mResolvedPointerIcon:Landroid/view/PointerIcon;

.field private blacklist mRootScrollCaptureCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/ScrollCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

.field private blacklist mScrollCaptureRequestTimeout:J

.field greylist-max-o mScrollMayChange:Z

.field greylist-max-o mScrollY:I

.field greylist-max-o mScroller:Landroid/widget/Scroller;

.field private final blacklist mSendPerfHintOnTouch:Z

.field greylist-max-o mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field private final blacklist mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

.field blacklist mSeqId:I

.field private final blacklist mSimpleExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mSoftInputMode:I

.field blacklist mStartedDragViewForA11y:Landroid/view/View;

.field greylist mStopped:Z

.field public final greylist mSurface:Landroid/view/Surface;

.field private final blacklist mSurfaceChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$SurfaceChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field greylist-max-o mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field private blacklist mSurfaceReplaced:Z

.field private blacklist mSurfaceSequenceId:I

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field private blacklist mSyncBuffer:Z

.field blacklist mSyncSeqId:I

.field greylist-max-o mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private greylist-max-o mTag:Ljava/lang/String;

.field final greylist-max-o mTargetSdkVersion:I

.field greylist-max-o mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTempInsets:Landroid/view/InsetsState;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempWinConfig:Landroid/app/WindowConfiguration;

.field final greylist-max-o mThread:Ljava/lang/Thread;

.field private blacklist mThreadedRendererViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThreadedRendererViewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mTmpLocation:[I

.field final greylist-max-o mTmpValue:Landroid/util/TypedValue;

.field private blacklist mTouchAndDrawn:Z

.field blacklist mTouchableRegion:Landroid/graphics/Region;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mTransformHintListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final greylist-max-o mTransparentRegion:Landroid/graphics/Region;

.field greylist-max-o mTraversalBarrier:I

.field final greylist-max-o mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public greylist-max-o mTraversalScheduled:Z

.field private blacklist mTypesHiddenByFlags:I

.field greylist-max-o mUnbufferedInputDispatch:Z

.field blacklist mUnbufferedInputSource:I

.field private final greylist-max-o mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

.field private final blacklist mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

.field greylist-max-o mUpcomingInTouchMode:Z

.field greylist-max-o mUpcomingWindowFocus:Z

.field private blacklist mUpdateSurfaceNeeded:Z

.field private greylist-max-o mUseMTRenderer:Z

.field blacklist mVibrator:Landroid/os/Vibrator;

.field greylist mView:Landroid/view/View;

.field private final blacklist mViewBoundsSandboxingEnabled:Z

.field final greylist-max-o mViewConfiguration:Landroid/view/ViewConfiguration;

.field protected final blacklist mViewFrameInfo:Landroid/view/ViewFrameInfo;

.field private greylist-max-o mViewLayoutDirectionInitial:I

.field private blacklist mViewMeasureDeferred:Z

.field greylist-max-o mViewVisibility:I

.field private final greylist-max-o mVisRect:Landroid/graphics/Rect;

.field private blacklist mWasLastDrawCanceled:Z

.field greylist-max-r mWidth:I

.field greylist-max-o mWillDrawSoon:Z

.field final greylist-max-o mWinFrame:Landroid/graphics/Rect;

.field private final blacklist mWinFrameInScreen:Landroid/graphics/Rect;

.field final greylist-max-o mWindow:Landroid/view/ViewRootImpl$W;

.field public final greylist-max-o mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field greylist-max-o mWindowAttributesChanged:Z

.field final greylist-max-o mWindowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field greylist-max-o mWindowFocusChanged:Z

.field private final blacklist mWindowLayout:Landroid/view/WindowLayout;

.field final greylist mWindowSession:Landroid/view/IWindowSession;

.field private blacklist mWindowlessBackKeyCallback:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

.field blacklist mWmsRequestSyncGroupState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8ROKAwLEoyFpwPsC--Lqi4vlFfM(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$addFrameCommitCallbackIfNeeded$8(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HXcJZOwYG1FbMWz8ckHbhdGAEhU(Landroid/view/ViewRootImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->lambda$registerListeners$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$I9KJH1qLSZb1_fWNfrFUXDtFojg(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->lambda$getOrCreateSurfaceSyncGroup$17()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Lx9xSQs8XgeRJZgj7lPDiojIGvE(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->lambda$getOrCreateSurfaceSyncGroup$18()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OLwsllofmJ2v5VbCrmXTyJvGGH8(Landroid/view/ViewRootImpl;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->lambda$new$10(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TI2E4T7Zv26Wd7gyyvhUtR9KaLs(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->lambda$safeguardOverlappingSyncs$16(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YmKtbQaD05xwFJZAtKddUj4SELs(Landroid/view/ViewRootImpl;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$createSyncIfNeeded$5(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZHIrYOJYjfDN6AssXe9z8IVWk90(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$createSyncIfNeeded$4(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bJRQgJWPPoSOzgj9W4NcdKkg0PI(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->lambda$removeSensitiveContentAppProtection$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eF15xYUXFPUMvLcx0-zNQsTP-CM(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$handleScrollCaptureRequest$11(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jhvlphQqLf8_g0aTBjn_bfNpsLw(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->lambda$getOrCreateSurfaceSyncGroup$19()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xLXzwYR5mY1d7VVo9ZB2752JoxQ(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->lambda$registerCompatOnBackInvokedCallback$14()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zGRzVY82hTT9jaSqfNktReohD8E(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$performDraw$9(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppStartTimestampsSent(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mAppStartTimestampsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadii(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$CornerRadii;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirty(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrawnThisFrame(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstFramePresentedTimeNs(Landroid/view/ViewRootImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mFirstFramePresentedTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandwritingInitiator(Landroid/view/ViewRootImpl;)Landroid/view/HandwritingInitiator;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeFocusController(Landroid/view/ViewRootImpl;)Landroid/view/ImeFocusController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsetsAnimationRunning(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mInsetsAnimationRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFrameRateBoosting(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStylusPointerIconEnabled(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mIsStylusPointerIconEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUpdateTimeMillis(Landroid/view/ViewRootImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mLastUpdateTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mPointerIconEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredFrameRate(Landroid/view/ViewRootImpl;)F
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I
    .registers 1

    iget p0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderProfiler(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderProfilingEnabled(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderThreadDrawStartTimeNs(Landroid/view/ViewRootImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mRenderThreadDrawStartTimeNs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimpleExecutor(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchAndDrawn(Landroid/view/ViewRootImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mTouchAndDrawn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowlessBackKeyCallback:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccessibilityWindowAttributes(Landroid/view/ViewRootImpl;Landroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityWindowAttributes:Landroid/view/accessibility/AccessibilityWindowAttributes;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCornerRadii(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$CornerRadii;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstFramePresentedTimeNs(Landroid/view/ViewRootImpl;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/ViewRootImpl;->mFirstFramePresentedTimeNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameRateCategoryHighCount(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameRateCategoryHighHintCount(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameRateCategoryLowCount(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrameRateCategoryNormalCount(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mInvalidationIdleMessagePosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsFrameRateBoosting(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsPressedGesture:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastClickToolType(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mLastClickToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPointerIconEvent(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPointerIconEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V
    .registers 2

    iput p1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProfileRendering(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResolvedPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/PointerIcon;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mResolvedPointerIcon:Landroid/view/PointerIcon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceReplaced(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchAndDrawn(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mTouchAndDrawn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckForLeavingTouchModeAndConsume(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->clearLowProfileModeIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroyAndInvalidate(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyAndInvalidate()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchPointerCaptureChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/view/WindowRelayoutResult;ZZIZZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/view/WindowRelayoutResult;ZZIZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAutofillManager(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCommonPredecessor(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConfiguration(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/view/ViewRootImpl;->handleResized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowTouchModeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhideInsets(Landroid/view/ViewRootImpl;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAutofillUiShowing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInTouchMode(Landroid/view/ViewRootImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSwipeToScreenshotGestureActive(Landroid/view/ViewRootImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isSwipeToScreenshotGestureActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogAndTrace(Landroid/view/ViewRootImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeSendAppStartTimes(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->maybeSendAppStartTimes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeUpdateTooltip(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprofileRendering(Landroid/view/ViewRootImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumeAfterSyncTimeout(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->resumeAfterSyncTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAccessibilityWindowAttributesIfNeeded(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->setAccessibilityWindowAttributesIfNeeded()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreferredFrameRate(Landroid/view/ViewRootImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setPreferredFrameRate(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setPreferredFrameRateCategory(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldTouchBoost(Landroid/view/ViewRootImpl;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->shouldTouchBoost(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowInsets(Landroid/view/ViewRootImpl;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFrameRateFromThreadedRendererViews(Landroid/view/ViewRootImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateFrameRateFromThreadedRendererViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnrReported()Z
    .registers 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAnrReported:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsToolkitInitialTouchBoostFlagValue()Z
    .registers 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitInitialTouchBoostFlagValue:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsAnrReported(Z)V
    .registers 1

    sput-boolean p0, Landroid/view/ViewRootImpl;->sAnrReported:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 382
    nop

    .line 383
    const-string v0, "persist.wm.debug.client_transient"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 453
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 456
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 536
    sput-boolean v1, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 546
    sput-boolean v1, Landroid/view/ViewRootImpl;->sPreInitializedBufferAllocator:Z

    .line 925
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 1087
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sSyncProgressLock:Ljava/lang/Object;

    .line 1091
    sput v1, Landroid/view/ViewRootImpl;->sNumSyncsInProgress:I

    .line 1196
    sput-boolean v1, Landroid/view/ViewRootImpl;->sAnrReported:Z

    .line 1197
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$1;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    .line 1268
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableInvalidateCheckThread()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sToolkitEnableInvalidateCheckThreadFlagValue:Z

    .line 1269
    invoke-static {}, Landroid/sysprop/ViewProperties;->vrr_enabled()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sEnableVrr:Z

    .line 1270
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitInitialTouchBoost()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sToolkitInitialTouchBoostFlagValue:Z

    .line 1271
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitFrameRateDebug()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sToolkitFrameRateDebugFlagValue:Z

    .line 1274
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 1275
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitMetricsForFrameRateDecision()Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sToolkitMetricsForFrameRateDecisionFlagValue:Z

    .line 13821
    sput-boolean v1, Landroid/view/ViewRootImpl;->sProtoLogInitialized:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 5

    .line 1286
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    new-instance v1, Landroid/view/WindowLayout;

    invoke-direct {v1}, Landroid/view/WindowLayout;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    .line 1287
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V
    .registers 19

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    .line 460
    const/4 v8, 0x0

    iput v8, p0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    .line 530
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mFastScrollSoundEffectsEnabled:Z

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 566
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 572
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 592
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 597
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 605
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 610
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 613
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 659
    new-instance v1, Landroid/view/ViewFrameInfo;

    invoke-direct {v1}, Landroid/view/ViewFrameInfo;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    .line 660
    new-instance v1, Landroid/view/InputEventAssigner;

    invoke-direct {v1}, Landroid/view/InputEventAssigner;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    .line 663
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    .line 669
    iput v8, p0, Landroid/view/ViewRootImpl;->mInfrequentUpdateCount:I

    .line 671
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mLastUpdateTimeMillis:J

    .line 673
    iput v8, p0, Landroid/view/ViewRootImpl;->mMinusOneFrameIntervalMillis:I

    .line 675
    iput v8, p0, Landroid/view/ViewRootImpl;->mMinusTwoFrameIntervalMillis:I

    .line 677
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mInvalidationIdleMessagePosted:Z

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViewsCache:Ljava/util/ArrayList;

    .line 701
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    .line 702
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 704
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 705
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 733
    iput v8, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    .line 760
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    .line 768
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mCheckIfCanDraw:Z

    .line 771
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mLastTraversalWasVisible:Z

    .line 774
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z

    .line 776
    iput v8, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    .line 777
    iput v8, p0, Landroid/view/ViewRootImpl;->mLastSeqId:I

    .line 778
    iput v8, p0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    .line 779
    iput v8, p0, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    .line 789
    iput v8, p0, Landroid/view/ViewRootImpl;->mNonSyncEarlySeqId:I

    .line 817
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 838
    iput v8, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    .line 841
    const-string v1, "pq"

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 847
    new-instance v1, Landroid/view/ViewRootImpl$UnhandledKeyManager;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>(Landroid/view/ViewRootImpl-IA;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    .line 849
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 853
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 855
    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 858
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBbqApplyToken:Landroid/os/IBinder;

    .line 860
    new-instance v1, Landroid/view/HdrRenderState;

    invoke-direct {v1, p0}, Landroid/view/HdrRenderState;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    .line 869
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 870
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 880
    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 888
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    .line 889
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    .line 890
    new-instance v1, Landroid/app/WindowConfiguration;

    invoke-direct {v1}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTempWinConfig:Landroid/app/WindowConfiguration;

    .line 891
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    .line 892
    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 898
    iput v8, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    .line 901
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 903
    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 905
    new-instance v1, Landroid/util/MergedConfiguration;

    invoke-direct {v1}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 913
    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 914
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mLastReportedInsetsStateSeq:I

    .line 915
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mLastReportedActiveControlsSeq:I

    .line 935
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 936
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 938
    iput v0, p0, Landroid/view/ViewRootImpl;->mLastTouchDeviceId:I

    .line 948
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 949
    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 954
    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    .line 956
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRootImpl;->mLargestChildPercentage:F

    .line 958
    iput v8, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 965
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mResolvedPointerIcon:Landroid/view/PointerIcon;

    .line 984
    new-instance v4, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v4, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 995
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 996
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 997
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 1011
    nop

    .line 1012
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v4

    if-eqz v4, :cond_161

    .line 1013
    new-instance v4, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v4, p0, v8}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_162

    :cond_161
    move-object v4, v10

    :goto_162
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 1022
    new-instance v4, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-direct {v4, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 1033
    new-instance v4, Landroid/view/ViewRootRectTracker;

    new-instance v5, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda19;

    invoke-direct {v5}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    .line 1035
    new-instance v4, Landroid/view/ViewRootRectTracker;

    new-instance v5, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda20;

    invoke-direct {v5}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda20;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    .line 1037
    new-instance v4, Landroid/view/ViewRootRectTracker;

    new-instance v5, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda21;

    invoke-direct {v5}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda21;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/ViewRootRectTracker;-><init>(Ljava/util/function/Function;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    .line 1078
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguardLock:Ljava/lang/Object;

    .line 1093
    iput v8, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    .line 1097
    const-wide/16 v11, 0x9c4

    iput-wide v11, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    .line 1102
    iput v8, p0, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    .line 1123
    iput v8, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    .line 1126
    iput v8, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I

    .line 1129
    iput v3, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 1132
    iput v3, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    .line 1134
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    .line 1136
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    .line 1138
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsPressedGesture:Z

    .line 1139
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    .line 1143
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mIsFrameRateConflicted:Z

    .line 1145
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    .line 1147
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mTouchAndDrawn:Z

    .line 1149
    iput v9, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    .line 1167
    iput v8, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    .line 1168
    iput v8, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    .line 1169
    iput v8, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    .line 1170
    iput v8, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    .line 1172
    new-instance v3, Landroid/view/ViewRootImpl$CornerRadii;

    invoke-direct {v3}, Landroid/view/ViewRootImpl$CornerRadii;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    .line 1193
    new-instance v3, Landroid/view/WindowRelayoutResult;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    new-instance v13, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v13}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    invoke-direct {v3, v4, v5, v6, v13}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    .line 1224
    new-instance v3, Landroid/view/ViewRootImpl$2;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCornerRadiiCallback:Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;

    .line 1248
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    .line 1249
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsetsChanged:Z

    .line 1253
    const-string v13, "ViewRootImpl"

    iput-object v13, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 1257
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAppStartTimestampsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1258
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mAppStartTrackingStarted:Z

    .line 1259
    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mRenderThreadDrawStartTimeNs:J

    .line 1260
    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mFirstFramePresentedTimeNs:J

    .line 1279
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mPointerIconEvent:Landroid/view/MotionEvent;

    .line 1280
    iput v8, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    .line 1281
    iput-wide v1, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    .line 2470
    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2781
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    .line 7311
    new-instance v1, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7312
    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda22;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7315
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLooper:Landroid/os/Looper;

    .line 7316
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueue:Landroid/os/MessageQueue;

    .line 10815
    new-instance v1, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 10905
    new-instance v1, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 10916
    new-instance v1, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 11008
    new-instance v1, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 13234
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    .line 1291
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1292
    move-object/from16 v1, p3

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 1293
    move-object/from16 v1, p4

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    .line 1294
    move-object/from16 v3, p2

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 1295
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 1296
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_vri_package()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27b

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27b

    move v1, v9

    goto :goto_27c

    :cond_27b
    move v1, v8

    :goto_27c
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    .line 1298
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 1299
    new-instance v1, Landroid/view/WindowLeaked;

    invoke-direct {v1, v10}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 1300
    iput v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1301
    iput v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1302
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 1304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastLayoutFrame:Landroid/graphics/Rect;

    .line 1305
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 1306
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    .line 1307
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 1308
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 1309
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1310
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 1311
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 1312
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    .line 1313
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 1314
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v6, p0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1316
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 1317
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1318
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 1319
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 1320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 1321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 1322
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 1323
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 1324
    new-instance v0, Landroid/view/InsetsController;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost;

    invoke-direct {v1, p0}, Landroid/view/ViewRootInsetsControllerHost;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-direct {v0, v1}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 1325
    new-instance v0, Landroid/view/ImeBackAnimationController;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-direct {v0, p0, v1}, Landroid/view/ImeBackAnimationController;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    .line 1326
    new-instance v0, Landroid/view/HandwritingInitiator;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1328
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v0, v1, v2}, Landroid/view/HandwritingInitiator;-><init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    .line 1330
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getViewBoundsSandboxingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mViewBoundsSandboxingEnabled:Z

    .line 1331
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1332
    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsStylusPointerIconEnabled:Z

    .line 1334
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->initializeProtoLogInProcess()V

    .line 1336
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {p1, v0}, Landroid/view/input/InputEventCompatHandler;->buildChain(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/input/InputEventCompatHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

    .line 1338
    sget-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v0, :cond_373

    .line 1339
    iget v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_36e

    move v0, v9

    goto :goto_36f

    :cond_36e
    move v0, v8

    :goto_36f
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 1341
    sput-boolean v9, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 1344
    :cond_373
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 1345
    new-instance v0, Landroid/view/ImeFocusController;

    invoke-direct {v0, p0}, Landroid/view/ImeFocusController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    .line 1347
    iput-wide v11, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    .line 1348
    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/window/WindowOnBackInvokedDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    .line 1349
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->sensitiveContentAppProtection()Z

    move-result v0

    if-eqz v0, :cond_3a7

    .line 1350
    nop

    .line 1352
    const-string v0, "sensitive_content_protection_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1351
    invoke-static {v0}, Landroid/view/ISensitiveContentProtectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISensitiveContentProtectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

    .line 1353
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

    if-nez v0, :cond_3a9

    .line 1354
    const-string v0, "SensitiveContentProtectionService shouldn\'t be null"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a9

    .line 1357
    :cond_3a7
    iput-object v10, p0, Landroid/view/ViewRootImpl;->mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

    .line 1361
    :cond_3a9
    :goto_3a9
    nop

    .line 1362
    const-wide/32 v0, 0x14cfa985

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3ba

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->disableDrawWakeLock()Z

    move-result v0

    if-eqz v0, :cond_3ba

    move v8, v9

    :cond_3ba
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mDisableDrawWakeLock:Z

    .line 1363
    nop

    .line 1364
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->subscribeGranularDisplayEvents()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsSubscribeGranularDisplayEventsEnabled:Z

    .line 1366
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/Flags;->adpfViewrootimplActionDownBoost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mSendPerfHintOnTouch:Z

    .line 1368
    sget-boolean v0, Landroid/view/ViewRootImpl;->sPreInitializedBufferAllocator:Z

    if-nez v0, :cond_3d2

    .line 1369
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->preInitBufferAllocator()V

    .line 1370
    sput-boolean v9, Landroid/view/ViewRootImpl;->sPreInitializedBufferAllocator:Z

    .line 1372
    :cond_3d2
    return-void
.end method

.method public static greylist-max-r addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .registers 3

    .line 1385
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1386
    :try_start_3
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    monitor-exit v0

    .line 1388
    return-void

    .line 1387
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static greylist-max-o addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3

    .line 1375
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1376
    :try_start_3
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_c

    .line 1377
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    :cond_c
    monitor-exit v0

    .line 1380
    return-void

    .line 1379
    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private blacklist addFrameCommitCallbackIfNeeded()V
    .registers 4

    .line 5485
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5486
    return-void

    .line 5489
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 5490
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 5491
    if-eqz v0, :cond_19

    .line 5492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 5493
    :goto_1a
    if-nez v1, :cond_1d

    .line 5494
    return-void

    .line 5501
    :cond_1d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda15;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/view/ThreadedRenderer;->setFrameCommitCallback(Landroid/graphics/HardwareRenderer$FrameCommitCallback;)V

    .line 5512
    return-void
.end method

.method private blacklist adjustLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5

    .line 2273
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2274
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x40800

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    .line 2276
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2277
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    if-nez v1, :cond_21

    .line 2278
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v1

    if-nez v1, :cond_21

    .line 2279
    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 2280
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2283
    :cond_21
    return v0
.end method

.method public static blacklist adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;IZ)V
    .registers 10

    .line 3261
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    .line 3262
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3263
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3264
    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0xf0

    .line 3266
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    .line 3267
    and-int/lit8 v5, p1, 0x4

    const/4 v6, 0x0

    if-nez v5, :cond_20

    .line 3268
    and-int/lit8 v4, v4, -0x5

    .line 3269
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    .line 3270
    const/4 v5, 0x4

    goto :goto_1f

    .line 3271
    :cond_1e
    move v5, v6

    :goto_1f
    or-int/2addr v4, v5

    .line 3273
    :cond_20
    and-int/lit8 v5, p1, 0x8

    if-nez v5, :cond_2f

    .line 3274
    and-int/lit8 v4, v4, -0x9

    .line 3275
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_2d

    .line 3276
    const/16 v5, 0x8

    goto :goto_2e

    .line 3277
    :cond_2d
    move v5, v6

    :goto_2e
    or-int/2addr v4, v5

    .line 3279
    :cond_2f
    const/16 v5, 0x10

    and-int/2addr p1, v5

    if-nez p1, :cond_3f

    .line 3280
    and-int/lit8 p1, v4, -0x11

    .line 3281
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3c

    .line 3282
    move v6, v5

    goto :goto_3d

    .line 3283
    :cond_3c
    nop

    :goto_3d
    or-int v4, p1, v6

    .line 3285
    :cond_3f
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v4, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 3287
    const/4 p1, 0x1

    if-nez p2, :cond_59

    .line 3288
    and-int/lit16 p2, v0, 0x1000

    if-nez p2, :cond_54

    and-int/lit16 p2, v1, 0x400

    if-eqz p2, :cond_4f

    goto :goto_54

    .line 3292
    :cond_4f
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, p2, Landroid/view/InsetsFlags;->behavior:I

    goto :goto_59

    .line 3290
    :cond_54
    :goto_54
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v4, 0x2

    iput v4, p2, Landroid/view/InsetsFlags;->behavior:I

    .line 3296
    :cond_59
    :goto_59
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr p2, v4

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3298
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr p2, v4

    if-eqz p2, :cond_69

    .line 3299
    return-void

    .line 3302
    :cond_69
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p2

    .line 3303
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v4

    .line 3305
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_7e

    and-int/lit16 v6, v1, 0x100

    if-nez v6, :cond_7e

    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_84

    .line 3308
    :cond_7e
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    not-int v6, v6

    and-int/2addr p2, v6

    .line 3310
    :cond_84
    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_8d

    const/high16 v0, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_93

    .line 3312
    :cond_8d
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    not-int v0, v0

    and-int/2addr p2, v0

    .line 3314
    :cond_93
    const/16 v0, 0x7d5

    if-eq v2, v0, :cond_b9

    const/16 v0, 0x7d3

    if-ne v2, v0, :cond_9c

    goto :goto_b9

    .line 3316
    :cond_9c
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    and-int/2addr p1, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    if-ne p1, v0, :cond_b7

    .line 3317
    if-ne v3, v5, :cond_b0

    .line 3318
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    or-int/2addr p2, p1

    move p1, v4

    goto :goto_ba

    .line 3320
    :cond_b0
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3323
    :cond_b7
    move p1, v4

    goto :goto_ba

    .line 3315
    :cond_b9
    :goto_b9
    nop

    .line 3323
    :goto_ba
    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 3324
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 3327
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p2, -0x10000001

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3328
    return-void
.end method

.method private static blacklist appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V
    .registers 5

    .line 10256
    iget v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 10257
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 10258
    iget-object v0, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 10259
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 10260
    check-cast p0, Landroid/view/ViewGroup;

    .line 10262
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10263
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_27

    .line 10264
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 10263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 10267
    :cond_27
    return-void
.end method

.method private greylist-max-o applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 3135
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_d

    .line 3136
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_18

    .line 3138
    :cond_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3141
    :goto_18
    return-void
.end method

.method private blacklist applySensitiveContentAppProtection(Z)V
    .registers 5

    .line 4755
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

    if-nez v0, :cond_5

    .line 4756
    return-void

    .line 4763
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSensitiveContentProtectionService:Landroid/view/ISensitiveContentProtectionManager;

    .line 4764
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4763
    invoke-interface {v0, v1, v2, p1}, Landroid/view/ISensitiveContentProtectionManager;->setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 4767
    goto :goto_1d

    .line 4765
    :catch_15
    move-exception p1

    .line 4766
    const-string v0, "ViewRootImpl"

    const-string v1, "Unable to protect sensitive content during screen share"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4768
    :goto_1d
    return-void
.end method

.method private blacklist boostFrameRate(I)V
    .registers 6

    .line 13698
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    .line 13699
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13700
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 13702
    return-void
.end method

.method static blacklist categoryToString(I)Ljava/lang/String;
    .registers 1

    .line 13392
    packed-switch p0, :pswitch_data_16

    .line 13398
    const-string p0, "default"

    goto :goto_14

    .line 13397
    :pswitch_6
    const-string p0, "high"

    goto :goto_14

    .line 13396
    :pswitch_9
    const-string p0, "high hint"

    goto :goto_14

    .line 13395
    :pswitch_c
    const-string p0, "normal"

    goto :goto_14

    .line 13394
    :pswitch_f
    const-string p0, "low"

    goto :goto_14

    .line 13393
    :pswitch_12
    const-string p0, "no preference"

    .line 13400
    :goto_14
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 9305
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 9306
    return v1

    .line 9310
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 9311
    if-eqz v0, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    .line 9312
    return v1

    .line 9316
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    .line 9317
    return v1

    .line 9325
    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 9326
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result p1

    return p1

    .line 9332
    :cond_2c
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 9333
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 9334
    return v1

    .line 9337
    :cond_36
    return v1
.end method

.method private blacklist clearLowProfileModeIfNeeded(I)V
    .registers 4

    .line 3225
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 3226
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1e

    iget p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1e

    .line 3228
    iget p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 p1, p1, -0x2

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3229
    iget p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 3230
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged()V

    .line 3232
    :cond_1e
    return-void
.end method

.method private blacklist collectFrameRateDecisionMetrics()V
    .registers 8

    .line 5429
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_13

    .line 5430
    iget-wide v3, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_12

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    .line 5431
    :cond_12
    return-void

    .line 5434
    :cond_13
    iget-wide v3, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_22

    .line 5435
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    .line 5436
    return-void

    .line 5439
    :cond_22
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getExpectedPresentationTimeNanos()J

    move-result-wide v3

    .line 5440
    iget-wide v5, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    sub-long v5, v3, v5

    .line 5441
    cmp-long v0, v5, v1

    if-gtz v0, :cond_31

    .line 5442
    return-void

    .line 5445
    :cond_31
    const-wide/32 v0, 0x3b9aca00

    div-long/2addr v0, v5

    .line 5446
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFpsTraceName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 5447
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mPreviousFrameDrawnTime:J

    .line 5449
    iget v0, p0, Landroid/view/ViewRootImpl;->mLargestChildPercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 5450
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLargestViewTraceName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 5451
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mLargestChildPercentage:F

    .line 5452
    return-void
.end method

.method private blacklist collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V
    .registers 9

    .line 11639
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-nez v0, :cond_5

    .line 11640
    return-void

    .line 11642
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureCallback;

    .line 11644
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 11645
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11646
    new-instance v4, Landroid/view/ScrollCaptureTarget;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v4, v5, v3, v2, v1}, Landroid/view/ScrollCaptureTarget;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)V

    invoke-virtual {p1, v4}, Landroid/view/ScrollCaptureSearchResults;->addTarget(Landroid/view/ScrollCaptureTarget;)V

    .line 11647
    goto :goto_b

    .line 11648
    :cond_45
    return-void
.end method

.method private greylist-max-o collectViewAttributes()Z
    .registers 8

    .line 3144
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    .line 3146
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3147
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3148
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3149
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3150
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 3151
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 3152
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3153
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3154
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3155
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    iget v4, v4, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v4, v4, -0x2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3158
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged()V

    .line 3159
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_65

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v0, v3, :cond_65

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v3, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v0, v3, :cond_7e

    .line 3162
    :cond_65
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 3163
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 3164
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v0, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 3165
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 3166
    return v6

    .line 3169
    :cond_7e
    return v1
.end method

.method private static blacklist computeRenderNodeUsage(Landroid/graphics/RenderNode;Landroid/view/ViewRootImpl$GfxInfo;)V
    .registers 6

    .line 10250
    if-nez p0, :cond_3

    return-void

    .line 10251
    :cond_3
    iget-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->computeApproximateMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    .line 10252
    iget-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->computeApproximateMemoryAllocated()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    .line 10253
    return-void
.end method

.method private blacklist createSyncIfNeeded()V
    .registers 6

    .line 4651
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_b

    goto :goto_65

    .line 4655
    :cond_b
    sget-boolean v0, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    goto :goto_14

    :cond_12
    iget v0, p0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    .line 4656
    :goto_14
    sget-boolean v1, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v1, :cond_22

    .line 4659
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mLastSeqId:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mLastSeqId:I

    .line 4661
    :cond_22
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroupState:I

    .line 4662
    new-instance v2, Landroid/window/SurfaceSyncGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wmsSync-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;-><init>(Landroid/view/ViewRootImpl;I)V

    invoke-direct {v2, v3, v4}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 4683
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppStartTrackingStarted:Z

    if-nez v0, :cond_5e

    .line 4684
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppStartTrackingStarted:Z

    .line 4685
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4686
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/ViewRootImpl$5;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    .line 4701
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4708
    :cond_5e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 4709
    return-void

    .line 4652
    :cond_65
    :goto_65
    return-void
.end method

.method private greylist-max-o deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7

    .line 10665
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10666
    invoke-virtual {v0}, Landroid/view/InputEvent;->getId()I

    move-result v0

    .line 10665
    const-wide/16 v1, 0x8

    const-string v3, "deliverInputEvent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 10668
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 10669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverInputEvent src=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10670
    invoke-virtual {v3}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " eventTimeNano="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10671
    invoke-virtual {v3}, Landroid/view/InputEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10672
    invoke-virtual {v3}, Landroid/view/InputEvent;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10669
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10675
    :cond_57
    :try_start_57
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_71

    .line 10676
    const-string v0, "verifyEventConsistency"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_b3

    .line 10678
    :try_start_60
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6c

    .line 10680
    :try_start_68
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10681
    goto :goto_71

    .line 10680
    :catchall_6c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10681
    throw p1

    .line 10685
    :cond_71
    :goto_71
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 10686
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_85

    .line 10688
    :cond_7a
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_85

    :cond_83
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 10691
    :goto_85
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v3, v3, Landroid/view/KeyEvent;

    if-eqz v3, :cond_a2

    .line 10692
    const-string v3, "preDispatchToUnhandledKeyManager"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_90
    .catchall {:try_start_68 .. :try_end_90} :catchall_b3

    .line 10694
    :try_start_90
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preDispatch(Landroid/view/KeyEvent;)V
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_9d

    .line 10696
    :try_start_99
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10697
    goto :goto_a2

    .line 10696
    :catchall_9d
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10697
    throw p1

    .line 10700
    :cond_a2
    :goto_a2
    if-eqz v0, :cond_ab

    .line 10701
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    .line 10702
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_ae

    .line 10704
    :cond_ab
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_ae
    .catchall {:try_start_99 .. :try_end_ae} :catchall_b3

    .line 10707
    :goto_ae
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10708
    nop

    .line 10709
    return-void

    .line 10707
    :catchall_b3
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10708
    throw p1
.end method

.method private blacklist destroyAndInvalidate()V
    .registers 1

    .line 12327
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 12330
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 12331
    return-void
.end method

.method private greylist-max-o destroyHardwareRenderer()V
    .registers 4

    .line 10378
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 10380
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {v1}, Landroid/view/HdrRenderState;->stopListening()V

    .line 10382
    if-eqz v0, :cond_33

    .line 10383
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v1, :cond_14

    .line 10384
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 10386
    :cond_14
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 10387
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 10389
    :cond_1d
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 10390
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    .line 10392
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 10393
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 10394
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->logColorMode(IZ)V

    .line 10396
    :cond_33
    return-void
.end method

.method private blacklist destroySurface()V
    .registers 3

    .line 2927
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2928
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 2929
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    .line 2931
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2932
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 2934
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_21

    .line 2935
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2936
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2939
    :cond_21
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_2e

    .line 2940
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, v1, v1}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    .line 2944
    :cond_2e
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    .line 2945
    iput v0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I

    .line 2946
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 2947
    iput v0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    .line 2948
    return-void
.end method

.method private blacklist determineForceInvertDarkOverride(Z)I
    .registers 6

    .line 2103
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2104
    return v1

    .line 2106
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 2107
    if-nez v0, :cond_15

    .line 2108
    return v1

    .line 2110
    :cond_15
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getForceInvertState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 2111
    return v1

    .line 2113
    :cond_1d
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getForceInvertOverrideState()I

    move-result v0

    .line 2114
    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_36

    .line 2120
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid override state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2117
    :pswitch_2d
    goto :goto_35

    .line 2119
    :pswitch_2e
    move v1, v2

    goto :goto_35

    .line 2115
    :pswitch_30
    if-eqz p1, :cond_34

    .line 2116
    move v1, v2

    goto :goto_35

    :cond_34
    nop

    .line 2114
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2e
        :pswitch_2d
    .end packed-switch
.end method

.method private blacklist dispatchDispatchSystemUiVisibilityChanged()V
    .registers 4

    .line 3235
    iget v0, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    iget v1, v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    if-eq v0, v1, :cond_1a

    .line 3236
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 3237
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3239
    :cond_1a
    return-void
.end method

.method private blacklist dispatchFocusEvent(ZZ)V
    .registers 10

    .line 4930
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 4931
    if-eqz p1, :cond_5c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4932
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4934
    :try_start_16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4935
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v1 .. v6}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_29
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_29} :catch_2a

    .line 4951
    goto :goto_5c

    .line 4937
    :catch_2a
    move-exception v0

    move-object p1, v0

    .line 4938
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v0, "OutOfResourcesException locking surface"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4940
    :try_start_33
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {p1, p2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 4941
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string p2, "No processes killed for memory; killing self"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4b} :catch_4c

    .line 4946
    :cond_4b
    goto :goto_4d

    .line 4945
    :catch_4c
    move-exception v0

    .line 4948
    :goto_4d
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4950
    return-void

    .line 4954
    :cond_5c
    :goto_5c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 4956
    if-nez p2, :cond_69

    .line 4957
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, p1, v0}, Landroid/view/ImeFocusController;->onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V

    .line 4960
    :cond_69
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p2, :cond_8d

    .line 4961
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p2, p2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 4962
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 4963
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p2, p2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 4964
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz p1, :cond_8d

    .line 4965
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->hideTooltip()V

    .line 4968
    :cond_8d
    return-void
.end method

.method private blacklist dispatchInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 4

    .line 10416
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 10417
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10418
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10419
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 p2, 0x1d

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10420
    return-void
.end method

.method private greylist-max-o dispatchPointerCaptureChanged(Z)V
    .registers 4

    .line 11201
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 11202
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 11203
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 11204
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11205
    return-void
.end method

.method private greylist-max-r dispatchResized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    .registers 8

    .line 10401
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p2, :cond_a

    sget-boolean p2, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-nez p2, :cond_a

    .line 10402
    const/4 p2, 0x5

    goto :goto_b

    :cond_a
    const/4 p2, 0x4

    .line 10401
    :goto_b
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 10403
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 10404
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10405
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 10406
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10407
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 10408
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 10410
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10411
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10412
    return-void
.end method

.method private blacklist dispatchScrollCaptureSearchResponse(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 10

    .line 11718
    invoke-virtual {p2}, Landroid/view/ScrollCaptureSearchResults;->getTopResult()Landroid/view/ScrollCaptureTarget;

    move-result-object v0

    .line 11720
    new-instance v1, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v1}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    .line 11721
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ScrollCaptureResponse$Builder;->setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11722
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ScrollCaptureResponse$Builder;->setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11724
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 11725
    new-instance v3, Landroid/util/IndentingPrintWriter;

    invoke-direct {v3, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 11726
    invoke-virtual {p2, v3}, Landroid/view/ScrollCaptureSearchResults;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 11727
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 11728
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->addMessage(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11730
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const-string v2, "Failed to send scroll capture search result"

    const-string v3, "ViewRootImpl"

    if-nez p2, :cond_4e

    .line 11731
    const-string p2, "The root view disappeared!"

    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11733
    :try_start_41
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 11736
    goto :goto_4d

    .line 11734
    :catch_49
    move-exception p1

    .line 11735
    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11737
    :goto_4d
    return-void

    .line 11740
    :cond_4e
    if-nez v0, :cond_62

    .line 11741
    const-string p2, "No scrollable targets found in window"

    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11743
    :try_start_55
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d

    .line 11746
    goto :goto_61

    .line 11744
    :catch_5d
    move-exception p1

    .line 11745
    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11747
    :goto_61
    return-void

    .line 11750
    :cond_62
    const-string p2, "Connected"

    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11753
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 11754
    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v2

    .line 11755
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11756
    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11757
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p2, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 11758
    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setBoundsInWindow(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11761
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 11762
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11763
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p2, v4, v4, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 11764
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v4, v4, v6

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 11765
    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setWindowBounds(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11766
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrollCaptureSearchResponse: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11769
    new-instance p2, Landroid/view/ScrollCaptureConnection;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 11770
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Landroid/view/ScrollCaptureConnection;-><init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V

    .line 11771
    invoke-virtual {v1, p2}, Landroid/view/ScrollCaptureResponse$Builder;->setConnection(Landroid/view/IScrollCaptureConnection;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11774
    :try_start_e9
    invoke-virtual {v1}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_f0} :catch_f1

    .line 11780
    goto :goto_f5

    .line 11775
    :catch_f1
    move-exception p1

    .line 11779
    invoke-virtual {p2}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 11781
    :goto_f5
    return-void
.end method

.method private blacklist dispatchTransformHintChanged(I)V
    .registers 5

    .line 12894
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12895
    return-void

    .line 12897
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    .line 12898
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 12899
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 12900
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 12901
    invoke-interface {v2, p1}, Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;->onBufferTransformHintChanged(I)V

    .line 12899
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 12903
    :cond_24
    return-void
.end method

.method private blacklist draw(ZLandroid/window/SurfaceSyncGroup;Z)Z
    .registers 23

    .line 5769
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 5770
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_10

    .line 5771
    return v9

    .line 5778
    :cond_10
    sget-boolean v4, Landroid/view/ViewRootImpl;->sToolkitMetricsForFrameRateDecisionFlagValue:Z

    if-eqz v4, :cond_17

    .line 5779
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->collectFrameRateDecisionMetrics()V

    .line 5782
    :cond_17
    sget-boolean v4, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v10, 0x1

    if-nez v4, :cond_3f

    .line 5783
    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 5784
    :try_start_1f
    sput-boolean v10, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 5785
    sget-object v5, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5786
    move v6, v9

    :goto_28
    if-ge v6, v5, :cond_3a

    .line 5787
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v8, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 5786
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 5789
    :cond_3a
    monitor-exit v4

    goto :goto_3f

    :catchall_3c
    move-exception v0

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_3c

    throw v0

    .line 5792
    :cond_3f
    :goto_3f
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v9}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 5794
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v5, :cond_54

    .line 5795
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v5, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 5796
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 5799
    :cond_54
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v5, :cond_62

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_62

    move v11, v10

    goto :goto_63

    :cond_62
    move v11, v9

    .line 5801
    :goto_63
    if-eqz v11, :cond_6c

    .line 5802
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    goto :goto_6e

    .line 5804
    :cond_6c
    iget v5, v1, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 5806
    :goto_6e
    iget v6, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v6, v5, :cond_86

    .line 5807
    iput v5, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 5808
    nop

    .line 5809
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v6, :cond_84

    .line 5810
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v7, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v6, v7}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 5814
    :cond_84
    move v6, v10

    goto :goto_88

    .line 5806
    :cond_86
    move/from16 v6, p1

    .line 5814
    :goto_88
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 5815
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v8, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 5817
    move v12, v7

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 5818
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v13, :cond_a6

    .line 5820
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 5821
    if-eqz v11, :cond_a5

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_a5

    .line 5822
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5824
    :cond_a5
    return v9

    .line 5827
    :cond_a6
    if-eqz v6, :cond_b9

    .line 5828
    iget v6, v1, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v6, v13

    float-to-int v6, v6

    iget v14, v1, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v14, v14

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    float-to-int v12, v14

    invoke-virtual {v7, v9, v9, v6, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5840
    :cond_b9
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 5842
    iget v6, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v6, v6

    .line 5843
    iget v12, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v12, v12

    add-int/2addr v12, v5

    .line 5844
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 5845
    if-eqz v5, :cond_cd

    iget-object v4, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 5846
    :cond_cd
    if-eqz v4, :cond_de

    .line 5847
    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    .line 5848
    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v5

    .line 5851
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v5, v13}, Landroid/graphics/Rect;->offset(II)V

    move v5, v12

    goto :goto_df

    .line 5846
    :cond_de
    move v5, v12

    .line 5854
    :goto_df
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->isAccessibilityFocusDirty()Z

    move-result v12

    .line 5857
    if-eqz v12, :cond_f2

    .line 5858
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5859
    invoke-direct {v1, v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 5860
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 5864
    :cond_f2
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 5865
    invoke-virtual {v14}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    iput-wide v14, v13, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 5867
    nop

    .line 5868
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_10e

    iget-boolean v13, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v13, :cond_10e

    if-eqz v12, :cond_209

    .line 5869
    :cond_10e
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v13

    if-eqz v13, :cond_1ad

    .line 5871
    if-nez v12, :cond_11d

    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    if-eqz v3, :cond_11b

    goto :goto_11d

    :cond_11b
    move v3, v9

    goto :goto_11e

    :cond_11d
    :goto_11d
    move v3, v10

    .line 5872
    :goto_11e
    iput-boolean v9, v1, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 5875
    iput-boolean v9, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 5877
    iget v4, v1, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v4, v5, :cond_12a

    iget v4, v1, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v4, v6, :cond_12f

    .line 5878
    :cond_12a
    iput v5, v1, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 5879
    iput v6, v1, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 5880
    move v3, v10

    .line 5883
    :cond_12f
    if-eqz v3, :cond_138

    .line 5884
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v3}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 5887
    :cond_138
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 5891
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v3

    .line 5893
    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_14a

    .line 5897
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4, v9}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 5900
    :cond_14a
    if-eqz v3, :cond_14f

    .line 5901
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    .line 5904
    :cond_14f
    nop

    .line 5906
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v4, v4, Landroid/view/View$AttachInfo;->mDrawingTime:J

    invoke-virtual {v3, v4, v5}, Landroid/view/HdrRenderState;->updateForFrame(J)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 5907
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {v3}, Landroid/view/HdrRenderState;->getRenderHdrSdrRatio()F

    move-result v3

    .line 5908
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 5909
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    .line 5910
    invoke-virtual {v6}, Landroid/view/HdrRenderState;->getDesiredHdrSdrRatio()F

    move-result v6

    .line 5908
    invoke-virtual {v4, v5, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setExtendedRangeBrightness(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 5911
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4, v3}, Landroid/view/ThreadedRenderer;->setTargetHdrSdrRatio(F)V

    .line 5914
    :cond_17c
    if-eqz v0, :cond_18b

    .line 5915
    invoke-direct {v1, v2, v0}, Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncGroup;)V

    .line 5916
    if-eqz v2, :cond_192

    .line 5917
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->forceDrawNextFrame()V

    goto :goto_192

    .line 5919
    :cond_18b
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v0, :cond_192

    .line 5923
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V

    .line 5926
    :cond_192
    :goto_192
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v2

    .line 5927
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 5930
    iget-wide v4, v1, Landroid/view/ViewRootImpl;->mRenderThreadDrawStartTimeNs:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1ab

    .line 5931
    iput-wide v2, v1, Landroid/view/ViewRootImpl;->mRenderThreadDrawStartTimeNs:J

    .line 5933
    :cond_1ab
    move v9, v10

    goto :goto_209

    .line 5942
    :cond_1ad
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1f9

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 5943
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1f6

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 5944
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_1f3

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 5945
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 5948
    :try_start_1cf
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v14, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v15, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1e4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1cf .. :try_end_1e4} :catch_1eb

    .line 5953
    nop

    .line 5955
    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 5956
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5957
    return v9

    .line 5950
    :catch_1eb
    move-exception v0

    .line 5951
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 5952
    return v9

    .line 5945
    :cond_1f0
    move-object/from16 v18, v4

    goto :goto_1fb

    .line 5944
    :cond_1f3
    move-object/from16 v18, v4

    goto :goto_1fb

    .line 5943
    :cond_1f6
    move-object/from16 v18, v4

    goto :goto_1fb

    .line 5942
    :cond_1f9
    move-object/from16 v18, v4

    .line 5960
    :goto_1fb
    move-object v2, v3

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move v4, v6

    move v6, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_209

    .line 5962
    return v9

    .line 5967
    :cond_209
    :goto_209
    if-eqz v11, :cond_210

    .line 5968
    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 5969
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5971
    :cond_210
    return v9
.end method

.method private blacklist drawAccessibilityFocusedBorderOnRoundDisplay(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V
    .registers 7

    .line 6113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6114
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 6115
    int-to-float p2, p3

    iget-object p3, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6118
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusStrokeWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    sub-float p3, p2, p3

    .line 6115
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6120
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6121
    return-void
.end method

.method private greylist-max-o drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .registers 6

    .line 6072
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 6073
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 6074
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 6075
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    nop

    .line 6076
    :goto_2c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6077
    if-eqz v1, :cond_59

    .line 6078
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6079
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6080
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_59

    if-eqz v2, :cond_59

    .line 6082
    nop

    .line 6083
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getRoundDisplayRadius()I

    move-result v1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getRoundDisplayAccessibilityHighlightPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 6082
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedBorderOnRoundDisplay(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V

    goto :goto_59

    .line 6086
    :cond_4b
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_59

    .line 6087
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5a

    .line 6086
    :cond_59
    :goto_59
    nop

    .line 6089
    :goto_5a
    return-void
.end method

.method private greylist-max-o drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11

    .line 5984
    const-string p2, "Could not unlock surface"

    const/4 p7, 0x1

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 5985
    iget v2, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_f} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_f} :catch_61

    .line 5996
    nop

    .line 6014
    :try_start_10
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez p4, :cond_1a

    if-eqz p3, :cond_1f

    .line 6015
    :cond_1a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6018
    :cond_1f
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 6019
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 6020
    iget-object p6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p6, Landroid/view/View;->mPrivateFlags:I

    .line 6028
    neg-int p3, p3

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6029
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz p3, :cond_3c

    .line 6030
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {p3, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 6032
    :cond_3c
    if-eqz p5, :cond_41

    iget p3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_42

    :cond_41
    move p3, v0

    :goto_42
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 6034
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6036
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_5b

    .line 6039
    :try_start_4d
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_50} :catch_52

    .line 6045
    nop

    .line 6051
    return p7

    .line 6040
    :catch_52
    move-exception p1

    .line 6041
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6042
    iput-boolean p7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 6044
    return v0

    .line 6038
    :catchall_5b
    move-exception p3

    .line 6039
    :try_start_5c
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5f} :catch_52

    .line 6045
    nop

    .line 6050
    throw p3

    .line 5989
    :catch_61
    move-exception p1

    .line 5990
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string p3, "Could not lock surface"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5994
    iput-boolean p7, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 5995
    return v0

    .line 5986
    :catch_6c
    move-exception p1

    .line 5987
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 5988
    return v0
.end method

.method private greylist-max-o dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 7

    .line 10180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10181
    if-nez p3, :cond_b

    .line 10182
    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10183
    return-void

    .line 10185
    :cond_b
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10186
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_17

    .line 10187
    return-void

    .line 10189
    :cond_17
    check-cast p3, Landroid/view/ViewGroup;

    .line 10190
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10191
    if-gtz v0, :cond_20

    .line 10192
    return-void

    .line 10194
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10195
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_40

    .line 10196
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 10195
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 10198
    :cond_40
    return-void
.end method

.method private greylist enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    .line 2006
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 2007
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 2010
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_e

    return-void

    .line 2013
    :cond_e
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 2016
    :goto_19
    if-eqz v0, :cond_92

    .line 2026
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 2029
    :goto_24
    sget-boolean v3, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-nez v3, :cond_2a

    if-eqz v0, :cond_92

    .line 2030
    :cond_2a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_37

    .line 2031
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 2034
    :cond_37
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2035
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_4c

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_4c

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_4c

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_4a

    goto :goto_4c

    :cond_4a
    move v0, v1

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v0, v2

    .line 2037
    :goto_4d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    if-eqz v0, :cond_55

    :cond_54
    move v1, v2

    .line 2038
    :cond_55
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 2039
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2038
    invoke-static {v0, v1, v3}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v0

    .line 2040
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2041
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1, v3}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    .line 2042
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getDesiredHdrHeadroom()F

    move-result p1

    invoke-direct {p0, v1, p1}, Landroid/view/ViewRootImpl;->updateColorModeIfNeeded(IF)V

    .line 2043
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {p1}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 2044
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateForceDarkMode()V

    .line 2045
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 2046
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 2047
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz p1, :cond_92

    .line 2048
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHardwareRendererObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 2052
    :cond_92
    return-void
.end method

.method private greylist-max-o endDragResizing()V
    .registers 4

    .line 12154
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_25

    .line 12155
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 12156
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 12157
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    .line 12158
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    .line 12157
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 12161
    :cond_23
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 12163
    :cond_25
    return-void
.end method

.method private greylist-max-o ensureTouchModeLocally(Z)Z
    .registers 3

    .line 7359
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 7361
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 7362
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 7364
    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result p1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result p1

    :goto_1e
    return p1
.end method

.method private greylist-max-o enterTouchMode()Z
    .registers 5

    .line 7368
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7372
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 7373
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 7374
    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 7375
    if-eqz v2, :cond_26

    .line 7379
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v0

    return v0

    .line 7383
    :cond_26
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    .line 7384
    return v3

    .line 7388
    :cond_2c
    return v1
.end method

.method private static greylist-max-o findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .line 7398
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 7399
    :goto_4
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 7400
    check-cast p0, Landroid/view/ViewGroup;

    .line 7401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_1a

    .line 7402
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7403
    return-object p0

    .line 7405
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7406
    return-object v1

    .line 7408
    :cond_21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 7410
    goto :goto_4

    .line 7411
    :cond_26
    return-object v1
.end method

.method private greylist-max-o findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    .line 5021
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5023
    if-eqz v0, :cond_8

    .line 5024
    return-object v0

    .line 5027
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 5028
    return-object v1

    .line 5033
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5035
    if-nez v0, :cond_1a

    .line 5036
    return-object v1

    .line 5038
    :cond_1a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5039
    return-object v0

    .line 5042
    :cond_21
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 5043
    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5045
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 5046
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5047
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v3

    .line 5048
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v4

    if-gtz v4, :cond_42

    .line 5049
    goto :goto_29

    .line 5051
    :cond_42
    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v4

    .line 5052
    const/4 v5, 0x0

    :goto_47
    if-ge v5, v4, :cond_65

    .line 5053
    nop

    .line 5054
    invoke-virtual {v3, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    .line 5053
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 5055
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 5056
    if-eqz v6, :cond_62

    .line 5057
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 5058
    return-object v6

    .line 5060
    :cond_5f
    invoke-interface {v2, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5052
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 5063
    :cond_65
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 5064
    goto :goto_29

    .line 5066
    :cond_69
    return-object v1
.end method

.method private greylist-max-o finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 8

    .line 10712
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10713
    invoke-virtual {v0}, Landroid/view/InputEvent;->getId()I

    move-result v0

    .line 10712
    const-wide/16 v1, 0x8

    const-string v3, "deliverInputEvent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 10715
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_5d

    .line 10716
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    move v0, v3

    goto :goto_1c

    :cond_1b
    move v0, v4

    .line 10717
    :goto_1c
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_23

    goto :goto_24

    :cond_23
    move v3, v4

    .line 10718
    :goto_24
    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

    if-eqz v3, :cond_48

    .line 10719
    const-string v3, "processInputEventBeforeFinish"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10722
    :try_start_2f
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10723
    invoke-virtual {v3, v4}, Landroid/view/input/InputEventCompatHandler;->processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_43

    .line 10725
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10726
    nop

    .line 10727
    if-eqz v3, :cond_42

    .line 10728
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 10730
    :cond_42
    goto :goto_4f

    .line 10725
    :catchall_43
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10726
    throw p1

    .line 10731
    :cond_48
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 10733
    :goto_4f
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_5c

    .line 10734
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-direct {p0, v1, v0}, Landroid/view/ViewRootImpl;->logHandledSystemKey(Landroid/view/KeyEvent;Z)V

    .line 10736
    :cond_5c
    goto :goto_62

    .line 10737
    :cond_5d
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 10740
    :goto_62
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 10741
    return-void
.end method

.method private greylist-max-o fireAccessibilityFocusEventIfHasFocusedNode()V
    .registers 6

    .line 4987
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4988
    return-void

    .line 4990
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4991
    if-nez v0, :cond_12

    .line 4992
    return-void

    .line 4994
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 4995
    const/16 v2, 0x8

    if-nez v1, :cond_1e

    .line 4996
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_6c

    .line 4998
    :cond_1e
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 4999
    if-eqz v1, :cond_6c

    .line 5000
    nop

    .line 5001
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    .line 5000
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 5005
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 5007
    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 5008
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5009
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 5010
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5011
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 5012
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5013
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 5014
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5015
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 5018
    :cond_6c
    :goto_6c
    return-void
.end method

.method private static greylist-max-o forceLayout(Landroid/view/View;)V
    .registers 4

    .line 6880
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 6881
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 6882
    check-cast p0, Landroid/view/ViewGroup;

    .line 6883
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6884
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1a

    .line 6885
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 6884
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6888
    :cond_1a
    return-void
.end method

.method private greylist-max-o getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 6186
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2b

    .line 6187
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6188
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120007

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 6190
    if-eqz v1, :cond_2b

    .line 6191
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 6192
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 6196
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_48

    .line 6197
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 6199
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusStrokeWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6200
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusColor()I

    move-result v2

    .line 6199
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 6203
    :cond_48
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private greylist-max-o getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .registers 7

    .line 6124
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 6125
    const-string p1, "ViewRootImpl"

    const-string v0, "calling getAccessibilityFocusedRect() while the mView is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    return v1

    .line 6128
    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6129
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_6b

    .line 6133
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6134
    if-eqz v0, :cond_6a

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_27

    goto :goto_6a

    .line 6138
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 6139
    const/4 v3, 0x1

    if-nez v2, :cond_32

    .line 6140
    invoke-virtual {v0, p1, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_3b

    .line 6141
    :cond_32
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_69

    .line 6142
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 6148
    :goto_3b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6149
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6150
    iget v2, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v2, v2

    iget v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 6151
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 6154
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6157
    :cond_5e
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 6158
    return v1

    .line 6161
    :cond_65
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->adjustAccessibilityFocusedRectBoundsIfNeeded(Landroid/graphics/Rect;)V

    .line 6163
    return v3

    .line 6144
    :cond_69
    return v1

    .line 6135
    :cond_6a
    :goto_6a
    return v1

    .line 6130
    :cond_6b
    :goto_6b
    return v1
.end method

.method private greylist-max-o getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 9560
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 9563
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 9564
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 9565
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFastScrollSoundEffectsEnabled:Z

    .line 9567
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 9561
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    .line 9588
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 9589
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 9590
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_22

    .line 9594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 9595
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 9594
    return-object v0

    .line 9598
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 6

    .line 11470
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 11471
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 11473
    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 11474
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 11475
    nop

    .line 11476
    :goto_11
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 11477
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11478
    iget-object p1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11479
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_20

    .line 11480
    check-cast p1, Landroid/view/View;

    goto :goto_21

    .line 11482
    :cond_20
    move-object p1, v1

    .line 11484
    :goto_21
    goto :goto_11

    .line 11485
    :cond_22
    nop

    .line 11486
    :goto_23
    if-eqz p2, :cond_3b

    .line 11487
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 11488
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 11489
    return-object p2

    .line 11491
    :cond_2f
    iget-object p1, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11492
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_39

    .line 11493
    check-cast p1, Landroid/view/View;

    move-object p2, p1

    goto :goto_3a

    .line 11495
    :cond_39
    move-object p2, v1

    .line 11497
    :goto_3a
    goto :goto_23

    .line 11498
    :cond_3b
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 11499
    return-object v1
.end method

.method private blacklist getCompatWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 4

    .line 1492
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1493
    iget v1, p0, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    .line 1494
    return-object v0

    .line 1496
    :cond_f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempWinConfig:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempWinConfig:Landroid/app/WindowConfiguration;

    iget v1, p0, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->scale(F)V

    .line 1498
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempWinConfig:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method private blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 1488
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFocusedViewOrNull()Landroid/view/View;
    .registers 2

    .line 8551
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private greylist-max-o getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4

    .line 3173
    nop

    .line 3175
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 3176
    const/16 v0, 0x500

    goto :goto_c

    .line 3175
    :cond_b
    const/4 v0, 0x0

    .line 3178
    :goto_c
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_15

    .line 3179
    or-int/lit16 v0, v0, 0x300

    .line 3181
    :cond_15
    return v0
.end method

.method private blacklist getNightMode()I
    .registers 2

    .line 2055
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private static blacklist getRootMeasureSpec(III)I
    .registers 3

    .line 5316
    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_6

    .line 5317
    const/4 p1, -0x1

    goto :goto_7

    :cond_6
    nop

    .line 5318
    :goto_7
    const/high16 p2, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_1e

    .line 5329
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1d

    .line 5321
    :pswitch_11
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 5322
    goto :goto_1d

    .line 5325
    :pswitch_16
    const/high16 p1, -0x80000000

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 5326
    nop

    .line 5332
    :goto_1d
    return p0

    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method private blacklist getRoundDisplayAccessibilityHighlightPaint()Landroid/graphics/Paint;
    .registers 3

    .line 6099
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    .line 6100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    .line 6101
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6102
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6104
    :cond_18
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6105
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusStrokeWidth()I

    move-result v1

    int-to-float v1, v1

    .line 6104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6106
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6107
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusColor()I

    move-result v1

    .line 6106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6108
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRoundDisplayAccessibilityHighlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getRoundDisplayRadius()I
    .registers 3

    .line 6092
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6093
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 6094
    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static greylist-max-o getRunQueue()Landroid/view/HandlerActionQueue;
    .registers 2

    .line 12126
    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    .line 12127
    if-eqz v0, :cond_b

    .line 12128
    return-object v0

    .line 12130
    :cond_b
    new-instance v0, Landroid/view/HandlerActionQueue;

    invoke-direct {v0}, Landroid/view/HandlerActionQueue;-><init>()V

    .line 12131
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12132
    return-object v0
.end method

.method private blacklist getSourceForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/View;
    .registers 4

    .line 11314
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v0

    .line 11315
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    .line 11317
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getSystemVibrator()Landroid/os/Vibrator;
    .registers 3

    .line 9571
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_10

    .line 9572
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVibrator:Landroid/os/Vibrator;

    .line 9574
    :cond_10
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private greylist-max-o getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 5238
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5239
    nop

    .line 5240
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_9
    const/16 v5, 0x1000

    if-ge v3, v0, :cond_50

    .line 5241
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 5242
    if-eqz v6, :cond_4d

    iget-object v7, v6, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_4d

    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_4d

    if-nez p2, :cond_24

    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_4d

    .line 5245
    :cond_24
    nop

    .line 5246
    move-object v5, v6

    .line 5248
    :goto_26
    if-eqz v5, :cond_40

    .line 5249
    iget v7, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    const/16 v8, 0x8

    if-ne v7, v8, :cond_33

    .line 5250
    nop

    .line 5251
    const/4 v5, 0x1

    goto :goto_41

    .line 5253
    :cond_33
    iget-object v7, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_3e

    .line 5254
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    goto :goto_26

    .line 5256
    :cond_3e
    move-object v5, v1

    goto :goto_26

    .line 5248
    :cond_40
    move v5, v2

    .line 5259
    :goto_41
    if-nez v5, :cond_4d

    .line 5260
    if-nez v4, :cond_4a

    .line 5261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5263
    :cond_4a
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5240
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 5267
    :cond_50
    if-nez p2, :cond_78

    .line 5269
    nop

    :goto_53
    if-ge v2, v0, :cond_78

    .line 5270
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 5271
    :goto_5b
    if-eqz p2, :cond_75

    iget v3, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_75

    .line 5273
    iget v3, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p2, Landroid/view/View;->mPrivateFlags:I

    .line 5274
    iget-object v3, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_73

    .line 5275
    iget-object p2, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast p2, Landroid/view/View;

    goto :goto_5b

    .line 5277
    :cond_73
    move-object p2, v1

    goto :goto_5b

    .line 5269
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 5282
    :cond_78
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5283
    return-object v4
.end method

.method private blacklist getViewBoundsSandboxingEnabled()Z
    .registers 5

    .line 9943
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 9944
    const-wide/32 v2, 0xe28701f

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_39

    .line 9951
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

    .line 9952
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 9954
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_2e} :catch_37

    if-nez v2, :cond_32

    move v2, v0

    goto :goto_33

    :cond_32
    move v2, v1

    .line 9955
    :goto_33
    if-eqz v2, :cond_36

    .line 9957
    return v1

    .line 9961
    :cond_36
    goto :goto_38

    .line 9959
    :catch_37
    move-exception v1

    .line 9963
    :goto_38
    return v0

    .line 9946
    :cond_39
    :goto_39
    return v1
.end method

.method private blacklist getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;
    .registers 5

    .line 3562
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 3563
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3564
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v1

    .line 3565
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 3564
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3566
    return-object v0
.end method

.method private blacklist handleContentCaptureFlush()V
    .registers 6

    .line 5744
    nop

    .line 5746
    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5761
    nop

    .line 5746
    return-void

    .line 5748
    :cond_c
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    .line 5749
    if-eqz v2, :cond_30

    .line 5750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushContentCapture for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5751
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5750
    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5754
    :cond_30
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 5755
    if-nez v3, :cond_43

    .line 5756
    const-string v3, "ViewRootImpl"

    const-string v4, "No ContentCapture on AttachInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_4d

    .line 5761
    if-eqz v2, :cond_42

    .line 5762
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5757
    :cond_42
    return-void

    .line 5759
    :cond_43
    const/4 v4, 0x2

    :try_start_44
    invoke-virtual {v3, v4}, Landroid/view/contentcapture/ContentCaptureManager;->flush(I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4d

    .line 5761
    if-eqz v2, :cond_4c

    .line 5762
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5765
    :cond_4c
    return-void

    .line 5761
    :catchall_4d
    move-exception v3

    if-eqz v2, :cond_53

    .line 5762
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5764
    :cond_53
    throw v3
.end method

.method private blacklist handleDispatchSystemUiVisibilityChanged()V
    .registers 5

    .line 3242
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 3243
    return-void

    .line 3245
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 3246
    iget v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_17

    .line 3247
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 3248
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 3251
    :cond_17
    iget v0, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v0, 0x7

    .line 3252
    iget v1, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    if-eq v1, v0, :cond_26

    .line 3253
    iput v0, p0, Landroid/view/ViewRootImpl;->mDispatchedSystemUiVisibility:I

    .line 3254
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 3256
    :cond_26
    return-void
.end method

.method private greylist-max-o handleDragEvent(Landroid/view/DragEvent;)V
    .registers 10

    .line 9350
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_124

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_124

    .line 9351
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    .line 9355
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_21

    .line 9356
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 9357
    iget-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 9358
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-eqz v1, :cond_29

    .line 9360
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/View;->sendWindowContentChangedAccessibilityEvent(I)V

    goto :goto_29

    .line 9364
    :cond_21
    if-ne v0, v2, :cond_25

    .line 9365
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 9367
    :cond_25
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 9370
    :cond_29
    :goto_29
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3a

    .line 9374
    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v0, :cond_35

    .line 9375
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 9377
    :cond_35
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    goto/16 :goto_124

    .line 9380
    :cond_3a
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_40

    if-ne v0, v4, :cond_6d

    .line 9381
    :cond_40
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v6, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 9382
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_54

    .line 9383
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 9386
    :cond_54
    iget v5, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v5, :cond_61

    .line 9387
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 9390
    :cond_61
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, p1, Landroid/view/DragEvent;->mX:F

    .line 9391
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, p1, Landroid/view/DragEvent;->mY:F

    .line 9395
    :cond_6d
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 9397
    if-ne v0, v4, :cond_84

    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v6, :cond_84

    .line 9398
    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 9399
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 9398
    invoke-virtual {v6, v7}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 9403
    :cond_84
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 9405
    if-ne v0, v1, :cond_93

    iget-boolean v1, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-nez v1, :cond_93

    .line 9408
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 9412
    :cond_93
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v1, :cond_b4

    .line 9414
    if-eqz v5, :cond_a0

    .line 9415
    :try_start_99
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 9417
    :cond_a0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_ab

    .line 9418
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_ab} :catch_ac

    .line 9422
    :cond_ab
    goto :goto_b4

    .line 9420
    :catch_ac
    move-exception v1

    .line 9421
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v5, "Unable to note drag target change"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9426
    :cond_b4
    :goto_b4
    if-ne v0, v4, :cond_de

    .line 9428
    :try_start_b6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting drop result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9429
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v4, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_d5} :catch_d6

    .line 9432
    goto :goto_de

    .line 9430
    :catch_d6
    move-exception v1

    .line 9431
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "Unable to report drop result"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9436
    :cond_de
    :goto_de
    if-ne v0, v2, :cond_124

    .line 9437
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-eqz v0, :cond_f7

    .line 9440
    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 9441
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->sendWindowContentChangedAccessibilityEvent(I)V

    .line 9444
    :cond_f1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDragStarted(Z)V

    .line 9446
    :cond_f7
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    .line 9447
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 9448
    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 9449
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    .line 9450
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v0, :cond_113

    .line 9451
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 9452
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    .line 9454
    :cond_113
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDragData:Landroid/content/ClipData;

    if-eqz v0, :cond_124

    .line 9455
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDragData:Landroid/content/ClipData;

    invoke-static {v0}, Landroid/view/View;->cleanUpPendingIntents(Landroid/content/ClipData;)V

    .line 9456
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mDragData:Landroid/content/ClipData;

    .line 9461
    :cond_124
    :goto_124
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 9462
    return-void
.end method

.method private greylist-max-o handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .registers 4

    .line 5070
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5072
    :try_start_7
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {p1, v0}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 5073
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_27

    .line 5074
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v0, "No processes killed for memory; killing self"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_28

    .line 5078
    :cond_27
    goto :goto_29

    .line 5077
    :catch_28
    move-exception p1

    .line 5079
    :goto_29
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 5080
    return-void
.end method

.method private greylist-max-o handlePointerCaptureChanged(Z)V
    .registers 3

    .line 6574
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_5

    .line 6575
    return-void

    .line 6577
    :cond_5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 6578
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 6579
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 6581
    :cond_10
    return-void
.end method

.method private blacklist handleResized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V
    .registers 40

    .line 2324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    move-object/from16 v6, p10

    iget-boolean v7, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v7, :cond_13

    .line 2325
    return-void

    .line 2328
    :cond_13
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewRootImpl;->onClientWindowFramesChanged(Landroid/window/ClientWindowFrames;)V

    .line 2330
    invoke-static {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/util/MergedConfiguration;I)V

    .line 2331
    iget-object v7, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 2332
    iget-object v8, v1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 2333
    iget-object v9, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 2334
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v10, :cond_32

    .line 2335
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v10, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2336
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v10, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2337
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v10, v9}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2339
    :cond_32
    move-object/from16 v10, p4

    invoke-direct {v0, v10}, Landroid/view/ViewRootImpl;->onInsetsStateChanged(Landroid/view/InsetsState;)V

    .line 2340
    iget v1, v1, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 2341
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2342
    xor-int/lit8 v11, v10, 0x1

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v12, :cond_51

    if-eqz v6, :cond_51

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 2347
    invoke-virtual {v12, v6}, Landroid/window/ActivityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    const/4 v12, 0x1

    goto :goto_52

    :cond_51
    const/4 v12, 0x0

    .line 2348
    :goto_52
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v15, v2}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5f

    if-eqz v12, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 v12, 0x0

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v12, 0x1

    .line 2350
    :goto_60
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v15, v15, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 2351
    invoke-static {v15, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 2352
    xor-int/lit8 v16, v15, 0x1

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    if-eq v14, v3, :cond_74

    const/4 v14, 0x1

    goto :goto_75

    :cond_74
    const/4 v14, 0x0

    .line 2353
    :goto_75
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget v13, v13, Landroid/window/ClientWindowFrames;->compatScale:F

    cmpl-float v13, v13, v1

    if-eqz v13, :cond_7f

    const/4 v13, 0x1

    goto :goto_80

    :cond_7f
    const/4 v13, 0x0

    .line 2354
    :goto_80
    move/from16 v17, v10

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    if-eq v10, v5, :cond_88

    const/4 v10, 0x1

    goto :goto_89

    :cond_88
    const/4 v10, 0x0

    .line 2355
    :goto_89
    sget-boolean v18, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v18, :cond_97

    .line 2356
    move/from16 v18, v10

    iget v10, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    if-le v4, v10, :cond_95

    const/4 v10, 0x1

    goto :goto_9b

    :cond_95
    const/4 v10, 0x0

    goto :goto_9b

    .line 2355
    :cond_97
    move/from16 v18, v10

    move/from16 v10, p2

    .line 2358
    :goto_9b
    move/from16 p2, v10

    move/from16 p1, v11

    const-wide/16 v10, 0x8

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v19

    if-eqz v19, :cond_df

    .line 2359
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 2362
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v11, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 2363
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v20, v10

    filled-new-array/range {v20 .. v28}, [Ljava/lang/Object;

    move-result-object v10

    .line 2359
    const-string v11, "%s handleResized frameChanged=%b configChanged=%b seqId=%d mSeqId=%d buf=%b displayChanged=%b compatScaleChanged=%b attachedFrameChanged=%b"

    invoke-static {v11, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move/from16 p1, v12

    const-wide/16 v11, 0x8

    invoke-static {v11, v12, v10}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    goto :goto_e1

    .line 2358
    :cond_df
    move/from16 p1, v12

    .line 2365
    :goto_e1
    if-nez p2, :cond_f2

    if-eqz v17, :cond_f2

    if-nez p1, :cond_f2

    if-eqz v15, :cond_f2

    if-nez v14, :cond_f2

    if-nez p5, :cond_f2

    if-nez v13, :cond_f2

    if-nez v18, :cond_f2

    .line 2368
    return-void

    .line 2371
    :cond_f2
    iput-boolean v5, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    .line 2372
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iput v1, v5, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 2373
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v1

    iput v5, v0, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    .line 2375
    if-eqz p1, :cond_10a

    .line 2377
    nop

    .line 2378
    if-eqz v14, :cond_104

    move v1, v3

    goto :goto_105

    :cond_104
    const/4 v1, -0x1

    .line 2377
    :goto_105
    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v1, v6}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    goto :goto_112

    .line 2380
    :cond_10a
    const/4 v5, 0x0

    if-eqz v14, :cond_112

    .line 2382
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 2385
    :cond_112
    :goto_112
    invoke-direct {v0, v7, v5}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;Z)V

    .line 2386
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v1, v1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2387
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v1, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_12b

    if-eqz v9, :cond_12b

    .line 2388
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v1, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2391
    :cond_12b
    iget-boolean v1, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    or-int v1, v1, p5

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2392
    iget v1, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    if-le v4, v1, :cond_137

    move v1, v4

    goto :goto_139

    :cond_137
    iget v1, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    :goto_139
    iput v1, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    .line 2393
    sget-boolean v1, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v1, :cond_14c

    .line 2394
    if-eqz p8, :cond_156

    .line 2395
    iget v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    if-le v4, v1, :cond_147

    move v1, v4

    goto :goto_149

    :cond_147
    iget v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    :goto_149
    iput v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    goto :goto_156

    .line 2398
    :cond_14c
    iget v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    if-le v4, v1, :cond_152

    move v1, v4

    goto :goto_154

    :cond_152
    iget v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    :goto_154
    iput v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    .line 2401
    :cond_156
    :goto_156
    if-eqz p2, :cond_15d

    .line 2402
    const-string v1, "resized"

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 2405
    :cond_15d
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_16a

    if-eqz v17, :cond_165

    if-eqz p1, :cond_16a

    .line 2406
    :cond_165
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2408
    :cond_16a
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2409
    return-void
.end method

.method private blacklist handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 7

    .line 5656
    if-eqz p1, :cond_d

    .line 5657
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 5658
    invoke-virtual {p1, p3}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 5660
    :cond_9
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    goto :goto_3a

    .line 5661
    :cond_d
    if-eqz p2, :cond_3a

    if-eqz p3, :cond_3a

    .line 5662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transaction not synced due to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 5669
    const-wide/16 p1, 0x0

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 5671
    :cond_3a
    :goto_3a
    return-void
.end method

.method private greylist-max-o handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9

    .line 11345
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 11346
    if-eqz v0, :cond_8d

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_a

    goto/16 :goto_8d

    .line 11351
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 11352
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 11354
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 11355
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 11356
    invoke-virtual {v0, v2}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 11357
    return-void

    .line 11362
    :cond_1a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    .line 11363
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_25

    if-eqz v4, :cond_25

    .line 11365
    return-void

    .line 11368
    :cond_25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 11369
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    .line 11372
    nop

    .line 11373
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    move v5, v2

    .line 11374
    :goto_31
    if-eqz v4, :cond_4a

    if-nez v5, :cond_4a

    .line 11375
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    if-ne p1, v6, :cond_3d

    .line 11376
    const/4 v5, 0x1

    goto :goto_31

    .line 11378
    :cond_3d
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 11379
    instance-of v6, v4, Landroid/view/View;

    if-eqz v6, :cond_48

    .line 11380
    check-cast v4, Landroid/view/View;

    goto :goto_49

    .line 11382
    :cond_48
    move-object v4, v3

    .line 11384
    :goto_49
    goto :goto_31

    .line 11388
    :cond_4a
    if-nez v5, :cond_4d

    .line 11389
    return-void

    .line 11392
    :cond_4d
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    .line 11393
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    .line 11396
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 11397
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 11398
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 11399
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v5, :cond_7a

    .line 11401
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 11402
    invoke-virtual {v0, v2}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 11406
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 11407
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    .line 11406
    invoke-virtual {v1, p1, v0, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 11408
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_8c

    .line 11411
    :cond_7a
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object p1

    .line 11412
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 11413
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 11414
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 11417
    :cond_8c
    :goto_8c
    return-void

    .line 11348
    :cond_8d
    :goto_8d
    return-void
.end method

.method private greylist-max-o handleWindowFocusChanged()V
    .registers 6

    .line 4851
    monitor-enter p0

    .line 4852
    :try_start_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-nez v0, :cond_7

    .line 4853
    monitor-exit p0

    return-void

    .line 4855
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 4856
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 4857
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_66

    .line 4858
    if-eqz v1, :cond_1e

    .line 4859
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 4860
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getFocusedViewOrNull()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    move v3, v0

    .line 4859
    :goto_1a
    invoke-virtual {v2, v3}, Landroid/view/InsetsController;->onWindowFocusGained(Z)V

    goto :goto_23

    .line 4862
    :cond_1e
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->onWindowFocusLost()V

    .line 4865
    :goto_23
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_5b

    .line 4866
    invoke-direct {p0, v1, v0}, Landroid/view/ViewRootImpl;->dispatchFocusEvent(ZZ)V

    .line 4869
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    .line 4870
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getFocusedViewOrNull()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 4869
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ImeFocusController;->onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V

    .line 4872
    if-eqz v1, :cond_54

    .line 4875
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4877
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4882
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->maybeFireAccessibilityWindowStateChangedEvent()V

    .line 4886
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->fireAccessibilityFocusEventIfHasFocusedNode()V

    goto :goto_5b

    .line 4888
    :cond_54
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v2, :cond_5b

    .line 4889
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    .line 4893
    :cond_5b
    :goto_5b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 4898
    if-eqz v1, :cond_65

    .line 4899
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleContentCaptureFlush()V

    .line 4901
    :cond_65
    return-void

    .line 4857
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method private blacklist handleWindowTouchModeChanged()V
    .registers 2

    .line 4972
    monitor-enter p0

    .line 4973
    :try_start_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 4974
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 4975
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 4976
    return-void

    .line 4974
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private blacklist hasSystemApplicationOverlayAppOp()Z
    .registers 6

    .line 2266
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2268
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2269
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2266
    const-string v3, "android:system_application_overlay"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method private blacklist hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 10430
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 10431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10432
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10433
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10434
    return-void
.end method

.method private blacklist initializeProtoLogInProcess()V
    .registers 2

    .line 13824
    sget-boolean v0, Landroid/view/ViewRootImpl;->sProtoLogInitialized:Z

    if-nez v0, :cond_c

    .line 13825
    sget-object v0, Landroid/view/ViewProtoLogGroups;->ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 13826
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ViewRootImpl;->sProtoLogInitialized:Z

    .line 13828
    :cond_c
    return-void
.end method

.method private greylist-max-o invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .registers 6

    .line 2712
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2715
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 2718
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p1, p1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2719
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int p1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    .line 2721
    if-nez p1, :cond_29

    .line 2722
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2724
    :cond_29
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_36

    if-nez p1, :cond_33

    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz p1, :cond_36

    .line 2725
    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2727
    :cond_36
    return-void
.end method

.method public static greylist-max-r invokeFunctor(JZ)V
    .registers 3

    .line 1951
    return-void
.end method

.method private blacklist isAccessibilityFocusDirty()Z
    .registers 4

    .line 11321
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 11322
    if-eqz v0, :cond_1f

    .line 11323
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 11324
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 11325
    if-nez v2, :cond_13

    .line 11326
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 11328
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 11329
    const/4 v0, 0x1

    return v0

    .line 11332
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isAutofillUiShowing()Z
    .registers 2

    .line 9602
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 9603
    if-nez v0, :cond_8

    .line 9604
    const/4 v0, 0x0

    return v0

    .line 9606
    :cond_8
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v0

    return v0
.end method

.method private blacklist isContentCaptureEnabled()Z
    .registers 4

    .line 5676
    iget v0, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_30

    .line 5687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContentCaptureEnabled(): invalid state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewRootImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    return v1

    .line 5680
    :pswitch_22
    return v1

    .line 5678
    :pswitch_23
    return v2

    .line 5682
    :pswitch_24
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureReallyEnabled()Z

    move-result v0

    .line 5683
    if-eqz v0, :cond_2b

    goto :goto_2c

    .line 5684
    :cond_2b
    const/4 v2, 0x2

    :goto_2c
    iput v2, p0, Landroid/view/ViewRootImpl;->mContentCaptureEnabled:I

    .line 5685
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist isContentCaptureReallyEnabled()Z
    .registers 4

    .line 5698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 5700
    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/view/View$AttachInfo;->getContentCaptureManager(Landroid/content/Context;)Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    .line 5702
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1d

    .line 5704
    :cond_1b
    const/4 v0, 0x1

    return v0

    .line 5702
    :cond_1d
    :goto_1d
    return v1
.end method

.method private greylist-max-o isInTouchMode()Z
    .registers 3

    .line 1437
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_12

    .line 1438
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 1440
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    return v0
.end method

.method private blacklist isInputWindow()Z
    .registers 3

    .line 2098
    iget v0, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    const/16 v1, 0x7dc

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static greylist-max-o isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 1

    .line 9270
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_c

    .line 9285
    const/4 p0, 0x0

    return p0

    .line 9283
    :sswitch_9
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_c
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7a -> :sswitch_9
        0x7b -> :sswitch_9
    .end sparse-switch
.end method

.method private blacklist isSwipeToScreenshotGestureActive()Z
    .registers 4

    .line 13791
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isSwipeToScreenshotGestureActive()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 13792
    :catch_9
    move-exception v0

    .line 13793
    const-string v1, "SwipeToScreenshot"

    const-string v2, "isSwipeToScreenshotGestureActive exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13794
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .registers 4

    .line 10757
    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 10758
    check-cast p0, Landroid/view/KeyEvent;

    .line 10759
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 10761
    :cond_10
    check-cast p0, Landroid/view/MotionEvent;

    .line 10762
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    .line 10763
    if-eq p0, v2, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    return v1
.end method

.method private static greylist-max-o isTypingKey(Landroid/view/KeyEvent;)Z
    .registers 1

    .line 9294
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 6871
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6872
    return v0

    .line 6875
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 6876
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method static synthetic blacklist lambda$addFrameCommitCallbackIfNeeded$7(Ljava/util/ArrayList;)V
    .registers 3

    .line 5507
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 5508
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5510
    :cond_13
    return-void
.end method

.method private synthetic blacklist lambda$addFrameCommitCallbackIfNeeded$8(Ljava/util/ArrayList;Z)V
    .registers 4

    .line 5506
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 5511
    return-void
.end method

.method private synthetic blacklist lambda$createSyncIfNeeded$4(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 3

    .line 4675
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->reportDrawFinished(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method private synthetic blacklist lambda$createSyncIfNeeded$5(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 4663
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroupState:I

    .line 4668
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_1c

    .line 4673
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4674
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 4675
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;-><init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {p2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4676
    goto :goto_1f

    .line 4677
    :cond_1c
    invoke-direct {p0, p2, p1}, Landroid/view/ViewRootImpl;->reportDrawFinished(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4679
    :goto_1f
    return-void
.end method

.method private synthetic blacklist lambda$getOrCreateSurfaceSyncGroup$17()V
    .registers 3

    .line 13177
    iget v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    if-lez v0, :cond_a

    .line 13178
    iget v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    .line 13180
    :cond_a
    iget v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    if-nez v0, :cond_1c

    .line 13181
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13182
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_1c

    .line 13183
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 13186
    :cond_1c
    return-void
.end method

.method private synthetic blacklist lambda$getOrCreateSurfaceSyncGroup$18()V
    .registers 4

    .line 13174
    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;-><init>(Landroid/view/ViewRootImpl;)V

    .line 13188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_11

    .line 13189
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 13191
    :cond_11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 13193
    :goto_16
    return-void
.end method

.method private synthetic blacklist lambda$getOrCreateSurfaceSyncGroup$19()V
    .registers 3

    .line 13199
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 13200
    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    if-lez v0, :cond_1a

    .line 13201
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13202
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->resumeAfterSyncTimeout()V

    .line 13204
    :cond_1a
    return-void
.end method

.method private synthetic blacklist lambda$handleScrollCaptureRequest$11(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 3

    .line 11706
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureSearchResponse(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;)Ljava/util/List;
    .registers 1

    .line 1034
    invoke-virtual {p0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/View;)Ljava/util/List;
    .registers 1

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->collectPreferKeepClearRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$new$10(Ljava/lang/Runnable;)V
    .registers 3

    .line 7313
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7314
    return-void
.end method

.method static synthetic blacklist lambda$new$2(Landroid/view/View;)Ljava/util/List;
    .registers 1

    .line 1038
    invoke-virtual {p0}, Landroid/view/View;->collectUnrestrictedPreferKeepClearRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$performDraw$9(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 5628
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "SurfaceHolder"

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/view/ViewRootImpl;->handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 5630
    return-void
.end method

.method private synthetic blacklist lambda$registerCompatOnBackInvokedCallback$14()V
    .registers 2

    .line 12972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->injectBackKeyEvents(Z)Z

    .line 12973
    return-void
.end method

.method private synthetic blacklist lambda$registerListeners$3(I)V
    .registers 2

    .line 1842
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateForceDarkMode()V

    return-void
.end method

.method static synthetic blacklist lambda$registerOnJankDataListener$12(Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V
    .registers 2

    .line 12232
    invoke-interface {p0, p1}, Landroid/view/SurfaceControl$OnJankDataListener;->onJankDataAvailable(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerOnJankDataListener$13(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V
    .registers 4

    .line 12232
    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$removeSensitiveContentAppProtection$6()V
    .registers 2

    .line 4791
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-nez v0, :cond_a

    .line 4792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->applySensitiveContentAppProtection(Z)V

    .line 4794
    :cond_a
    return-void
.end method

.method static synthetic blacklist lambda$safeguardOverlappingSyncs$15(Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    .line 13141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/SurfaceSyncGroup;->toggleTimeout(Z)V

    .line 13142
    return-void
.end method

.method private synthetic blacklist lambda$safeguardOverlappingSyncs$16(Landroid/window/SurfaceSyncGroup;)V
    .registers 4

    .line 13149
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 13150
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13151
    :try_start_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    if-ne v1, p1, :cond_d

    .line 13152
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    .line 13154
    :cond_d
    monitor-exit v0

    .line 13155
    return-void

    .line 13154
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1
.end method

.method static synthetic blacklist lambda$updateSyncInProgressCount$20()V
    .registers 3

    .line 13248
    sget-object v0, Landroid/view/ViewRootImpl;->sSyncProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13249
    :try_start_3
    sget v1, Landroid/view/ViewRootImpl;->sNumSyncsInProgress:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/view/ViewRootImpl;->sNumSyncsInProgress:I

    if-nez v1, :cond_e

    .line 13250
    invoke-static {v2}, Landroid/graphics/HardwareRenderer;->setRtAnimationsEnabled(Z)V

    .line 13252
    :cond_e
    monitor-exit v0

    .line 13253
    return-void

    .line 13252
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private greylist-max-o leaveTouchMode()Z
    .registers 4

    .line 7415
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 7416
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7417
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 7418
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_18

    .line 7420
    return v1

    .line 7421
    :cond_18
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_23

    .line 7425
    return v1

    .line 7429
    :cond_23
    sget-object v0, Landroid/window/DesktopExperienceFlags;->DEFER_RESUME_FOCUS_IN_NON_FOCUSED_WINDOW:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7431
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_3f

    .line 7432
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 7437
    :cond_38
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 7440
    :cond_3f
    return v1
.end method

.method private blacklist logAndTrace(Ljava/lang/String;)V
    .registers 6

    .line 13275
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 13276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 13281
    :cond_24
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0xea64

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 13282
    return-void
.end method

.method private blacklist logColorMode(IZ)V
    .registers 10

    .line 13799
    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    .line 13800
    const-string p1, "ViewRootImpl"

    const-string p2, "Skipping stats log for color mode"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13801
    return-void

    .line 13804
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13806
    const/16 v4, 0x3b2

    if-eqz p2, :cond_29

    .line 13807
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    iget-wide v5, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    sub-long/2addr v0, v5

    iget v5, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    invoke-static {v4, p2, v0, v1, v5}, Lcom/android/os/coregraphics/HwuiStatsLog;->write(IIJI)V

    .line 13809
    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    goto :goto_40

    .line 13811
    :cond_29
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    const-wide/16 v5, 0x0

    cmp-long p2, v2, v5

    if-lez p2, :cond_3e

    .line 13812
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    sub-long v2, v0, v2

    iget v5, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    invoke-static {v4, p2, v2, v3, v5}, Lcom/android/os/coregraphics/HwuiStatsLog;->write(IIJI)V

    .line 13815
    :cond_3e
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mColorModeLastSetMillis:J

    .line 13818
    :goto_40
    iput p1, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    .line 13819
    return-void
.end method

.method private blacklist logHandledSystemKey(Landroid/view/KeyEvent;Z)V
    .registers 5

    .line 10744
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 10745
    const/16 v1, 0x108

    if-eq v0, v1, :cond_9

    .line 10746
    return-void

    .line 10748
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_21

    if-eqz p2, :cond_21

    .line 10750
    nop

    .line 10752
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    .line 10750
    const-string p2, "input.value_app_handled_stem_primary_key_gestures_count"

    invoke-static {p2, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 10754
    :cond_21
    return-void
.end method

.method private blacklist maybeFireAccessibilityWindowStateChangedEvent()V
    .registers 3

    .line 4980
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 4981
    :goto_f
    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 4982
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4984
    :cond_1c
    return-void
.end method

.method private greylist-max-o maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .registers 6

    .line 4834
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_12

    goto :goto_14

    :cond_12
    move v0, v2

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 4836
    :goto_15
    if-eqz v0, :cond_23

    .line 4837
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 4838
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 4840
    :cond_23
    if-nez v0, :cond_2b

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz p1, :cond_3e

    .line 4842
    :cond_2b
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz p1, :cond_3a

    .line 4843
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p1, v0}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 4845
    :cond_3a
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 4847
    :cond_3e
    return-void
.end method

.method private blacklist maybeSendAppStartTimes()V
    .registers 3

    .line 4712
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAppStartTimestampsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4714
    return-void

    .line 4718
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$6;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 4735
    return-void
.end method

.method private greylist-max-o maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .registers 4

    .line 8529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 8530
    return-void

    .line 8532
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8533
    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    .line 8536
    return-void

    .line 8538
    :cond_18
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 8539
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 8540
    return-void

    .line 8542
    :cond_29
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_35

    .line 8543
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v0, "maybeUpdateTooltip called after view was removed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8544
    return-void

    .line 8546
    :cond_35
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8547
    return-void
.end method

.method private blacklist measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;IIZ)Z
    .registers 13

    .line 3381
    nop

    .line 3387
    nop

    .line 3388
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5f

    .line 3393
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3394
    const v1, 0x1050117

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p3, v1, v4, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3395
    nop

    .line 3396
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget p3, p3, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne p3, v1, :cond_25

    .line 3397
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p3, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    goto :goto_26

    .line 3396
    :cond_25
    move p3, v3

    .line 3401
    :goto_26
    if-eqz p3, :cond_5f

    if-le p4, p3, :cond_5f

    .line 3402
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p3, v0, v1}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v0

    .line 3403
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p5, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v1

    .line 3405
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 3410
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v4, 0x1000000

    and-int/2addr v0, v4

    if-nez v0, :cond_48

    .line 3411
    move p3, v2

    goto :goto_60

    .line 3414
    :cond_48
    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    .line 3417
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p3, v0, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result p3

    .line 3418
    invoke-direct {p0, p3, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 3421
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p3

    and-int/2addr p3, v4

    if-nez p3, :cond_5f

    .line 3423
    move p3, v2

    goto :goto_60

    .line 3429
    :cond_5f
    move p3, v3

    :goto_60
    if-nez p3, :cond_92

    .line 3430
    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p4, p3, v0}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result p3

    .line 3432
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p5, p4, p2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result p2

    .line 3434
    if-eqz p6, :cond_7e

    invoke-direct {p0, p3, p2}, Landroid/view/ViewRootImpl;->setMeasuredRootSizeFromSpec(II)Z

    move-result p4

    if-nez p4, :cond_7b

    goto :goto_7e

    .line 3441
    :cond_7b
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mViewMeasureDeferred:Z

    goto :goto_81

    .line 3436
    :cond_7e
    :goto_7e
    invoke-direct {p0, p3, p2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 3443
    :goto_81
    iget p2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    if-ne p2, p3, :cond_91

    iget p2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eq p2, p1, :cond_92

    .line 3444
    :cond_91
    goto :goto_93

    .line 3454
    :cond_92
    move v2, v3

    :goto_93
    return v2
.end method

.method private blacklist notifyContentCaptureEvents()V
    .registers 4

    .line 4799
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4803
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    .line 4804
    return-void

    .line 4807
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 4808
    if-eqz v0, :cond_23

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    if-eqz v2, :cond_23

    .line 4809
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 4810
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyContentCaptureEvents(Landroid/util/SparseArray;)V

    .line 4812
    :cond_23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    .line 4813
    return-void
.end method

.method private blacklist notifyDrawStarted(Z)V
    .registers 4

    .line 2814
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2815
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1, p1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->vriDrawStarted(Z)V

    .line 2814
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2817
    :cond_17
    return-void
.end method

.method private blacklist notifyHolderSurfaceDestroyed()V
    .registers 6

    .line 4816
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 4817
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 4818
    if-eqz v0, :cond_1b

    .line 4819
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 4820
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 4819
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4823
    :cond_1b
    return-void
.end method

.method private blacklist notifySurfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2791
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2792
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1, p1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V

    .line 2791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2794
    :cond_17
    return-void
.end method

.method private blacklist notifySurfaceDestroyed()V
    .registers 3

    .line 2808
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2809
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceDestroyed()V

    .line 2808
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2811
    :cond_17
    return-void
.end method

.method private blacklist notifySurfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2802
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2803
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-interface {v1, p1}, Landroid/view/ViewRootImpl$SurfaceChangedCallback;->surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V

    .line 2802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2805
    :cond_17
    return-void
.end method

.method private greylist-max-o obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .registers 7

    .line 10554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10555
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 10556
    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 10557
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10558
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_17

    .line 10560
    :cond_12
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl-IA;)V

    .line 10563
    :goto_17
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10564
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 10565
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 10566
    return-object v0
.end method

.method private blacklist onActiveControlsChanged(Landroid/view/InsetsSourceControl$Array;)V
    .registers 4

    .line 2449
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_8

    .line 2451
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 2452
    return-void

    .line 2455
    :cond_8
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastReportedActiveControlsSeq:I

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->getSeq()I

    move-result v1

    invoke-static {v0, v1}, Landroid/util/SequenceUtils;->isIncomingSeqStale(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2457
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 2458
    return-void

    .line 2461
    :cond_18
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->getSeq()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mLastReportedActiveControlsSeq:I

    .line 2463
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->get()[Landroid/view/InsetsSourceControl;

    move-result-object p1

    .line 2464
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2b

    .line 2465
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V

    .line 2467
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    .line 2468
    return-void
.end method

.method private blacklist onClientWindowFramesChanged(Landroid/window/ClientWindowFrames;)V
    .registers 4

    .line 2425
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    iget v0, v0, Landroid/window/ClientWindowFrames;->seq:I

    iget v1, p1, Landroid/window/ClientWindowFrames;->seq:I

    invoke-static {v0, v1}, Landroid/util/SequenceUtils;->isIncomingSeqStale(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2427
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, v0}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    goto :goto_17

    .line 2430
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {v0, p1}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    .line 2432
    :goto_17
    return-void
.end method

.method private blacklist onInsetsStateChanged(Landroid/view/InsetsState;)V
    .registers 4

    .line 2435
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastReportedInsetsStateSeq:I

    invoke-virtual {p1}, Landroid/view/InsetsState;->getSeq()I

    move-result v1

    invoke-static {v0, v1}, Landroid/util/SequenceUtils;->isIncomingSeqStale(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2437
    return-void

    .line 2440
    :cond_d
    invoke-virtual {p1}, Landroid/view/InsetsState;->getSeq()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mLastReportedInsetsStateSeq:I

    .line 2442
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_1c

    .line 2443
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V

    .line 2445
    :cond_1c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 2446
    return-void
.end method

.method private blacklist performConfigurationChange(Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V
    .registers 10

    .line 6737
    if-eqz p1, :cond_d1

    .line 6741
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6742
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 6743
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6744
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 6745
    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    .line 6750
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mUpdateSurfaceNeeded:Z

    .line 6751
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_23

    .line 6752
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 6756
    :cond_23
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6757
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6763
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 6764
    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 6765
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6766
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6767
    iget v1, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 6768
    iget v1, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object v1, v0

    move-object v0, v4

    .line 6771
    :cond_53
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 6772
    :try_start_56
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_5d
    if-ltz v4, :cond_6d

    .line 6773
    sget-object v2, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v2, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6772
    add-int/lit8 v4, v4, -0x1

    goto :goto_5d

    .line 6775
    :cond_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_ce

    .line 6777
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v2, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6778
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v0, :cond_7e

    if-eqz p4, :cond_7e

    .line 6779
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, p4}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 6782
    :cond_7e
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 6783
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz p2, :cond_8a

    .line 6788
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {p2, v1, p3, p4}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V

    goto :goto_b5

    .line 6791
    :cond_8a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enableWindowContextResourcesUpdateOnConfigChange()Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 6793
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object p2

    .line 6794
    instance-of p4, p2, Landroid/window/WindowTokenClient;

    if-eqz p4, :cond_b2

    .line 6795
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object p4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 6797
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6798
    const/4 v1, -0x1

    if-ne p3, v1, :cond_ae

    .line 6799
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_af

    .line 6800
    :cond_ae
    move v1, p3

    .line 6795
    :goto_af
    invoke-virtual {p4, p2, v0, v1}, Landroid/window/WindowTokenClientController;->onWindowConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 6804
    :cond_b2
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 6807
    :goto_b5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->relativeInsets()Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 6809
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6810
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 6811
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p2, p1}, Landroid/view/InsetsController;->onBoundsChanged(Landroid/graphics/Rect;)V

    .line 6814
    :cond_ca
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 6815
    return-void

    .line 6775
    :catchall_ce
    move-exception p1

    :try_start_cf
    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw p1

    .line 6738
    :cond_d1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No merged config provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist performContentCaptureInitialReport()V
    .registers 8

    .line 5708
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    .line 5709
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5713
    nop

    .line 5715
    const-wide/16 v2, 0x8

    :try_start_8
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isContentCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 5734
    nop

    .line 5715
    return-void

    .line 5717
    :cond_10
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    .line 5718
    if-eqz v0, :cond_34

    .line 5719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchContentCapture() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5720
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5719
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5724
    :cond_34
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v4, :cond_53

    .line 5725
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 5726
    invoke-virtual {v4}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v4

    .line 5727
    invoke-virtual {v4}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v5

    .line 5728
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 5727
    invoke-virtual {v4, v5, v6}, Landroid/view/contentcapture/ContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    .line 5732
    :cond_53
    invoke-virtual {v1}, Landroid/view/View;->dispatchInitialProvideContentCaptureStructure()V
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_5c

    .line 5734
    if-eqz v0, :cond_5b

    .line 5735
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5738
    :cond_5b
    return-void

    .line 5734
    :catchall_5c
    move-exception v1

    if-eqz v0, :cond_62

    .line 5735
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5737
    :cond_62
    throw v1
.end method

.method private blacklist performDraw(Landroid/window/SurfaceSyncGroup;)Z
    .registers 9

    .line 5549
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    .line 5550
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v1, :cond_1f

    .line 5551
    const-string p1, "screen_off"

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    .line 5552
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mLastDrawScreenOff:Z

    if-nez p1, :cond_1c

    .line 5553
    const-string p1, "Not drawing due to screen off"

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 5555
    :cond_1c
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mLastDrawScreenOff:Z

    .line 5556
    return v2

    .line 5557
    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_28

    .line 5558
    const-string p1, "no_root_view"

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    .line 5559
    return v2

    .line 5562
    :cond_28
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastDrawScreenOff:Z

    if-eqz v1, :cond_33

    .line 5563
    const-string v1, "Resumed drawing after screen turned on"

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 5564
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastDrawScreenOff:Z

    .line 5567
    :cond_33
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-nez v1, :cond_3c

    if-eqz p1, :cond_3a

    goto :goto_3c

    :cond_3a
    move v1, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v1, v3

    .line 5568
    :goto_3d
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 5570
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 5571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5573
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->addFrameCommitCallbackIfNeeded()V

    .line 5578
    :try_start_5e
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    invoke-direct {p0, v1, p1, v4}, Landroid/view/ViewRootImpl;->draw(ZLandroid/window/SurfaceSyncGroup;Z)Z

    move-result v1

    .line 5579
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_73

    if-nez v1, :cond_73

    .line 5580
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4, v0}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_121

    .line 5583
    :cond_73
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 5584
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 5585
    nop

    .line 5589
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v4, :cond_a1

    .line 5590
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 5591
    move v5, v2

    :goto_88
    if-ge v5, v4, :cond_9a

    .line 5592
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->endAllAnimators()V

    .line 5591
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 5594
    :cond_9a
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5598
    :cond_a1
    if-nez v1, :cond_b4

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v4, :cond_b4

    .line 5599
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5600
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 5601
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    goto :goto_b5

    .line 5603
    :cond_b4
    move-object v4, v0

    .line 5606
    :goto_b5
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v5, :cond_10f

    .line 5608
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_cd

    .line 5610
    :try_start_bd
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c2} :catch_c3

    .line 5613
    goto :goto_cb

    .line 5611
    :catch_c3
    move-exception v5

    .line 5612
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v6, "Window redraw count down interrupted!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    :goto_cb
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 5617
    :cond_cd
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_dc

    .line 5618
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v5}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 5625
    :cond_dc
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_100

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 5626
    nop

    .line 5627
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v4}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda11;-><init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {v0, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 5632
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 5634
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 5635
    move v1, v3

    goto :goto_10f

    :cond_100
    if-nez v1, :cond_10f

    .line 5636
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_10f

    .line 5637
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->fence()V

    .line 5642
    :cond_10f
    :goto_10f
    if-nez v1, :cond_119

    .line 5643
    if-eqz v4, :cond_114

    move v2, v3

    :cond_114
    const-string v0, "no async report"

    invoke-direct {p0, p1, v2, v4, v0}, Landroid/view/ViewRootImpl;->handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 5647
    :cond_119
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mPerformContentCapture:Z

    if-eqz p1, :cond_120

    .line 5648
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performContentCaptureInitialReport()V

    .line 5650
    :cond_120
    return v3

    .line 5583
    :catchall_121
    move-exception p1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 5584
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 5585
    throw p1
.end method

.method private greylist-max-o performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .registers 16

    .line 5150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 5151
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 5153
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5154
    if-nez v2, :cond_a

    .line 5155
    return-void

    .line 5162
    :cond_a
    const-string v1, "layout"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5164
    :try_start_11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v10, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 5166
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 5167
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5168
    if-lez v1, :cond_9b

    .line 5173
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v10}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 5175
    if-eqz v1, :cond_99

    .line 5179
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 5182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5183
    move v4, v10

    :goto_36
    if-ge v4, v3, :cond_62

    .line 5184
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 5185
    const-string v6, "View"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestLayout() improperly called by "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " during layout: running second layout pass"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 5183
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 5189
    :cond_62
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;IIZ)Z

    .line 5191
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 5192
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v2, v10, v10, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 5194
    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 5198
    iget-object p1, v1, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 5199
    if-eqz p1, :cond_9c

    .line 5200
    nop

    .line 5202
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object p2

    new-instance p3, Landroid/view/ViewRootImpl$7;

    invoke-direct {p3, p0, p1}, Landroid/view/ViewRootImpl$7;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_98
    .catchall {:try_start_11 .. :try_end_98} :catchall_a3

    goto :goto_9c

    .line 5175
    :cond_99
    move-object v1, p0

    goto :goto_9c

    .line 5168
    :cond_9b
    move-object v1, p0

    .line 5219
    :cond_9c
    :goto_9c
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 5220
    nop

    .line 5221
    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 5222
    return-void

    .line 5219
    :catchall_a3
    move-exception v0

    move-object p1, v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 5220
    throw p1
.end method

.method private greylist-max-o performMeasure(II)V
    .registers 6

    .line 5083
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 5084
    return-void

    .line 5086
    :cond_5
    const-string v0, "measure"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5088
    :try_start_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_29

    .line 5090
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5091
    nop

    .line 5092
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroid/view/ViewRootImpl;->mMeasuredWidth:I

    .line 5093
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/view/ViewRootImpl;->mMeasuredHeight:I

    .line 5094
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mViewMeasureDeferred:Z

    .line 5095
    return-void

    .line 5090
    :catchall_29
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5091
    throw p1
.end method

.method private greylist-max-o performTraversals()V
    .registers 44

    .line 3575
    move-object/from16 v1, p0

    const-string v8, "relayout"

    const/4 v9, 0x0

    iput-object v9, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    .line 3578
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3585
    if-eqz v2, :cond_d93

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_11

    goto/16 :goto_d93

    .line 3590
    :cond_11
    iget v0, v1, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    const-wide/16 v10, 0x8

    if-lez v0, :cond_35

    .line 3591
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3592
    iget v0, v1, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    .line 3594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 3593
    const-string v2, "performTraversals#mNumPausedForSync=%d"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3592
    invoke-static {v10, v11, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 3599
    :cond_30
    const-string v0, "paused_for_sync"

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    .line 3600
    return-void

    .line 3603
    :cond_35
    const/4 v12, 0x1

    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 3604
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 3605
    nop

    .line 3606
    nop

    .line 3607
    nop

    .line 3609
    nop

    .line 3610
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3615
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v13

    .line 3616
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHostVisibilityReason()Ljava/lang/String;

    move-result-object v14

    .line 3617
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v15, 0x0

    if-nez v0, :cond_5c

    iget v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-ne v0, v13, :cond_59

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v0, :cond_59

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-eqz v0, :cond_5c

    :cond_59
    move/from16 v16, v12

    goto :goto_5e

    :cond_5c
    move/from16 v16, v15

    .line 3622
    :goto_5e
    iput-boolean v15, v1, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 3623
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_74

    iget v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v0, :cond_6a

    move v0, v12

    goto :goto_6b

    :cond_6a
    move v0, v15

    :goto_6b
    if-nez v13, :cond_6f

    move v4, v12

    goto :goto_70

    :cond_6f
    move v4, v15

    :goto_70
    if-eq v0, v4, :cond_74

    move v0, v12

    goto :goto_75

    :cond_74
    move v0, v15

    .line 3625
    :goto_75
    invoke-static {v3}, Landroid/view/ViewRootImpl;->shouldOptimizeMeasure(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    .line 3627
    nop

    .line 3628
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 3629
    iget-boolean v5, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v6, 0x2

    const/4 v9, -0x2

    if-eqz v5, :cond_104

    .line 3630
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3631
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3633
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 3634
    invoke-static {v3}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_a1

    .line 3636
    move-wide/from16 v17, v10

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 3637
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3638
    iget v11, v10, Landroid/graphics/Point;->x:I

    .line 3639
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 3640
    goto :goto_c2

    :cond_a1
    move-wide/from16 v17, v10

    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v10, v9, :cond_b5

    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v10, v9, :cond_ac

    goto :goto_b5

    .line 3651
    :cond_ac
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 3652
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    goto :goto_c2

    .line 3644
    :cond_b5
    :goto_b5
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;

    move-result-object v10

    .line 3645
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 3646
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3647
    nop

    .line 3658
    :goto_c2
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v9, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 3659
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v13, v9, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 3660
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v9, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3661
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v9, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3662
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v9, v9, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v9, v1, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 3664
    iget v9, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    if-ne v9, v6, :cond_e4

    .line 3665
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3667
    :cond_e4
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v5, v15}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3668
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v12}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3669
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 3670
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v5}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v5

    if-nez v5, :cond_102

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mWindowlessBackKeyCallback:Ljava/util/function/Predicate;

    if-nez v5, :cond_102

    .line 3680
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->registerCompatOnBackInvokedCallback()V

    .line 3682
    :cond_102
    move v5, v15

    goto :goto_11e

    .line 3683
    :cond_104
    move-wide/from16 v17, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 3684
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 3685
    iget v5, v1, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v11, v5, :cond_119

    iget v5, v1, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v10, v5, :cond_117

    goto :goto_119

    :cond_117
    move v5, v15

    goto :goto_11e

    .line 3687
    :cond_119
    :goto_119
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3688
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3689
    move v5, v12

    .line 3693
    :goto_11e
    const/16 v9, 0xbb8

    if-eqz v16, :cond_151

    .line 3694
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v13, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 3695
    invoke-virtual {v2, v13}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 3696
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6, v13}, Landroid/view/ViewTreeObserver;->dispatchOnWindowVisibilityChange(I)V

    .line 3697
    if-eqz v0, :cond_13a

    .line 3698
    if-nez v13, :cond_136

    move v0, v12

    goto :goto_137

    :cond_136
    move v0, v15

    :goto_137
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 3700
    :cond_13a
    if-nez v13, :cond_140

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v0, :cond_146

    .line 3701
    :cond_140
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 3702
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 3705
    :cond_146
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_151

    if-nez v13, :cond_151

    .line 3708
    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl;->boostFrameRate(I)V

    .line 3713
    :cond_151
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v0, :cond_15a

    .line 3714
    invoke-virtual {v2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3718
    :cond_15a
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v0

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    .line 3720
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_175

    .line 3723
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    xor-int/2addr v6, v12

    iput-boolean v6, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3724
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 3727
    :cond_175
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v0, :cond_184

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_181

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_184

    :cond_181
    move/from16 v21, v12

    goto :goto_186

    :cond_184
    move/from16 v21, v15

    .line 3728
    :goto_186
    if-eqz v21, :cond_1dc

    .line 3729
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_1be

    .line 3730
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x2

    if-eq v0, v6, :cond_195

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v6, :cond_1be

    .line 3732
    :cond_195
    nop

    .line 3734
    invoke-static {v3}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 3736
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3737
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3738
    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 3739
    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 3740
    move v6, v10

    move v5, v11

    move v0, v12

    goto :goto_1c1

    .line 3741
    :cond_1ae
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->getWindowBoundsInsetSystemBars()Landroid/graphics/Rect;

    move-result-object v0

    .line 3742
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 3743
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    move v6, v10

    move v5, v11

    move v0, v12

    goto :goto_1c1

    .line 3749
    :cond_1be
    move v0, v5

    move v6, v10

    move v5, v11

    :goto_1c1
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v20, v10

    move-object v10, v4

    move-object/from16 v4, v20

    const/16 v20, 0x2

    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;IIZ)Z

    move-result v4

    or-int/2addr v0, v4

    move-object v4, v10

    move v10, v0

    move/from16 v0, v20

    goto :goto_1e0

    .line 3728
    :cond_1dc
    const/4 v0, 0x2

    move v6, v10

    move v10, v5

    move v5, v11

    .line 3753
    :goto_1e0
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v11

    if-eqz v11, :cond_1e8

    .line 3754
    move-object v11, v3

    goto :goto_1e9

    .line 3753
    :cond_1e8
    const/4 v11, 0x0

    .line 3756
    :goto_1e9
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v9, v9, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v9, :cond_1f4

    .line 3757
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v9, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 3758
    move-object v11, v3

    .line 3761
    :cond_1f4
    iget-boolean v9, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v9, :cond_1fe

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v9, v9, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v9, :cond_23b

    .line 3762
    :cond_1fe
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v9, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 3763
    iget v9, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v9, v9, 0xf0

    .line 3766
    if-nez v9, :cond_23b

    .line 3767
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3768
    move v12, v15

    :goto_211
    if-ge v12, v0, :cond_229

    .line 3769
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v15, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->isShown()Z

    move-result v15

    if-eqz v15, :cond_225

    .line 3770
    const/16 v9, 0x10

    .line 3768
    :cond_225
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x0

    goto :goto_211

    .line 3773
    :cond_229
    if-nez v9, :cond_22d

    .line 3774
    const/16 v9, 0x20

    .line 3776
    :cond_22d
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    if-eq v0, v9, :cond_23b

    .line 3777
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, -0xf1

    or-int/2addr v0, v9

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3778
    move-object v11, v3

    .line 3783
    :cond_23b
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v0, :cond_25a

    .line 3784
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 3785
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v0, :cond_258

    .line 3789
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3790
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3789
    move-object v9, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;IIZ)Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_25b

    .line 3785
    :cond_258
    move-object v9, v4

    goto :goto_25b

    .line 3783
    :cond_25a
    move-object v9, v4

    .line 3795
    :goto_25b
    if-eqz v21, :cond_260

    .line 3799
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3802
    :cond_260
    if-eqz v21, :cond_298

    if-eqz v10, :cond_298

    iget v0, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v1, Landroid/view/ViewRootImpl;->mMeasuredWidth:I

    if-ne v0, v4, :cond_296

    iget v0, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget v4, v1, Landroid/view/ViewRootImpl;->mMeasuredHeight:I

    if-ne v0, v4, :cond_296

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_283

    .line 3805
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, v5, :cond_283

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v4, v1, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v4, :cond_296

    :cond_283
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_298

    .line 3807
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v6, :cond_298

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, v1, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v4, :cond_298

    :cond_296
    const/4 v0, 0x1

    goto :goto_299

    :cond_298
    const/4 v0, 0x0

    .line 3808
    :goto_299
    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v4, :cond_2a3

    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    if-eqz v4, :cond_2a3

    const/4 v4, 0x1

    goto :goto_2a4

    :cond_2a3
    const/4 v4, 0x0

    :goto_2a4
    or-int/2addr v0, v4

    .line 3813
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 3814
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v4

    if-nez v4, :cond_2b8

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v4, :cond_2b6

    goto :goto_2b8

    :cond_2b6
    const/4 v4, 0x0

    goto :goto_2b9

    :cond_2b8
    :goto_2b8
    const/4 v4, 0x1

    .line 3817
    :goto_2b9
    nop

    .line 3818
    nop

    .line 3819
    nop

    .line 3821
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    .line 3823
    if-nez v13, :cond_2c6

    const/4 v6, 0x1

    goto :goto_2c7

    :cond_2c6
    const/4 v6, 0x0

    .line 3824
    :goto_2c7
    nop

    .line 3825
    nop

    .line 3826
    nop

    .line 3828
    nop

    .line 3830
    iget-boolean v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 3831
    if-eqz v7, :cond_2d3

    .line 3832
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 3833
    move-object v11, v3

    .line 3836
    :cond_2d3
    if-eqz v11, :cond_30d

    .line 3837
    iget v10, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x200

    if-eqz v10, :cond_2e6

    iget v10, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3838
    invoke-static {v10}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v10

    if-nez v10, :cond_2e6

    .line 3839
    const/4 v10, -0x3

    iput v10, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3841
    :cond_2e6
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 3842
    invoke-virtual {v10}, Landroid/view/InsetsController;->getAppearanceControlled()I

    move-result v10

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 3843
    invoke-virtual {v12}, Landroid/view/InsetsController;->isBehaviorControlled()Z

    move-result v12

    .line 3841
    invoke-static {v11, v10, v12}, Landroid/view/ViewRootImpl;->adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;IZ)V

    .line 3844
    invoke-virtual {v1, v11}, Landroid/view/ViewRootImpl;->controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    .line 3845
    iget v10, v1, Landroid/view/ViewRootImpl;->mDispatchedSystemBarAppearance:I

    iget-object v12, v11, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v12, v12, Landroid/view/InsetsFlags;->appearance:I

    if-eq v10, v12, :cond_30d

    .line 3846
    iget-object v10, v11, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v10, Landroid/view/InsetsFlags;->appearance:I

    iput v10, v1, Landroid/view/ViewRootImpl;->mDispatchedSystemBarAppearance:I

    .line 3847
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v12, v1, Landroid/view/ViewRootImpl;->mDispatchedSystemBarAppearance:I

    invoke-virtual {v10, v12}, Landroid/view/View;->onSystemBarAppearanceChanged(I)V

    .line 3851
    :cond_30d
    iget-boolean v10, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v10, :cond_338

    if-nez v0, :cond_338

    if-nez v16, :cond_338

    if-nez v11, :cond_338

    iget-boolean v10, v1, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-eqz v10, :cond_31c

    goto :goto_338

    .line 4249
    :cond_31c
    invoke-direct {v1, v9}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    move/from16 v29, v4

    move/from16 v25, v6

    move/from16 v26, v7

    move v10, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    goto/16 :goto_8de

    .line 3853
    :cond_338
    :goto_338
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_378

    .line 3854
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const/16 v19, 0x0

    iget-boolean v15, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 3857
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    if-eqz v11, :cond_354

    const/4 v0, 0x1

    goto :goto_355

    :cond_354
    const/4 v0, 0x0

    .line 3858
    :goto_355
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    iget v0, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v25, v10

    filled-new-array/range {v25 .. v31}, [Ljava/lang/Object;

    move-result-object v0

    .line 3855
    const-string v10, "%s-relayoutWindow#first=%b/resize=%b/vis=%b/params=%b/force=%b/seqId=%d"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3854
    move v10, v13

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_37b

    .line 3853
    :cond_378
    move v10, v13

    const/16 v19, 0x0

    .line 3861
    :goto_37b
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 3868
    if-eqz v4, :cond_388

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-nez v0, :cond_388

    const/4 v12, 0x1

    goto :goto_389

    :cond_388
    const/4 v12, 0x0

    .line 3873
    :goto_389
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_397

    .line 3874
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3875
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 3878
    :cond_397
    nop

    .line 3879
    nop

    .line 3880
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    .line 3888
    :try_start_39f
    iget-boolean v13, v1, Landroid/view/ViewRootImpl;->mFirst:Z
    :try_end_3a1
    .catch Landroid/os/RemoteException; {:try_start_39f .. :try_end_3a1} :catch_6d1
    .catchall {:try_start_39f .. :try_end_3a1} :catchall_6c4

    if-nez v13, :cond_3ab

    if-eqz v16, :cond_3a6

    goto :goto_3ab

    :cond_3a6
    move/from16 v25, v6

    move/from16 v26, v7

    goto :goto_3b9

    .line 3889
    :cond_3ab
    :goto_3ab
    :try_start_3ab
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;
    :try_end_3ad
    .catch Landroid/os/RemoteException; {:try_start_3ab .. :try_end_3ad} :catch_6b4
    .catchall {:try_start_3ab .. :try_end_3ad} :catchall_6c4

    move/from16 v25, v6

    move/from16 v26, v7

    :try_start_3b1
    iget-wide v6, v13, Landroid/view/ViewFrameInfo;->flags:J

    const-wide/16 v27, 0x1

    or-long v6, v6, v27

    iput-wide v6, v13, Landroid/view/ViewFrameInfo;->flags:J

    .line 3891
    :goto_3b9
    invoke-direct {v1, v11, v10, v12}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v6
    :try_end_3bd
    .catch Landroid/os/RemoteException; {:try_start_3b1 .. :try_end_3bd} :catch_6b0
    .catchall {:try_start_3b1 .. :try_end_3bd} :catchall_6c4

    .line 3892
    and-int/lit8 v7, v6, 0x8

    const/16 v11, 0x8

    if-ne v7, v11, :cond_3c5

    const/4 v7, 0x1

    goto :goto_3c6

    :cond_3c5
    const/4 v7, 0x0

    .line 3894
    :goto_3c6
    nop

    .line 3895
    :try_start_3c7
    iget-boolean v11, v1, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    .line 3896
    sget-boolean v13, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v13, :cond_3ee

    .line 3897
    iget v13, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    iget v15, v1, Landroid/view/ViewRootImpl;->mLastSeqId:I

    if-le v13, v15, :cond_3df

    .line 3898
    iget v13, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    iput v13, v1, Landroid/view/ViewRootImpl;->mLastSeqId:I

    .line 3899
    invoke-direct {v1, v8}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 3900
    if-nez v7, :cond_3df

    .line 3901
    const/4 v13, 0x0

    iput-boolean v13, v1, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z

    .line 3904
    :cond_3df
    iget v13, v1, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iget v15, v1, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    if-le v13, v15, :cond_411

    .line 3905
    iget v13, v1, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iput v13, v1, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    .line 3909
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    .line 3910
    const/4 v13, 0x1

    goto :goto_412

    .line 3913
    :cond_3ee
    iget v13, v1, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iget v15, v1, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    if-le v13, v15, :cond_411

    .line 3914
    iget v13, v1, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iput v13, v1, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    .line 3918
    invoke-direct {v1, v8}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 3919
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroid/view/ViewRootImpl;->mSyncBuffer:Z
    :try_end_3fe
    .catch Landroid/os/RemoteException; {:try_start_3c7 .. :try_end_3fe} :catch_6a0
    .catchall {:try_start_3c7 .. :try_end_3fe} :catchall_6c4

    .line 3920
    nop

    .line 3921
    if-nez v7, :cond_40f

    .line 3922
    const/4 v13, 0x0

    :try_start_402
    iput-boolean v13, v1, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z
    :try_end_404
    .catch Landroid/os/RemoteException; {:try_start_402 .. :try_end_404} :catch_405
    .catchall {:try_start_402 .. :try_end_404} :catchall_6c4

    goto :goto_40f

    .line 4100
    :catch_405
    move-exception v0

    move/from16 v29, v4

    move/from16 v30, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto/16 :goto_6a8

    .line 3927
    :cond_40f
    :goto_40f
    const/4 v13, 0x1

    goto :goto_412

    :cond_411
    const/4 v13, 0x0

    :goto_412
    and-int/lit8 v15, v6, 0x2

    move/from16 v28, v0

    const/4 v0, 0x2

    if-ne v15, v0, :cond_41b

    const/4 v0, 0x1

    goto :goto_41c

    :cond_41b
    const/4 v0, 0x0

    .line 3931
    :goto_41c
    :try_start_41c
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v15}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v15

    if-eqz v15, :cond_47d

    .line 3932
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v15, v11, v0}, Landroid/view/ViewRootImpl;->updateOpacity(Landroid/view/WindowManager$LayoutParams;ZZ)V

    .line 3937
    if-eqz v0, :cond_432

    iget-boolean v15, v1, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    if-eqz v15, :cond_432

    .line 3938
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->updateDisplayDecoration()V

    .line 3940
    :cond_432
    if-eqz v0, :cond_44e

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v0, 0x7d0

    if-ne v15, v0, :cond_450

    .line 3943
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_442
    .catch Landroid/os/RemoteException; {:try_start_41c .. :try_end_442} :catch_698
    .catchall {:try_start_41c .. :try_end_442} :catchall_6c4

    move/from16 v29, v4

    const/16 v4, 0x65

    :try_start_446
    invoke-virtual {v0, v15, v4}, Landroid/view/SurfaceControl$Transaction;->setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 3944
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_452

    .line 3940
    :cond_44e
    move/from16 v22, v0

    :cond_450
    move/from16 v29, v4

    .line 3947
    :goto_452
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->setScPropertiesInClient()Z

    move-result v0

    if-eqz v0, :cond_481

    .line 3948
    if-eqz v22, :cond_45d

    .line 3950
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mIsSurfaceColorSpaceAgnostic:Z

    .line 3952
    :cond_45d
    if-nez v22, :cond_461

    if-eqz v26, :cond_481

    .line 3953
    :cond_461
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_46a

    const/4 v0, 0x1

    goto :goto_46b

    :cond_46a
    const/4 v0, 0x0

    .line 3956
    :goto_46b
    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mIsSurfaceColorSpaceAgnostic:Z

    if-eq v0, v4, :cond_481

    .line 3957
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsSurfaceColorSpaceAgnostic:Z

    .line 3958
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v15, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 3959
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    goto :goto_481

    .line 3931
    :cond_47d
    move/from16 v22, v0

    move/from16 v29, v4

    .line 3973
    :cond_481
    :goto_481
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 3974
    invoke-virtual {v0, v4}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_498

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 3975
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_496

    goto :goto_498

    :cond_496
    const/4 v0, 0x0

    goto :goto_499

    :cond_498
    :goto_498
    const/4 v0, 0x1

    .line 3977
    :goto_499
    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    if-eqz v4, :cond_4c7

    if-eqz v0, :cond_4c7

    .line 3980
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-direct {v0, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_4ac

    const/4 v4, 0x1

    goto :goto_4ad

    :cond_4ac
    const/4 v4, 0x0

    .line 3982
    :goto_4ad
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v15, :cond_4bb

    .line 3983
    new-instance v15, Landroid/window/ActivityWindowInfo;
    :try_end_4b3
    .catch Landroid/os/RemoteException; {:try_start_446 .. :try_end_4b3} :catch_696
    .catchall {:try_start_446 .. :try_end_4b3} :catchall_6c4

    move/from16 v30, v6

    :try_start_4b5
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-direct {v15, v6}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    goto :goto_4be

    .line 3984
    :cond_4bb
    move/from16 v30, v6

    const/4 v15, 0x0

    .line 3980
    :goto_4be
    const/4 v6, -0x1

    invoke-direct {v1, v0, v4, v6, v15}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V
    :try_end_4c2
    .catch Landroid/os/RemoteException; {:try_start_4b5 .. :try_end_4c2} :catch_4c4
    .catchall {:try_start_4b5 .. :try_end_4c2} :catchall_6c4

    .line 3985
    const/4 v4, 0x1

    goto :goto_4ca

    .line 4100
    :catch_4c4
    move-exception v0

    goto/16 :goto_69d

    .line 3977
    :cond_4c7
    move/from16 v30, v6

    .line 3987
    const/4 v4, 0x0

    :goto_4ca
    :try_start_4ca
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mUpdateSurfaceNeeded:Z

    .line 3988
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mUpdateSurfaceNeeded:Z

    .line 3990
    nop

    .line 3991
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v6, v15}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4d8
    .catch Landroid/os/RemoteException; {:try_start_4ca .. :try_end_4d8} :catch_68d
    .catchall {:try_start_4ca .. :try_end_4d8} :catchall_6c4

    if-nez v6, :cond_4fa

    .line 3992
    nop

    .line 3993
    :try_start_4db
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Point;->set(II)V
    :try_end_4ea
    .catch Landroid/os/RemoteException; {:try_start_4db .. :try_end_4ea} :catch_4ec
    .catchall {:try_start_4db .. :try_end_4ea} :catchall_6c4

    const/4 v6, 0x1

    goto :goto_4fd

    .line 4100
    :catch_4ec
    move-exception v0

    move/from16 v22, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x8

    const/16 v28, 0x0

    const/16 v32, 0x1

    goto/16 :goto_6e8

    .line 3991
    :cond_4fa
    move/from16 v31, v0

    const/4 v6, 0x0

    .line 3995
    :goto_4fd
    :try_start_4fd
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getDesiredHdrHeadroom()F

    move-result v15

    invoke-direct {v1, v0, v15}, Landroid/view/ViewRootImpl;->updateColorModeIfNeeded(IF)V

    .line 3996
    if-nez v28, :cond_514

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_510
    .catch Landroid/os/RemoteException; {:try_start_4fd .. :try_end_510} :catch_680
    .catchall {:try_start_4fd .. :try_end_510} :catchall_6c4

    if-eqz v0, :cond_514

    const/4 v15, 0x1

    goto :goto_515

    :cond_514
    const/4 v15, 0x0

    .line 3997
    :goto_515
    if-eqz v28, :cond_52b

    :try_start_517
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_51d
    .catch Landroid/os/RemoteException; {:try_start_517 .. :try_end_51d} :catch_522
    .catchall {:try_start_517 .. :try_end_51d} :catchall_6c4

    if-nez v0, :cond_52b

    const/16 v28, 0x1

    goto :goto_52d

    .line 4100
    :catch_522
    move-exception v0

    move/from16 v22, v4

    move/from16 v32, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_688

    .line 3997
    :cond_52b
    const/16 v28, 0x0

    .line 4003
    :goto_52d
    :try_start_52d
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-ne v5, v0, :cond_537

    if-eqz v22, :cond_541

    :cond_537
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 4004
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_53d
    .catch Landroid/os/RemoteException; {:try_start_52d .. :try_end_53d} :catch_675
    .catchall {:try_start_52d .. :try_end_53d} :catchall_6c4

    if-eqz v0, :cond_541

    const/4 v5, 0x1

    goto :goto_542

    :cond_541
    const/4 v5, 0x0

    .line 4005
    :goto_542
    if-eqz v5, :cond_56c

    .line 4006
    move/from16 v22, v4

    const/4 v4, 0x1

    :try_start_547
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    .line 4007
    iget v0, v1, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    .line 4008
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4009
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;
    :try_end_557
    .catch Landroid/os/RemoteException; {:try_start_547 .. :try_end_557} :catch_561
    .catchall {:try_start_547 .. :try_end_557} :catchall_6c4

    move/from16 v33, v5

    move/from16 v32, v6

    const-wide/16 v5, 0xbb8

    :try_start_55d
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_572

    .line 4100
    :catch_561
    move-exception v0

    move/from16 v33, v5

    move/from16 v32, v6

    :goto_566
    const/4 v4, 0x0

    :goto_567
    const/4 v5, 0x0

    :goto_568
    const-wide/16 v17, 0x8

    goto/16 :goto_6ea

    .line 4005
    :cond_56c
    move/from16 v22, v4

    move/from16 v33, v5

    move/from16 v32, v6

    .line 4012
    :goto_572
    iget v0, v1, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v4, :cond_581

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v0, :cond_57f

    goto :goto_581

    :cond_57f
    const/4 v4, 0x0

    goto :goto_58b

    .line 4014
    :cond_581
    :goto_581
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 4015
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_58a
    .catch Landroid/os/RemoteException; {:try_start_55d .. :try_end_58a} :catch_672
    .catchall {:try_start_55d .. :try_end_58a} :catchall_6c4

    .line 4018
    const/4 v4, 0x1

    .line 4021
    :goto_58b
    if-eqz v15, :cond_5d0

    .line 4024
    const/4 v5, 0x1

    :try_start_58e
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4025
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 4030
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_599
    .catch Landroid/os/RemoteException; {:try_start_58e .. :try_end_599} :catch_5ce
    .catchall {:try_start_58e .. :try_end_599} :catchall_6c4

    if-eqz v0, :cond_63f

    .line 4032
    :try_start_59b
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v5
    :try_end_5a5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_59b .. :try_end_5a5} :catch_5b9
    .catch Landroid/os/RemoteException; {:try_start_59b .. :try_end_5a5} :catch_5ce
    .catchall {:try_start_59b .. :try_end_5a5} :catchall_6c4

    .line 4033
    if-eqz v5, :cond_5b7

    :try_start_5a7
    iget v0, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_5b7

    .line 4037
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->allocateBuffers()V
    :try_end_5b4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5a7 .. :try_end_5b4} :catch_5b5
    .catch Landroid/os/RemoteException; {:try_start_5a7 .. :try_end_5b4} :catch_66f
    .catchall {:try_start_5a7 .. :try_end_5b4} :catchall_6c4

    goto :goto_5b7

    .line 4039
    :catch_5b5
    move-exception v0

    goto :goto_5bb

    .line 4043
    :cond_5b7
    :goto_5b7
    goto/16 :goto_640

    .line 4039
    :catch_5b9
    move-exception v0

    const/4 v5, 0x0

    .line 4040
    :goto_5bb
    :try_start_5bb
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 4041
    const-string v0, "oom_initialize_renderer"

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;
    :try_end_5c2
    .catch Landroid/os/RemoteException; {:try_start_5bb .. :try_end_5c2} :catch_66f
    .catchall {:try_start_5bb .. :try_end_5c2} :catchall_6c4

    .line 4102
    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_5cd

    .line 4103
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 4042
    :cond_5cd
    return-void

    .line 4100
    :catch_5ce
    move-exception v0

    goto :goto_567

    .line 4045
    :cond_5d0
    if-eqz v28, :cond_606

    .line 4048
    :try_start_5d2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5db

    .line 4049
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 4051
    :cond_5db
    const/4 v6, 0x0

    iput v6, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v6, v1, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 4052
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_5ef

    .line 4053
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v5, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v0, v5}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 4055
    :cond_5ef
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_5f8

    .line 4056
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4059
    :cond_5f8
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-eqz v0, :cond_63f

    .line 4060
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    goto :goto_63f

    .line 4062
    :cond_606
    if-nez v33, :cond_60c

    if-nez v32, :cond_60c

    if-eqz v31, :cond_63f

    :cond_60c
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v0, :cond_63f

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_63f

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 4065
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_63f

    .line 4066
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_621
    .catch Landroid/os/RemoteException; {:try_start_5d2 .. :try_end_621} :catch_5ce
    .catchall {:try_start_5d2 .. :try_end_621} :catchall_6c4

    .line 4076
    :try_start_621
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_62a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_621 .. :try_end_62a} :catch_62b
    .catch Landroid/os/RemoteException; {:try_start_621 .. :try_end_62a} :catch_5ce
    .catchall {:try_start_621 .. :try_end_62a} :catchall_6c4

    .line 4081
    goto :goto_63f

    .line 4077
    :catch_62b
    move-exception v0

    .line 4078
    :try_start_62c
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 4079
    const-string v0, "oom_update_surface"

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;
    :try_end_633
    .catch Landroid/os/RemoteException; {:try_start_62c .. :try_end_633} :catch_5ce
    .catchall {:try_start_62c .. :try_end_633} :catchall_6c4

    .line 4102
    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_63e

    .line 4103
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 4080
    :cond_63e
    return-void

    .line 4084
    :cond_63f
    :goto_63f
    const/4 v5, 0x0

    :goto_640
    :try_start_640
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eq v0, v11, :cond_64d

    .line 4085
    if-eqz v11, :cond_64a

    .line 4086
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->startDragResizing()V

    goto :goto_64d

    .line 4089
    :cond_64a
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 4092
    :cond_64d
    :goto_64d
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_665

    .line 4093
    if-eqz v11, :cond_660

    .line 4094
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    .line 4095
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    goto :goto_665

    .line 4097
    :cond_660
    const/4 v6, 0x0

    iput v6, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    iput v6, v1, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I
    :try_end_665
    .catch Landroid/os/RemoteException; {:try_start_640 .. :try_end_665} :catch_66f
    .catchall {:try_start_640 .. :try_end_665} :catchall_6c4

    .line 4102
    :cond_665
    :goto_665
    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_6f3

    .line 4103
    goto/16 :goto_6f0

    .line 4100
    :catch_66f
    move-exception v0

    goto/16 :goto_568

    :catch_672
    move-exception v0

    goto/16 :goto_566

    :catch_675
    move-exception v0

    move/from16 v22, v4

    move/from16 v32, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v17, 0x8

    goto/16 :goto_6e8

    :catch_680
    move-exception v0

    move/from16 v22, v4

    move/from16 v32, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_688
    const-wide/16 v17, 0x8

    const/16 v28, 0x0

    goto :goto_6e8

    :catch_68d
    move-exception v0

    move/from16 v22, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x8

    goto :goto_6ad

    :catch_696
    move-exception v0

    goto :goto_69b

    :catch_698
    move-exception v0

    move/from16 v29, v4

    :goto_69b
    move/from16 v30, v6

    :goto_69d
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_6a8

    :catch_6a0
    move-exception v0

    move/from16 v29, v4

    move/from16 v30, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_6a8
    const/4 v15, 0x0

    const-wide/16 v17, 0x8

    const/16 v22, 0x0

    :goto_6ad
    const/16 v28, 0x0

    goto :goto_6e6

    :catch_6b0
    move-exception v0

    move/from16 v29, v4

    goto :goto_6bb

    :catch_6b4
    move-exception v0

    move/from16 v29, v4

    move/from16 v25, v6

    move/from16 v26, v7

    :goto_6bb
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x8

    goto :goto_6e0

    .line 4102
    :catchall_6c4
    move-exception v0

    const-wide/16 v17, 0x8

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_6d0

    .line 4103
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 4105
    :cond_6d0
    throw v0

    .line 4100
    :catch_6d1
    move-exception v0

    move/from16 v29, v4

    move/from16 v25, v6

    move/from16 v26, v7

    const-wide/16 v17, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_6e0
    const/16 v22, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    :goto_6e6
    const/16 v32, 0x0

    :goto_6e8
    const/16 v33, 0x0

    .line 4102
    :goto_6ea
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_6f3

    .line 4103
    :goto_6f0
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 4110
    :cond_6f3
    move v0, v4

    move v6, v15

    move/from16 v4, v22

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v15, v9, Landroid/graphics/Rect;->left:I

    iput v15, v11, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 4111
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v15, v9, Landroid/graphics/Rect;->top:I

    iput v15, v11, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 4116
    iget v11, v1, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-ne v11, v15, :cond_713

    iget v11, v1, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-eq v11, v15, :cond_71f

    .line 4117
    :cond_713
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    iput v11, v1, Landroid/view/ViewRootImpl;->mWidth:I

    .line 4118
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v1, Landroid/view/ViewRootImpl;->mHeight:I

    .line 4121
    :cond_71f
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v11, :cond_7ec

    .line 4123
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->isValid()Z

    move-result v11

    if-eqz v11, :cond_731

    .line 4126
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v15, v11, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 4128
    :cond_731
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v15, v1, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v17, v0

    iget v0, v1, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v11, v15, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 4129
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4130
    if-eqz v6, :cond_771

    .line 4131
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 4133
    const/4 v11, 0x1

    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 4134
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 4135
    if-eqz v0, :cond_76e

    .line 4136
    array-length v11, v0

    const/4 v15, 0x0

    :goto_757
    if-ge v15, v11, :cond_76b

    move-object/from16 v18, v0

    aget-object v0, v18, v15

    .line 4137
    move/from16 v22, v4

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 4136
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v4, v22

    goto :goto_757

    :cond_76b
    move/from16 v22, v4

    goto :goto_773

    .line 4135
    :cond_76e
    move/from16 v22, v4

    goto :goto_773

    .line 4130
    :cond_771
    move/from16 v22, v4

    .line 4142
    :goto_773
    if-nez v6, :cond_781

    if-nez v33, :cond_781

    if-nez v32, :cond_781

    if-eqz v26, :cond_77c

    goto :goto_781

    :cond_77c
    move/from16 v34, v5

    move/from16 v35, v6

    goto :goto_7c6

    :cond_781
    :goto_781
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 4143
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7c2

    .line 4144
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 4145
    if-eqz v0, :cond_7ba

    .line 4146
    array-length v4, v0

    const/4 v11, 0x0

    :goto_793
    if-ge v11, v4, :cond_7b5

    aget-object v15, v0, v11

    .line 4147
    move-object/from16 v18, v0

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v31, v4

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v34, v5

    iget v5, v1, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v35, v6

    iget v6, v1, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v15, v0, v4, v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 4146
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v18

    move/from16 v4, v31

    move/from16 v5, v34

    move/from16 v6, v35

    goto :goto_793

    :cond_7b5
    move/from16 v34, v5

    move/from16 v35, v6

    goto :goto_7be

    .line 4145
    :cond_7ba
    move/from16 v34, v5

    move/from16 v35, v6

    .line 4151
    :goto_7be
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_7c6

    .line 4143
    :cond_7c2
    move/from16 v34, v5

    move/from16 v35, v6

    .line 4154
    :goto_7c6
    if-eqz v28, :cond_7f4

    .line 4155
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->notifyHolderSurfaceDestroyed()V

    .line 4156
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4158
    :try_start_7d2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    iput-object v4, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7db
    .catchall {:try_start_7d2 .. :try_end_7db} :catchall_7e3

    .line 4160
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4161
    goto :goto_7f4

    .line 4160
    :catchall_7e3
    move-exception v0

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4161
    throw v0

    .line 4121
    :cond_7ec
    move/from16 v17, v0

    move/from16 v22, v4

    move/from16 v34, v5

    move/from16 v35, v6

    .line 4165
    :cond_7f4
    :goto_7f4
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4166
    if-eqz v0, :cond_86c

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_86c

    .line 4167
    if-nez v34, :cond_816

    iget v4, v1, Landroid/view/ViewRootImpl;->mWidth:I

    .line 4168
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_816

    iget v4, v1, Landroid/view/ViewRootImpl;->mHeight:I

    .line 4169
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_816

    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v4, :cond_826

    .line 4171
    :cond_816
    iget v4, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v6, v11}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 4173
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 4176
    :cond_826
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/surfaceflinger/flags/Flags;->setClientDrawnCornerRadii()Z

    move-result v4

    if-eqz v4, :cond_86c

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$CornerRadii;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86c

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4177
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_86c

    .line 4178
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v6, v6, Landroid/view/ViewRootImpl$CornerRadii;->topLeft:F

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v11, v11, Landroid/view/ViewRootImpl$CornerRadii;->topRight:F

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v15, v15, Landroid/view/ViewRootImpl$CornerRadii;->bottomLeft:F

    move-object/from16 v36, v4

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    iget v4, v4, Landroid/view/ViewRootImpl$CornerRadii;->bottomRight:F

    .line 4182
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getRoundedClipBounds()Landroid/graphics/RectF;

    move-result-object v42

    .line 4179
    move/from16 v41, v4

    move-object/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v11

    move/from16 v40, v15

    invoke-virtual/range {v36 .. v42}, Landroid/view/SurfaceControl$Transaction;->setClientDrawnCornerRadius(Landroid/view/SurfaceControl;FFFFLandroid/graphics/RectF;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 4178
    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4183
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    invoke-virtual {v0, v4}, Landroid/view/ThreadedRenderer;->setCornerRadius(Landroid/view/ViewRootImpl$CornerRadii;)V

    .line 4196
    :cond_86c
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_874

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_8dd

    .line 4197
    :cond_874
    iget v0, v1, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v0, v4, :cond_888

    iget v0, v1, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ne v0, v4, :cond_888

    if-nez v17, :cond_888

    if-eqz v22, :cond_8dd

    .line 4199
    :cond_888
    iget v0, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v0

    .line 4201
    iget v4, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(III)I

    move-result v4

    .line 4211
    invoke-direct {v1, v0, v4}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 4216
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 4217
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 4218
    nop

    .line 4220
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v11, v11, v19

    if-lez v11, :cond_8bf

    .line 4221
    iget v0, v1, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v0, v11

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 4222
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4224
    const/4 v5, 0x1

    goto :goto_8c0

    .line 4220
    :cond_8bf
    const/4 v5, 0x0

    .line 4226
    :goto_8c0
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v11, v11, v19

    if-lez v11, :cond_8d6

    .line 4227
    iget v4, v1, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v6, v4

    .line 4228
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 4230
    const/4 v5, 0x1

    .line 4233
    :cond_8d6
    if-eqz v5, :cond_8db

    .line 4237
    invoke-direct {v1, v0, v4}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 4240
    :cond_8db
    const/16 v21, 0x1

    .line 4243
    :cond_8dd
    nop

    .line 4252
    :goto_8de
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mViewMeasureDeferred:Z

    if-eqz v0, :cond_8f8

    .line 4254
    nop

    .line 4255
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4256
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 4254
    invoke-direct {v1, v0, v4}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 4259
    :cond_8f8
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    if-nez v0, :cond_914

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mCheckIfCanDraw:Z

    if-eqz v0, :cond_914

    .line 4264
    :try_start_900
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 4265
    sget-boolean v5, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v5, :cond_90b

    iget v5, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    goto :goto_90c

    :cond_90b
    const/4 v5, 0x0

    .line 4264
    :goto_90c
    invoke-interface {v0, v4, v5}, Landroid/view/IWindowSession;->cancelDraw(Landroid/view/IWindow;I)Z

    move-result v7

    .line 4266
    const-string v8, "wm_sync"
    :try_end_912
    .catch Landroid/os/RemoteException; {:try_start_900 .. :try_end_912} :catch_913

    .line 4271
    goto :goto_914

    .line 4270
    :catch_913
    move-exception v0

    .line 4274
    :cond_914
    :goto_914
    if-nez v32, :cond_920

    if-nez v33, :cond_920

    if-nez v35, :cond_920

    if-nez v26, :cond_920

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mChildBoundingInsetsChanged:Z

    if-eqz v0, :cond_926

    .line 4285
    :cond_920
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->prepareSurfaces()V

    .line 4286
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mChildBoundingInsetsChanged:Z

    .line 4289
    :cond_926
    if-eqz v21, :cond_932

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_930

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_932

    :cond_930
    const/4 v0, 0x1

    goto :goto_933

    :cond_932
    const/4 v0, 0x0

    .line 4290
    :goto_933
    if-nez v0, :cond_93e

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_93c

    goto :goto_93e

    :cond_93c
    const/4 v4, 0x0

    goto :goto_93f

    :cond_93e
    :goto_93e
    const/4 v4, 0x1

    .line 4292
    :goto_93f
    if-eqz v0, :cond_9c4

    .line 4293
    iget v0, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v1, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-direct {v1, v3, v0, v5}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 4298
    iget v0, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9c4

    .line 4301
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4302
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v24, 0x0

    aget v3, v3, v24

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v23, 0x1

    aget v5, v5, v23

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    aget v6, v6, v24

    iget v9, v2, Landroid/view/View;->mRight:I

    add-int/2addr v6, v9

    iget v9, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v9

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    aget v9, v9, v23

    iget v11, v2, Landroid/view/View;->mBottom:I

    add-int/2addr v9, v11

    iget v11, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v11

    invoke-virtual {v0, v3, v5, v6, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 4306
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 4307
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4308
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_990

    .line 4309
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 4312
    :cond_990
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_99b

    .line 4313
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 4316
    :cond_99b
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c4

    .line 4317
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 4318
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4325
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 4326
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_9c4

    .line 4327
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4339
    :cond_9c4
    nop

    .line 4343
    if-eqz v35, :cond_9ce

    .line 4344
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->notifySurfaceCreated(Landroid/view/SurfaceControl$Transaction;)V

    .line 4345
    const/4 v0, 0x1

    goto :goto_9dd

    .line 4346
    :cond_9ce
    if-eqz v33, :cond_9d7

    .line 4347
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->notifySurfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V

    .line 4348
    const/4 v0, 0x1

    goto :goto_9dd

    .line 4349
    :cond_9d7
    if-eqz v28, :cond_9dc

    .line 4350
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->notifySurfaceDestroyed()V

    .line 4353
    :cond_9dc
    const/4 v0, 0x0

    :goto_9dd
    if-eqz v0, :cond_9e4

    .line 4354
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4357
    :cond_9e4
    if-eqz v4, :cond_9f2

    .line 4358
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4359
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 4362
    :cond_9f2
    nop

    .line 4363
    nop

    .line 4364
    nop

    .line 4365
    nop

    .line 4366
    nop

    .line 4367
    const/4 v0, 0x3

    if-eqz v29, :cond_a50

    .line 4368
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 4371
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 4374
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 4375
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v4

    const/16 v23, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 4378
    if-nez v12, :cond_a24

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1f

    goto :goto_a24

    :cond_a1f
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_a4d

    .line 4379
    :cond_a24
    :goto_a24
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 4382
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_a46

    .line 4383
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 4384
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 4385
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v5

    goto :goto_a4c

    .line 4387
    :cond_a46
    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 4388
    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 4389
    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 4391
    :goto_a4c
    const/4 v6, 0x1

    .line 4393
    :goto_a4d
    iget v2, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    goto :goto_a55

    .line 4367
    :cond_a50
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4395
    :goto_a55
    nop

    .line 4396
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-static {v9, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a66

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v9, :cond_a66

    const/4 v9, 0x1

    goto :goto_a67

    :cond_a66
    const/4 v9, 0x0

    :goto_a67
    or-int/2addr v6, v9

    .line 4398
    if-eqz v6, :cond_acc

    .line 4399
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v6, :cond_a8a

    .line 4400
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    if-nez v6, :cond_a79

    .line 4401
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    .line 4403
    :cond_a79
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 4404
    if-eq v2, v0, :cond_a8d

    .line 4405
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v6, "Setting touchableInsetMode to non TOUCHABLE_INSETS_REGION from OnComputeInternalInsets, while also using setTouchableRegion causes setTouchableRegion to be ignored"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8d

    .line 4410
    :cond_a8a
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    .line 4412
    :cond_a8d
    :goto_a8d
    if-nez v3, :cond_a96

    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_a97

    :cond_a96
    const/4 v6, 0x0

    :goto_a97
    move-object/from16 v34, v3

    .line 4413
    if-nez v4, :cond_aa0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_aa0
    move-object/from16 v35, v4

    .line 4414
    if-nez v5, :cond_aa9

    .line 4415
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    move-object/from16 v36, v5

    goto :goto_ab8

    .line 4416
    :cond_aa9
    if-eqz v5, :cond_ab6

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_ab6

    .line 4417
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v5, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 4420
    :cond_ab6
    move-object/from16 v36, v5

    :goto_ab8
    :try_start_ab8
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v31, v0

    move/from16 v33, v2

    move-object/from16 v32, v3

    invoke-interface/range {v31 .. v36}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_ac5
    .catch Landroid/os/RemoteException; {:try_start_ab8 .. :try_end_ac5} :catch_ac6

    .line 4424
    goto :goto_ae5

    .line 4422
    :catch_ac6
    move-exception v0

    .line 4423
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4425
    :cond_acc
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    if-nez v0, :cond_ae5

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    if-eqz v0, :cond_ae5

    .line 4426
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mPreviousTouchableRegion:Landroid/graphics/Region;

    .line 4428
    :try_start_ad7
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->clearTouchableRegion(Landroid/view/IWindow;)V
    :try_end_ade
    .catch Landroid/os/RemoteException; {:try_start_ad7 .. :try_end_ade} :catch_adf

    .line 4431
    goto :goto_ae5

    .line 4429
    :catch_adf
    move-exception v0

    .line 4430
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4434
    :cond_ae5
    :goto_ae5
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_b29

    .line 4435
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_b0d

    invoke-direct {v1}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_af4

    goto :goto_b0d

    .line 4459
    :cond_af4
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4460
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b1e

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 4461
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_b1e

    .line 4463
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    goto :goto_b1e

    .line 4440
    :cond_b0d
    :goto_b0d
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b1e

    .line 4441
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_b1e

    .line 4442
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 4467
    :cond_b1e
    :goto_b1e
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_b29

    .line 4469
    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->boostFrameRate(I)V

    .line 4473
    :cond_b29
    if-nez v16, :cond_b2f

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_b33

    :cond_b2f
    if-eqz v25, :cond_b33

    const/4 v0, 0x1

    goto :goto_b34

    :cond_b33
    const/4 v0, 0x0

    .line 4474
    :goto_b34
    if-eqz v0, :cond_b39

    .line 4475
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->maybeFireAccessibilityWindowStateChangedEvent()V

    .line 4478
    :cond_b39
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 4479
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 4480
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 4481
    iput v10, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 4483
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_b4c

    if-eqz v25, :cond_b4c

    const/4 v0, 0x1

    goto :goto_b4d

    :cond_b4c
    const/4 v0, 0x0

    .line 4484
    :goto_b4d
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/view/ImeFocusController;->onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V

    .line 4486
    const/16 v23, 0x1

    and-int/lit8 v0, v30, 0x1

    if-eqz v0, :cond_b5f

    .line 4487
    const-string v0, "first_relayout"

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 4490
    :cond_b5f
    if-nez v13, :cond_b66

    if-eqz v7, :cond_b64

    goto :goto_b66

    :cond_b64
    const/4 v0, 0x0

    goto :goto_b67

    :cond_b66
    :goto_b66
    const/4 v0, 0x1

    :goto_b67
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mCheckIfCanDraw:Z

    .line 4492
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v0

    .line 4493
    if-nez v0, :cond_b7c

    if-eqz v7, :cond_b7a

    iget-boolean v2, v1, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z

    if-eqz v2, :cond_b7a

    goto :goto_b7c

    :cond_b7a
    const/4 v2, 0x0

    goto :goto_b7d

    :cond_b7c
    :goto_b7c
    const/4 v2, 0x1

    .line 4496
    :goto_b7d
    if-nez v2, :cond_ba6

    .line 4499
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v3, :cond_b87

    .line 4500
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    goto :goto_b88

    .line 4499
    :cond_b87
    const/4 v5, 0x1

    .line 4503
    :goto_b88
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->createSyncIfNeeded()V

    .line 4504
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v3

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->notifyDrawStarted(Z)V

    .line 4505
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z

    .line 4512
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v3, :cond_ba6

    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    if-eqz v3, :cond_ba6

    .line 4513
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->updateSyncInProgressCount(Landroid/window/SurfaceSyncGroup;)V

    .line 4514
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->safeguardOverlappingSyncs(Landroid/window/SurfaceSyncGroup;)V

    .line 4518
    :cond_ba6
    if-nez v25, :cond_bfe

    .line 4519
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastTraversalWasVisible:Z

    if-eqz v0, :cond_bc2

    .line 4520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not drawing due to not visible. Reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 4522
    :cond_bc2
    const-string v0, "view_not_visible"

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    .line 4523
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_bee

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_bee

    .line 4524
    const/4 v0, 0x0

    :goto_bd3
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_be9

    .line 4525
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition;

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 4524
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd3

    .line 4527
    :cond_be9
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4530
    :cond_bee
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    const-string v5, "view not visible"

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4532
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    goto/16 :goto_cb4

    .line 4533
    :cond_bfe
    if-eqz v2, :cond_c64

    .line 4534
    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mWasLastDrawCanceled:Z

    if-nez v3, :cond_c2d

    .line 4535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling draw. cancelDueToPreDrawListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cancelDueToSync="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_c21

    iget-boolean v4, v1, Landroid/view/ViewRootImpl;->mDrewOnceForSync:Z

    if-eqz v4, :cond_c21

    const/4 v4, 0x1

    goto :goto_c22

    :cond_c21
    const/4 v4, 0x0

    :goto_c22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 4539
    :cond_c2d
    if-eqz v0, :cond_c4b

    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predraw_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->getLastDispatchOnPreDrawCanceledReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c5e

    .line 4541
    :cond_c4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c5e
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    .line 4543
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_cb4

    .line 4545
    :cond_c64
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mWasLastDrawCanceled:Z

    if-eqz v0, :cond_c6d

    .line 4546
    const-string v0, "Draw frame after cancel"

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 4548
    :cond_c6d
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastTraversalWasVisible:Z

    if-nez v0, :cond_c76

    .line 4549
    const-string v0, "Start draw after previous draw not visible"

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 4551
    :cond_c76
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c9e

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c9e

    .line 4552
    const/4 v0, 0x0

    :goto_c83
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c99

    .line 4553
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition;

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 4552
    add-int/lit8 v0, v0, 0x1

    goto :goto_c83

    .line 4555
    :cond_c99
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4557
    :cond_c9e
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->performDraw(Landroid/window/SurfaceSyncGroup;)Z

    move-result v0

    if-nez v0, :cond_cb4

    .line 4558
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4560
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    .line 4563
    :cond_cb4
    :goto_cb4
    iput-boolean v2, v1, Landroid/view/ViewRootImpl;->mWasLastDrawCanceled:Z

    .line 4564
    move/from16 v3, v25

    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mLastTraversalWasVisible:Z

    .line 4566
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    if-eqz v0, :cond_cc3

    .line 4567
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->notifyContentCaptureEvents()V

    .line 4570
    :cond_cc3
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 4571
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    .line 4573
    if-nez v2, :cond_cf3

    .line 4574
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 4575
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mLastReportNextDrawReason:Ljava/lang/String;

    .line 4576
    iput-object v6, v1, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 4577
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v0, :cond_ce0

    .line 4583
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 4584
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    goto :goto_ce1

    .line 4577
    :cond_ce0
    const/4 v6, 0x0

    .line 4586
    :goto_ce1
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    .line 4587
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0

    if-eqz v0, :cond_cf3

    .line 4588
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 4589
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 4590
    iput v6, v1, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroupState:I

    .line 4597
    :cond_cf3
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_d85

    .line 4598
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitInitialTouchBoostFlagValue:Z

    if-eqz v0, :cond_d04

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    if-eqz v0, :cond_d04

    .line 4599
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mTouchAndDrawn:Z

    .line 4602
    :cond_d04
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    .line 4603
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->sendCheckInvalidationIdle()V

    .line 4604
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->setCategoryFromCategoryCounts()V

    .line 4605
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->updateInfrequentCount()V

    .line 4606
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->updateFrameRateFromThreadedRendererViews()V

    .line 4607
    iget v0, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->setPreferredFrameRate(F)V

    .line 4608
    iget v0, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->setPreferredFrameRateCategory(I)V

    .line 4609
    iget v0, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    cmpl-float v0, v0, v19

    if-gtz v0, :cond_d2f

    iget v0, v1, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    cmpl-float v0, v0, v19

    if-eqz v0, :cond_d3d

    iget v0, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    cmpl-float v0, v0, v19

    if-nez v0, :cond_d3d

    .line 4612
    :cond_d2f
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 4613
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4616
    :cond_d3d
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    if-lez v0, :cond_d48

    .line 4617
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d4a

    :cond_d48
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    :goto_d4a
    iput v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    .line 4618
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    if-lez v0, :cond_d57

    .line 4619
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d59

    :cond_d57
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    :goto_d59
    iput v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    .line 4620
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    if-lez v0, :cond_d66

    .line 4621
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d68

    :cond_d66
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    :goto_d68
    iput v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    .line 4622
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    if-lez v0, :cond_d75

    .line 4623
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d77

    :cond_d75
    iget v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    :goto_d77
    iput v0, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    .line 4624
    const/4 v6, 0x0

    iput v6, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    .line 4625
    iput v2, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 4626
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mIsFrameRateConflicted:Z

    .line 4627
    iput v6, v1, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 4628
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    goto :goto_d92

    .line 4629
    :cond_d85
    iget v0, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    cmpl-float v0, v0, v19

    if-nez v0, :cond_d92

    .line 4631
    move/from16 v3, v19

    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->setPreferredFrameRate(F)V

    .line 4632
    iput v2, v1, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 4634
    :cond_d92
    :goto_d92
    return-void

    .line 3586
    :cond_d93
    :goto_d93
    if-nez v2, :cond_d98

    const-string v0, "no_host"

    goto :goto_d9a

    :cond_d98
    const-string v0, "not_added"

    :goto_d9a
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    .line 3587
    return-void
.end method

.method private greylist-max-o postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .registers 5

    .line 11214
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_c

    .line 11215
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl-IA;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 11218
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 11219
    return-void
.end method

.method private blacklist preInitBufferAllocator()V
    .registers 2

    .line 13831
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->earlyPreinitBufferAllocator()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13832
    invoke-static {}, Landroid/view/ThreadedRenderer;->preInitBufferAllocator()V

    .line 13834
    :cond_9
    return-void
.end method

.method private blacklist prepareSurfaces()V
    .registers 4

    .line 2902
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2903
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2904
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    .line 2906
    :cond_d
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->updateBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2907
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 2916
    :cond_16
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2918
    :try_start_1c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2919
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    .line 2922
    goto :goto_2f

    .line 2920
    :catch_27
    move-exception v0

    .line 2921
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "Unable to set frame rate selection strategy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2924
    :cond_2f
    :goto_2f
    return-void
.end method

.method private greylist-max-o profileRendering(Z)V
    .registers 3

    .line 5373
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2b

    .line 5374
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 5376
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz p1, :cond_11

    .line 5377
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5379
    :cond_11
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz p1, :cond_28

    .line 5380
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez p1, :cond_20

    .line 5381
    new-instance p1, Landroid/view/ViewRootImpl$8;

    invoke-direct {p1, p0}, Landroid/view/ViewRootImpl$8;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 5392
    :cond_20
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_2b

    .line 5394
    :cond_28
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 5397
    :cond_2b
    :goto_2b
    return-void
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .registers 1

    .line 13405
    sparse-switch p0, :sswitch_data_26

    .line 13416
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    .line 13415
    :sswitch_8
    const-string p0, "conflicted"

    goto :goto_25

    .line 13414
    :sswitch_b
    const-string p0, "touch"

    goto :goto_25

    .line 13413
    :sswitch_e
    const-string p0, "boost"

    goto :goto_25

    .line 13411
    :sswitch_11
    const-string p0, "velocity"

    goto :goto_25

    .line 13410
    :sswitch_14
    const-string p0, "invalid frame rate"

    goto :goto_25

    .line 13409
    :sswitch_17
    const-string p0, "requested"

    goto :goto_25

    .line 13408
    :sswitch_1a
    const-string p0, "large"

    goto :goto_25

    .line 13406
    :sswitch_1d
    const-string p0, "intermittent"

    goto :goto_25

    .line 13407
    :sswitch_20
    const-string p0, "small"

    goto :goto_25

    .line 13412
    :sswitch_23
    const-string p0, "unknown"

    .line 13418
    :goto_25
    return-object p0

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_23
        0x1000000 -> :sswitch_20
        0x2000000 -> :sswitch_1d
        0x3000000 -> :sswitch_1a
        0x4000000 -> :sswitch_17
        0x5000000 -> :sswitch_14
        0x6000000 -> :sswitch_11
        0x8000000 -> :sswitch_e
        0x9000000 -> :sswitch_b
        0xa000000 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4

    .line 10570
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10571
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 10573
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_17

    .line 10574
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 10575
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10576
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10578
    :cond_17
    return-void
.end method

.method private blacklist registerBackCallbackOnWindow()V
    .registers 5

    .line 12941
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/ViewRootImpl;Landroid/view/ImeBackAnimationController;)V

    .line 12943
    return-void
.end method

.method private blacklist registerCallbackForPendingTransactions()V
    .registers 3

    .line 5519
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5520
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 5521
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    .line 5523
    new-instance v1, Landroid/view/ViewRootImpl$9;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewRootImpl$9;-><init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 5546
    return-void
.end method

.method private blacklist registerCallbacksForSync(ZLandroid/window/SurfaceSyncGroup;)V
    .registers 6

    .line 12999
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13000
    return-void

    .line 13008
    :cond_7
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    if-eqz v0, :cond_19

    .line 13009
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 13010
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 13011
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    goto :goto_1a

    .line 13013
    :cond_19
    const/4 v0, 0x0

    .line 13016
    :goto_1a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v2, Landroid/view/ViewRootImpl$11;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/view/ViewRootImpl$11;-><init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ThreadedRenderer;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 13102
    return-void
.end method

.method private blacklist registerCompatOnBackInvokedCallback()V
    .registers 4

    .line 12971
    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCompatOnBackInvokedCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 12974
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->hasImeBackCallbackSender()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 12975
    const-string v0, "ViewRootImpl"

    const-string v1, "Skip registering CompatOnBackInvokedCallback on IME dispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12976
    return-void

    .line 12978
    :cond_17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mCompatOnBackInvokedCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 12980
    return-void
.end method

.method private blacklist registerListeners()V
    .registers 9

    .line 1813
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    if-eqz v0, :cond_1e

    .line 1814
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 1818
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addHighContrastTextStateChangeListener(Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V

    .line 1823
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsSubscribeGranularDisplayEventsEnabled:Z

    if-eqz v0, :cond_38

    .line 1826
    const-wide/16 v0, 0x85

    move-wide v5, v0

    goto :goto_3b

    .line 1830
    :cond_38
    const-wide/16 v0, 0x47

    move-wide v5, v0

    .line 1832
    :goto_3b
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 1833
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V

    .line 1839
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1840
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    if-nez v0, :cond_6c

    .line 1841
    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    .line 1843
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 1844
    if-eqz v0, :cond_6c

    .line 1845
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/UiModeManager;->addForceInvertStateChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    .line 1850
    :cond_6c
    return-void
.end method

.method private greylist-max-o relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9622
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-direct {v0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9623
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 9624
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9625
    invoke-direct {v0}, Landroid/view/ViewRootImpl;->getCompatWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    .line 9626
    iget v4, v0, Landroid/view/ViewRootImpl;->mMeasuredWidth:I

    .line 9627
    iget v5, v0, Landroid/view/ViewRootImpl;->mMeasuredHeight:I

    .line 9629
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    iget-wide v6, v6, Landroid/view/ViewFrameInfo;->flags:J

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    const-wide/16 v13, 0x8

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-nez v6, :cond_15e

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    move-wide/from16 v17, v8

    const/4 v8, 0x3

    if-eq v6, v8, :cond_15c

    iget v6, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    if-gt v6, v8, :cond_15c

    sget-boolean v6, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v6, :cond_51

    iget v6, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mLastSeqId:I

    if-le v6, v8, :cond_51

    iget v6, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mNonSyncEarlySeqId:I

    if-gt v6, v8, :cond_4b

    goto :goto_51

    :cond_4b
    move v6, v5

    move-wide v8, v13

    move v5, v4

    move v4, v15

    goto/16 :goto_164

    .line 9635
    :cond_51
    :goto_51
    invoke-virtual {v1, v2, v7}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-nez v6, :cond_157

    .line 9636
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v1

    .line 9637
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 9638
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 9639
    move-wide v8, v13

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 9640
    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v18

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 9641
    invoke-virtual {v6}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v21

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 9639
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v23, v6

    move v4, v15

    move-object v15, v1

    invoke-virtual/range {v13 .. v23}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 9643
    move/from16 v5, v19

    move/from16 v6, v20

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9644
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_a8

    .line 9645
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 9651
    :cond_a8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mLastLayoutFrame:Landroid/graphics/Rect;

    .line 9652
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 9653
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    if-ne v10, v11, :cond_bd

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    if-eq v10, v11, :cond_bb

    goto :goto_bd

    :cond_bb
    move v15, v7

    goto :goto_be

    :cond_bd
    :goto_bd
    move v15, v4

    .line 9655
    :goto_be
    nop

    .line 9656
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-ne v10, v11, :cond_d6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eq v10, v11, :cond_d4

    goto :goto_d6

    :cond_d4
    move v10, v7

    goto :goto_d7

    :cond_d6
    :goto_d6
    move v10, v4

    .line 9657
    :goto_d7
    if-eqz v15, :cond_de

    if-nez v10, :cond_dc

    goto :goto_de

    :cond_dc
    move v15, v7

    goto :goto_df

    :cond_de
    :goto_de
    move v15, v4

    .line 9658
    :goto_df
    if-nez v15, :cond_155

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_155

    .line 9659
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "relayoutSync "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 9660
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "+"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "->"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9662
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9659
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 9665
    :cond_155
    goto/16 :goto_1e3

    .line 9635
    :cond_157
    move v6, v5

    move-wide v8, v13

    move v5, v4

    move v4, v15

    goto :goto_164

    .line 9629
    :cond_15c
    move v6, v5

    goto :goto_161

    :cond_15e
    move v6, v5

    move-wide/from16 v17, v8

    :goto_161
    move-wide v8, v13

    move v5, v4

    move v4, v15

    .line 9666
    :goto_164
    nop

    .line 9667
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v13

    if-eqz v13, :cond_1e2

    .line 9668
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "relayoutSync visChange="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    iget-wide v14, v14, Landroid/view/ViewFrameInfo;->flags:J

    and-long v14, v14, v17

    cmp-long v10, v14, v10

    if-eqz v10, :cond_182

    move v15, v4

    goto :goto_183

    :cond_182
    move v15, v7

    :goto_183
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " starting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_196

    move v15, v4

    goto :goto_197

    :cond_196
    move v15, v7

    :goto_197
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bufferId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v0, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " seqId="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/view/ViewRootImpl;->mLastSeqId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " winCfg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 9674
    invoke-virtual {v1, v2, v7}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v1

    .line 9673
    invoke-static {v1, v2}, Landroid/app/WindowConfiguration;->diffToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9668
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 9679
    :cond_1e2
    move v15, v7

    :goto_1e3
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 9680
    nop

    .line 9681
    if-eqz v3, :cond_1f9

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_1f9

    .line 9682
    nop

    .line 9683
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 9684
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move v13, v4

    goto :goto_1fa

    .line 9687
    :cond_1f9
    move v13, v7

    :goto_1fa
    if-eqz v3, :cond_226

    .line 9690
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v8, :cond_226

    .line 9692
    iget v2, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v8, 0xe

    if-ge v2, v8, :cond_226

    .line 9693
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9695
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 9700
    :cond_226
    int-to-float v2, v5

    mul-float/2addr v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 9701
    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 9702
    nop

    .line 9703
    iget v1, v0, Landroid/view/ViewRootImpl;->mRelayoutSeq:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/view/ViewRootImpl;->mRelayoutSeq:I

    .line 9704
    sget-boolean v1, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v1, :cond_23d

    iget v1, v0, Landroid/view/ViewRootImpl;->mSeqId:I

    goto :goto_23f

    :cond_23d
    iget v1, v0, Landroid/view/ViewRootImpl;->mLastSyncSeqId:I

    :goto_23f
    move v9, v1

    .line 9705
    if-eqz v15, :cond_258

    .line 9706
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move/from16 v18, v2

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 9708
    iget v8, v0, Landroid/view/ViewRootImpl;->mRelayoutSeq:I

    .line 9706
    move/from16 v6, p2

    move v15, v4

    move v14, v7

    move/from16 v4, v18

    move/from16 v7, p3

    invoke-interface/range {v1 .. v9}, Landroid/view/IWindowSession;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    move v7, v14

    goto/16 :goto_2e8

    .line 9711
    :cond_258
    move/from16 v18, v2

    move v15, v4

    move v14, v7

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 9713
    iget v8, v0, Landroid/view/ViewRootImpl;->mRelayoutSeq:I

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 9711
    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v4, v18

    invoke-interface/range {v1 .. v11}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I

    move-result v7

    .line 9715
    iput-boolean v15, v0, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    .line 9717
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->onClientWindowFramesChanged(Landroid/window/ClientWindowFrames;)V

    .line 9719
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v1, :cond_288

    .line 9720
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget-object v1, v1, Landroid/view/WindowRelayoutResult;->activityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 9721
    if-eqz v1, :cond_288

    .line 9722
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v2, v1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 9725
    :cond_288
    sget-boolean v1, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    if-eqz v1, :cond_299

    .line 9729
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget v2, v0, Landroid/view/ViewRootImpl;->mNonSyncEarlySeqId:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewRootImpl;->mNonSyncEarlySeqId:I

    goto :goto_2a5

    .line 9730
    :cond_299
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    if-lez v1, :cond_2a5

    .line 9731
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget v1, v1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iput v1, v0, Landroid/view/ViewRootImpl;->mSyncSeqId:I

    .line 9734
    :cond_2a5
    :goto_2a5
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9735
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2cd

    .line 9736
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 9737
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 9738
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 9740
    :cond_2cd
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget v1, v1, Landroid/window/ClientWindowFrames;->compatScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, v0, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    .line 9741
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/util/MergedConfiguration;I)V

    .line 9742
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    iget-object v2, v2, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 9745
    :goto_2e8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 9746
    invoke-virtual {v1}, Landroid/view/Display;->getInstallOrientation()I

    move-result v1

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x4

    .line 9745
    invoke-static {v1}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v1

    .line 9747
    iget v2, v0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    if-eq v1, v2, :cond_301

    move v2, v15

    goto :goto_302

    :cond_301
    move v2, v14

    .line 9748
    :goto_302
    iput v1, v0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    .line 9749
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 9751
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v17

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    iget-boolean v6, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    move-object/from16 v16, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v22, v8

    invoke-static/range {v16 .. v22}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 9754
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 9755
    and-int/lit8 v4, v7, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_331

    move v4, v15

    goto :goto_332

    :cond_331
    move v4, v14

    .line 9757
    :goto_332
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_351

    if-nez v2, :cond_33e

    if-eqz v3, :cond_33e

    if-eqz v4, :cond_351

    .line 9759
    :cond_33e
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v3}, Landroid/view/ThreadedRenderer;->pause()Z

    move-result v3

    if-eqz v3, :cond_351

    .line 9762
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v3, v14, v14, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9766
    :cond_351
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_39e

    .line 9767
    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mPendingDragResizing:Z

    if-eqz v3, :cond_385

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    .line 9768
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 9767
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v3

    if-nez v3, :cond_385

    .line 9773
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    .line 9774
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWinFrameInScreen:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 9773
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_39e

    .line 9775
    :cond_385
    invoke-static {}, Landroid/graphics/HardwareRenderer;->isDrawingEnabled()Z

    move-result v3

    if-nez v3, :cond_39e

    .line 9778
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 9782
    :cond_39e
    :goto_39e
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v3, :cond_3bd

    .line 9783
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 9784
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v3

    .line 9785
    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v4

    .line 9786
    invoke-direct {v0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 9785
    invoke-virtual {v3, v4, v5}, Landroid/view/contentcapture/ContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    .line 9789
    :cond_3bd
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3e4

    .line 9790
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->updateBlastSurfaceIfNeeded()V

    .line 9791
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v3, :cond_3d9

    .line 9792
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, v4, v5}, Landroid/view/ThreadedRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;)V

    .line 9794
    :cond_3d9
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {v3}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 9795
    if-eqz v2, :cond_400

    .line 9796
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->dispatchTransformHintChanged(I)V

    goto :goto_400

    .line 9799
    :cond_3e4
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_3fd

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->pause()Z

    move-result v1

    if-eqz v1, :cond_3fd

    .line 9800
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v1, v14, v14, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9802
    :cond_3fd
    invoke-direct {v0}, Landroid/view/ViewRootImpl;->destroySurface()V

    .line 9805
    :cond_400
    :goto_400
    if-eqz v13, :cond_405

    .line 9806
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 9809
    :cond_405
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v1, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v15}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;Z)V

    .line 9810
    return v7
.end method

.method public static blacklist removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .registers 3

    .line 1392
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1393
    :try_start_3
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1394
    monitor-exit v0

    .line 1395
    return-void

    .line 1394
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private greylist-max-o removeSendWindowContentChangedCallback()V
    .registers 3

    .line 11226
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_b

    .line 11227
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11229
    :cond_b
    return-void
.end method

.method private blacklist removeVrrMessages()V
    .registers 3

    .line 13749
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13750
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13751
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13752
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 13753
    const/4 v1, 0x0

    :try_start_19
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInvalidationIdleMessagePosted:Z

    .line 13754
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    .line 13755
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13756
    return-void

    .line 13754
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist reportDrawFinished(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 5455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportDrawFinished seqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 5457
    :try_start_16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_25
    .catchall {:try_start_16 .. :try_end_1d} :catchall_23

    .line 5464
    if-eqz p1, :cond_35

    .line 5465
    :goto_1f
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->clear()V

    goto :goto_35

    .line 5464
    :catchall_23
    move-exception p2

    goto :goto_36

    .line 5458
    :catch_25
    move-exception p2

    .line 5459
    :try_start_26
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "Unable to report draw finished"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5460
    if-eqz p1, :cond_32

    .line 5461
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_23

    .line 5464
    :cond_32
    if-eqz p1, :cond_35

    .line 5465
    goto :goto_1f

    .line 5468
    :cond_35
    :goto_35
    return-void

    .line 5464
    :goto_36
    if-eqz p1, :cond_3b

    .line 5465
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->clear()V

    .line 5467
    :cond_3b
    throw p2
.end method

.method private blacklist reportNextDraw(Ljava/lang/String;)V
    .registers 3

    .line 11787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 11788
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastReportNextDrawReason:Ljava/lang/String;

    .line 11789
    return-void
.end method

.method private greylist-max-o requestDrawWindow()V
    .registers 4

    .line 12178
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_5

    .line 12179
    return-void

    .line 12182
    :cond_5
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_16

    .line 12183
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 12185
    :cond_16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_30

    .line 12186
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    .line 12185
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 12188
    :cond_30
    return-void
.end method

.method private blacklist resumeAfterSyncTimeout()V
    .registers 4

    .line 13163
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timedout waiting to unpause for sync mNumPausedForSync="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13164
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    .line 13165
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 13166
    return-void
.end method

.method private blacklist safeguardOverlappingSyncs(Landroid/window/SurfaceSyncGroup;)V
    .registers 7

    .line 13126
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safeguard-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 13128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncGroup;->toggleTimeout(Z)V

    .line 13129
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguardLock:Ljava/lang/Object;

    monitor-enter v2

    .line 13130
    :try_start_21
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    if-eqz v3, :cond_3a

    .line 13131
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z

    .line 13136
    invoke-virtual {p1, v1}, Landroid/window/SurfaceSyncGroup;->toggleTimeout(Z)V

    .line 13137
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4, p1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;-><init>(Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {v1, v3, v4}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 13144
    :cond_3a
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousSyncSafeguard:Landroid/window/SurfaceSyncGroup;

    .line 13145
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_50

    .line 13147
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 13148
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda9;-><init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 13156
    invoke-virtual {p1, v1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 13157
    return-void

    .line 13145
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private greylist-max-o scheduleProcessInputEvents()V
    .registers 4

    .line 10629
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_17

    .line 10630
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 10631
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 10632
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 10633
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10635
    :cond_17
    return-void
.end method

.method private blacklist sendBackKeyEvent(IZ)Z
    .registers 16

    .line 12958
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 12959
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v11, 0x48

    const/16 v12, 0x101

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 12964
    const/4 p1, 0x0

    if-eqz p2, :cond_1a

    const/16 p2, 0x80

    goto :goto_1b

    :cond_1a
    move p2, p1

    .line 12965
    :goto_1b
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object p2

    .line 12967
    iget p2, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_28

    move p1, v2

    :cond_28
    return p1
.end method

.method private blacklist sendCheckInvalidationIdle()V
    .registers 5

    .line 4637
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4639
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4640
    :try_start_9
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mInvalidationIdleMessagePosted:Z

    .line 4641
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInvalidationIdleMessagePosted:Z

    .line 4642
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1b

    .line 4643
    if-nez v1, :cond_1e

    .line 4644
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x28

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e

    .line 4642
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 4647
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist setAccessibilityWindowAttributesIfNeeded()V
    .registers 5

    .line 1795
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1797
    :goto_a
    if-eqz v0, :cond_38

    .line 1798
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowAttributes;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1799
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityWindowAttributes;-><init>(Landroid/view/WindowManager$LayoutParams;Landroid/os/LocaleList;)V

    .line 1800
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityWindowAttributes:Landroid/view/accessibility/AccessibilityWindowAttributes;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1801
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityWindowAttributes:Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 1802
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/accessibility/AccessibilityManager;->setAccessibilityWindowAttributes(IILandroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 1807
    :cond_38
    return-void
.end method

.method private blacklist setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 2880
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->inset(IIII)V

    .line 2884
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->inset(IIII)V

    .line 2886
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2887
    return-void
.end method

.method private blacklist setCategoryFromCategoryCounts()V
    .registers 3

    .line 13312
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_32

    goto :goto_12

    .line 13319
    :pswitch_7
    iput v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    goto :goto_12

    .line 13317
    :pswitch_a
    iput v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    goto :goto_12

    .line 13315
    :pswitch_d
    iput v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    goto :goto_12

    .line 13313
    :pswitch_10
    iput v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    .line 13323
    :goto_12
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    if-lez v0, :cond_19

    .line 13324
    iput v1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    goto :goto_30

    .line 13325
    :cond_19
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    if-lez v0, :cond_21

    .line 13326
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    goto :goto_30

    .line 13327
    :cond_21
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    if-lez v0, :cond_29

    .line 13328
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    goto :goto_30

    .line 13329
    :cond_29
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryLowCount:I

    if-lez v0, :cond_30

    .line 13330
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    .line 13332
    :cond_30
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist setFrame(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 9853
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9854
    if-eqz p2, :cond_c

    .line 9855
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mLastLayoutFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9858
    :cond_c
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_15

    .line 9859
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    goto :goto_16

    :cond_15
    nop

    .line 9858
    :goto_16
    invoke-virtual {p2, p1}, Landroid/view/InsetsController;->onFrameChanged(Landroid/graphics/Rect;)V

    .line 9860
    return-void
.end method

.method private blacklist setMeasuredRootSizeFromSpec(II)Z
    .registers 6

    .line 3465
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3466
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3467
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1d

    if-eq v1, v2, :cond_f

    goto :goto_1d

    .line 3471
    :cond_f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewRootImpl;->mMeasuredWidth:I

    .line 3472
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewRootImpl;->mMeasuredHeight:I

    .line 3473
    const/4 p1, 0x1

    return p1

    .line 3469
    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist setPreferredFrameRate(F)V
    .registers 8

    .line 13422
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldSetFrameRate()Z

    move-result v0

    if-eqz v0, :cond_a6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_d

    goto/16 :goto_a6

    .line 13426
    :cond_d
    nop

    .line 13428
    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    :try_start_11
    iget v4, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1b

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    if-eqz v4, :cond_8c

    .line 13429
    :cond_1b
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    .line 13430
    if-eqz v3, :cond_43

    .line 13431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewRootImpl#setFrameRate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compatibility "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13436
    :cond_43
    cmpl-float v0, p1, v0

    if-lez v0, :cond_73

    .line 13437
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    invoke-virtual {v0, v4, p1, v5}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;

    .line 13439
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitFrameRateDebugFlagValue:Z

    if-eqz v0, :cond_85

    .line 13440
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### ViewRootImpl setFrameRate \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 13444
    :cond_73
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->clearFrameRate(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 13445
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitFrameRateDebugFlagValue:Z

    if-eqz v0, :cond_85

    .line 13446
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "### ViewRootImpl setFrameRate 0 Hz"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13449
    :cond_85
    :goto_85
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 13450
    iput p1, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8c} :catch_94
    .catchall {:try_start_11 .. :try_end_8c} :catchall_92

    .line 13455
    :cond_8c
    if-eqz v3, :cond_9f

    .line 13456
    :goto_8e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_9f

    .line 13455
    :catchall_92
    move-exception p1

    goto :goto_a0

    .line 13452
    :catch_94
    move-exception p1

    .line 13453
    :try_start_95
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "Unable to set frame rate"

    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_92

    .line 13455
    if-eqz v3, :cond_9f

    .line 13456
    goto :goto_8e

    .line 13459
    :cond_9f
    :goto_9f
    return-void

    .line 13455
    :goto_a0
    if-eqz v3, :cond_a5

    .line 13456
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 13458
    :cond_a5
    throw p1

    .line 13423
    :cond_a6
    :goto_a6
    return-void
.end method

.method private blacklist setPreferredFrameRateCategory(I)V
    .registers 12

    .line 13335
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldSetFrameRateCategory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13336
    return-void

    .line 13343
    :cond_7
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInsetsAnimationRunning:Z

    if-eqz v0, :cond_11

    goto :goto_26

    .line 13347
    :cond_11
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x4

    if-ge p1, v0, :cond_20

    .line 13348
    nop

    .line 13349
    nop

    .line 13350
    const/high16 p1, 0x9000000

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_2b

    .line 13352
    :cond_20
    nop

    .line 13353
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 13354
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryView:Ljava/lang/String;

    goto :goto_2b

    .line 13344
    :cond_26
    :goto_26
    nop

    .line 13345
    nop

    .line 13346
    const/4 p1, 0x5

    const/high16 v0, 0x8000000

    .line 13357
    :goto_2b
    nop

    .line 13359
    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    if-eqz p1, :cond_35

    :try_start_31
    iget v5, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I

    if-ne v5, p1, :cond_39

    :cond_35
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mSurfaceReplaced:Z

    if-eqz v5, :cond_b0

    .line 13362
    :cond_39
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_b8
    .catchall {:try_start_31 .. :try_end_3d} :catchall_b6

    .line 13363
    if-eqz v5, :cond_75

    .line 13364
    :try_start_3f
    invoke-static {v0}, Landroid/view/ViewRootImpl;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    .line 13365
    if-nez v1, :cond_47

    const-string v1, "-"

    .line 13366
    :cond_47
    invoke-static {p1}, Landroid/view/ViewRootImpl;->categoryToString(I)Ljava/lang/String;

    move-result-object v6

    .line 13367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewRootImpl#setFrameRateCategory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13372
    :cond_75
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 13373
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 13375
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitFrameRateDebugFlagValue:Z

    if-eqz v0, :cond_a6

    .line 13376
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### ViewRootImpl setFrameRateCategory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13377
    invoke-static {p1}, Landroid/view/ViewRootImpl;->categoryToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13376
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13379
    :cond_a6
    iput p1, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_a8} :catch_ad
    .catchall {:try_start_3f .. :try_end_a8} :catchall_aa

    move v2, v5

    goto :goto_b0

    .line 13384
    :catchall_aa
    move-exception p1

    move v2, v5

    goto :goto_c4

    .line 13381
    :catch_ad
    move-exception p1

    move v2, v5

    goto :goto_b9

    .line 13384
    :cond_b0
    :goto_b0
    if-eqz v2, :cond_c3

    .line 13385
    :goto_b2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_c3

    .line 13384
    :catchall_b6
    move-exception p1

    goto :goto_c4

    .line 13381
    :catch_b8
    move-exception p1

    .line 13382
    :goto_b9
    :try_start_b9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "Unable to set frame rate category"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_b6

    .line 13384
    if-eqz v2, :cond_c3

    .line 13385
    goto :goto_b2

    .line 13388
    :cond_c3
    :goto_c3
    return-void

    .line 13384
    :goto_c4
    if-eqz v2, :cond_c9

    .line 13385
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 13387
    :cond_c9
    throw p1
.end method

.method private greylist-max-o setTag()V
    .registers 4

    .line 1881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1882
    array-length v1, v0

    if-lez v1, :cond_33

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VRI["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 1885
    :cond_33
    return-void
.end method

.method private blacklist shouldDispatchCutout()Z
    .registers 4

    .line 3537
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_10
    return v2
.end method

.method private blacklist shouldEnableDvrr()Z
    .registers 3

    .line 13742
    sget-boolean v0, Landroid/view/ViewRootImpl;->sEnableVrr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 13743
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isFrameRatePowerSavingsBalanced()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 13745
    :cond_11
    return v1
.end method

.method private blacklist shouldKeepSystemApplicationOverlay(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5

    .line 2245
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->recordingOverlay()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2246
    return v1

    .line 2248
    :cond_8
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    move p1, v1

    .line 2250
    :goto_12
    if-nez p1, :cond_15

    .line 2251
    return v1

    .line 2254
    :cond_15
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1c

    .line 2255
    return v1

    .line 2258
    :cond_1c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->hasSystemApplicationOverlayAppOp()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2259
    return v1

    .line 2262
    :cond_23
    return v0
.end method

.method private static blacklist shouldOptimizeMeasure(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 1

    .line 3558
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist shouldSetFrameRate()Z
    .registers 3

    .line 13468
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateConflicted:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private blacklist shouldSetFrameRateCategory()Z
    .registers 2

    .line 13463
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist shouldTouchBoost(II)Z
    .registers 6

    .line 13474
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    move p1, v1

    goto :goto_8

    :cond_7
    move p1, v2

    .line 13475
    :goto_8
    const/16 v0, 0x7db

    if-ne p2, v0, :cond_e

    move p2, v1

    goto :goto_f

    :cond_e
    move p2, v2

    .line 13478
    :goto_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->toolkitFrameRateTouchBoost25q1()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 13479
    if-eqz p1, :cond_24

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getFrameRateBoostOnTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    .line 13482
    :cond_26
    if-eqz p1, :cond_37

    if-nez p2, :cond_37

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 13483
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getFrameRateBoostOnTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    .line 13482
    :goto_38
    return v1
.end method

.method private static greylist-max-o shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 3548
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f9

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_15

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7e4

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private blacklist showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 10423
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 10424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10425
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10426
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10427
    return-void
.end method

.method private blacklist startDragResizing()V
    .registers 4

    .line 12139
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_24

    .line 12140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 12141
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v1, :cond_22

    .line 12142
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_12
    if-ltz v1, :cond_22

    .line 12143
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart()V

    .line 12142
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 12146
    :cond_22
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 12148
    :cond_24
    return-void
.end method

.method private greylist-max-o trackFPS()V
    .registers 13

    .line 5405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5406
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_14

    .line 5407
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 5408
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_80

    .line 5410
    :cond_14
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 5411
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 5412
    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    .line 5413
    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    .line 5414
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\tFrame time:\t"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 5416
    const-wide/16 v4, 0x3e8

    cmp-long v4, v6, v4

    if-lez v4, :cond_80

    .line 5417
    iget v4, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    long-to-float v5, v6

    div-float/2addr v4, v5

    .line 5418
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\tFPS:\t"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 5420
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 5423
    :cond_80
    :goto_80
    return-void
.end method

.method private blacklist unregisterListeners()V
    .registers 4

    .line 1856
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1858
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighContrastTextStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;)V

    .line 1861
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1862
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1864
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1865
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    if-eqz v0, :cond_35

    .line 1866
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 1867
    if-eqz v0, :cond_32

    .line 1868
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    .line 1871
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mForceInvertStateChangeListener:Landroid/app/UiModeManager$ForceInvertStateChangeListener;

    .line 1875
    :cond_35
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    if-eqz v0, :cond_58

    .line 1876
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    :cond_58
    return-void
.end method

.method private blacklist updateBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 3

    .line 2894
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 2895
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V

    .line 2896
    const/4 p1, 0x1

    return p1

    .line 2898
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist updateColorModeIfNeeded(IF)V
    .registers 7

    .line 6585
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_7

    .line 6586
    return-void

    .line 6589
    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v1

    .line 6591
    :goto_13
    if-eqz v0, :cond_20

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->isHdrSdrRatioAvailable()Z

    move-result v3

    if-nez v3, :cond_20

    .line 6592
    nop

    .line 6593
    move p1, v1

    move v0, v2

    .line 6597
    :cond_20
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2e

    .line 6598
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 6599
    move p1, v2

    .line 6602
    :cond_2e
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl;->logColorMode(IZ)V

    .line 6604
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1, p1}, Landroid/view/ThreadedRenderer;->setColorMode(I)F

    move-result p1

    .line 6605
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_42

    cmpl-float v1, p2, p1

    if-lez v1, :cond_43

    .line 6606
    :cond_42
    move p2, p1

    .line 6609
    :cond_43
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {p1, v0, p2}, Landroid/view/HdrRenderState;->setDesiredHdrSdrRatio(ZF)V

    .line 6610
    return-void
.end method

.method private blacklist updateCompatSystemUiVisibilityInfo(IIII)V
    .registers 8

    .line 3202
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCompatibleVisibilityInfo:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 3203
    and-int/2addr p3, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_9

    move p3, v1

    goto :goto_a

    :cond_9
    move p3, v2

    .line 3204
    :goto_a
    and-int/2addr p2, p4

    if-eqz p2, :cond_f

    move p2, v1

    goto :goto_10

    :cond_f
    move p2, v2

    .line 3205
    :goto_10
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p4, p4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/2addr p4, p1

    if-eqz p4, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 3206
    :goto_19
    if-eqz p3, :cond_2b

    .line 3207
    iget p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    not-int p4, p1

    and-int/2addr p3, p4

    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3208
    if-eqz p2, :cond_36

    if-eqz v1, :cond_36

    .line 3210
    iget p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    or-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    goto :goto_36

    .line 3213
    :cond_2b
    iget p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    or-int/2addr p2, p1

    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3214
    iget p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 3216
    :cond_36
    :goto_36
    return-void
.end method

.method private greylist-max-o updateContentDrawBounds()Z
    .registers 10

    .line 12166
    nop

    .line 12167
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 12168
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move v3, v2

    :goto_f
    if-ltz v0, :cond_32

    .line 12169
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 12170
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowCallbacks;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v4

    or-int/2addr v3, v4

    .line 12168
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 12167
    :cond_31
    move v3, v2

    .line 12174
    :cond_32
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    or-int v0, v3, v1

    return v0
.end method

.method private blacklist updateDisplayDecoration()V
    .registers 4

    .line 12785
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 12786
    return-void
.end method

.method private blacklist updateForceDarkMode()V
    .registers 3

    .line 2125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_7

    return-void

    .line 2126
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->determineForceDarkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setForceDark(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2128
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->forceInvertColor()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2129
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyAndInvalidate()V

    goto :goto_24

    .line 2131
    :cond_1f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 2134
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist updateFrameRateFromThreadedRendererViews()V
    .registers 6

    .line 13290
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViewsCache:Ljava/util/ArrayList;

    .line 13291
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 13292
    :try_start_5
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13293
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_39

    .line 13294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_35

    .line 13295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 13296
    iget-object v3, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13297
    if-eqz v3, :cond_26

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eq v3, p0, :cond_22

    goto :goto_26

    .line 13302
    :cond_22
    invoke-virtual {v2}, Landroid/view/View;->votePreferredFrameRate()V

    goto :goto_2f

    .line 13298
    :cond_26
    :goto_26
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v3

    .line 13299
    :try_start_29
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13300
    monitor-exit v3

    .line 13294
    :goto_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 13300
    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_32

    throw v0

    .line 13305
    :cond_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13306
    return-void

    .line 13293
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method private blacklist updateInfrequentCount()V
    .registers 7

    .line 13767
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 13768
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mLastUpdateTimeMillis:J

    sub-long v2, v0, v2

    .line 13769
    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 13770
    iget v3, p0, Landroid/view/ViewRootImpl;->mMinusOneFrameIntervalMillis:I

    iput v3, p0, Landroid/view/ViewRootImpl;->mMinusTwoFrameIntervalMillis:I

    .line 13771
    iput v2, p0, Landroid/view/ViewRootImpl;->mMinusOneFrameIntervalMillis:I

    .line 13773
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mLastUpdateTimeMillis:J

    .line 13775
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 13776
    :try_start_1b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 13777
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3a

    .line 13778
    if-eqz v1, :cond_36

    iget v0, p0, Landroid/view/ViewRootImpl;->mMinusTwoFrameIntervalMillis:I

    add-int/2addr v2, v0

    const/16 v0, 0x64

    if-lt v2, v0, :cond_36

    .line 13780
    iget v0, p0, Landroid/view/ViewRootImpl;->mInfrequentUpdateCount:I

    .line 13781
    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 13782
    goto :goto_33

    :cond_31
    add-int/lit8 v0, v0, 0x1

    :goto_33
    iput v0, p0, Landroid/view/ViewRootImpl;->mInfrequentUpdateCount:I

    .line 13783
    goto :goto_39

    .line 13784
    :cond_36
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mInfrequentUpdateCount:I

    .line 13787
    :goto_39
    return-void

    .line 13777
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private blacklist updateInternalDisplay(ILandroid/content/res/Resources;)V
    .registers 5

    .line 2548
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    .line 2549
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {v1}, Landroid/view/HdrRenderState;->stopListening()V

    .line 2550
    if-nez v0, :cond_33

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get desired display with Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewRootImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p1

    .line 2554
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    goto :goto_35

    .line 2556
    :cond_33
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 2558
    :goto_35
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHdrRenderState:Landroid/view/HdrRenderState;

    invoke-virtual {p1}, Landroid/view/HdrRenderState;->startListening()V

    .line 2559
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->updateDisplay(I)V

    .line 2560
    return-void
.end method

.method private blacklist updateKeepClearForAccessibilityFocusRect()V
    .registers 5

    .line 6283
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->isPreferKeepClearForFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    .line 6285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 6287
    :cond_13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 6288
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 6289
    if-nez v0, :cond_20

    .line 6290
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6292
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x23

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6294
    :cond_2d
    return-void
.end method

.method private blacklist updateLastConfigurationFromResources(Landroid/content/res/Configuration;)V
    .registers 5

    .line 6857
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 6858
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 6859
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6861
    if-eq v0, v1, :cond_1f

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_1f

    iget p1, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 6863
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6865
    :cond_1f
    return-void
.end method

.method private blacklist updateOpacity(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .registers 5

    .line 9815
    nop

    .line 9817
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2d

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2d

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2d

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p1, :cond_2d

    if-nez p2, :cond_2d

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mCornerRadii:Landroid/view/ViewRootImpl$CornerRadii;

    .line 9827
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$CornerRadii;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 9828
    const/4 p1, 0x1

    goto :goto_2e

    .line 9831
    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-nez p3, :cond_35

    iget-boolean p2, p0, Landroid/view/ViewRootImpl;->mIsSurfaceOpaque:Z

    if-ne p2, p1, :cond_35

    .line 9832
    return-void

    .line 9835
    :cond_35
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p2, p2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 9836
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/view/ThreadedRenderer;->rendererOwnsSurfaceControlOpacity()Z

    move-result p3

    if-eqz p3, :cond_46

    .line 9837
    invoke-virtual {p2, p1}, Landroid/view/ThreadedRenderer;->setSurfaceControlOpaque(Z)Z

    move-result p1

    goto :goto_51

    .line 9839
    :cond_46
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 9842
    :goto_51
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsSurfaceOpaque:Z

    .line 9843
    return-void
.end method

.method private greylist-max-o updatePointerIcon(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 8492
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 8493
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 8494
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_15

    .line 8496
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "updatePointerIcon called after view was removed"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8497
    return v0

    .line 8499
    :cond_15
    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_8f

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gez v1, :cond_8f

    cmpg-float v1, v2, v3

    if-ltz v1, :cond_8f

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_35

    goto :goto_8f

    .line 8505
    :cond_35
    nop

    .line 8506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsStylusPointerIconEnabled:Z

    if-eqz v1, :cond_57

    .line 8507
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->disableHandwritingInitiatorForIme()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-eq v1, v2, :cond_57

    .line 8509
    :cond_4e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/view/HandwritingInitiator;->onResolvePointerIcon(Landroid/content/Context;Landroid/view/MotionEvent;)Landroid/view/PointerIcon;

    move-result-object v1

    goto :goto_58

    .line 8511
    :cond_57
    const/4 v1, 0x0

    :goto_58
    if-nez v1, :cond_60

    .line 8512
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 8514
    :cond_60
    const/4 v2, 0x1

    if-nez v1, :cond_6b

    .line 8515
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    move-object v4, v1

    goto :goto_6c

    .line 8514
    :cond_6b
    move-object v4, v1

    .line 8517
    :goto_6c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mResolvedPointerIcon:Landroid/view/PointerIcon;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 8518
    return v2

    .line 8520
    :cond_75
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mResolvedPointerIcon:Landroid/view/PointerIcon;

    .line 8522
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v3

    .line 8523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    .line 8524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v8

    .line 8523
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 8525
    return v2

    .line 8501
    :cond_8f
    :goto_8f
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "updatePointerIcon called with position out of bounds"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8502
    return v0
.end method

.method private blacklist updateSyncInProgressCount(Landroid/window/SurfaceSyncGroup;)V
    .registers 5

    .line 13237
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_7

    .line 13238
    return-void

    .line 13241
    :cond_7
    sget-object v0, Landroid/view/ViewRootImpl;->sSyncProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13242
    :try_start_a
    sget v1, Landroid/view/ViewRootImpl;->sNumSyncsInProgress:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/view/ViewRootImpl;->sNumSyncsInProgress:I

    if-nez v1, :cond_16

    .line 13243
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->setRtAnimationsEnabled(Z)V

    .line 13245
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_22

    .line 13247
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSimpleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 13254
    return-void

    .line 13245
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method


# virtual methods
.method public whitelist addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 3

    .line 12877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12878
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 12883
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12884
    return-void

    .line 12879
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to call addOnBufferTransformHintChangedListener() with a previously registered listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    .line 11603
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 11604
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    .line 11606
    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11607
    return-void
.end method

.method blacklist addSensitiveContentAppProtection()V
    .registers 2

    .line 4774
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->applySensitiveContentAppProtection(Z)V

    .line 4775
    return-void
.end method

.method public blacklist addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    .line 2783
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    return-void
.end method

.method public blacklist addThreadedRendererView(Landroid/view/View;)V
    .registers 4

    .line 13514
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 13515
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 13516
    :try_start_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 13517
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13519
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p1

    .line 13521
    :cond_1b
    :goto_1b
    return-void
.end method

.method blacklist addToSync(Landroid/window/SurfaceSyncGroup;)V
    .registers 4

    .line 13257
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-nez v0, :cond_5

    .line 13258
    return-void

    .line 13260
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/SurfaceSyncGroup;Ljava/lang/Runnable;)Z

    .line 13261
    return-void
.end method

.method public greylist-max-o addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3

    .line 1423
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    return-void
.end method

.method public blacklist adjustAccessibilityFocusedRectBoundsIfNeeded(Landroid/graphics/Rect;)V
    .registers 7

    .line 6175
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityFocusStrokeWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 6176
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v0, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v0, :cond_41

    .line 6177
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 6178
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 6179
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/lit8 v1, v1, -0x1

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 6180
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v0, v0, -0x1

    .line 6179
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 6182
    :cond_41
    return-void
.end method

.method public whitelist applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 6

    .line 12852
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHardwareEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2e

    .line 12856
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyTransactionOnDraw-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 12859
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 12860
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    goto :goto_36

    .line 12853
    :cond_2e
    :goto_2e
    const-string v0, "applyTransactionOnDraw applyImmediately"

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->logAndTrace(Ljava/lang/String;)V

    .line 12854
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 12862
    :goto_36
    return v1
.end method

.method blacklist applyViewBoundsSandboxingIfNeeded(Landroid/graphics/Rect;)V
    .registers 4

    .line 9917
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mViewBoundsSandboxingEnabled:Z

    if-eqz v0, :cond_17

    .line 9918
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 9919
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 9921
    :cond_17
    return-void
.end method

.method public blacklist applyViewLocationSandboxingIfNeeded([I)V
    .registers 6

    .line 9929
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mViewBoundsSandboxingEnabled:Z

    if-eqz v0, :cond_1e

    .line 9930
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 9931
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    aput v2, p1, v1

    .line 9932
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    aput v2, p1, v1

    .line 9934
    :cond_1e
    return-void
.end method

.method public whitelist bringChildToFront(Landroid/view/View;)V
    .registers 2

    .line 2993
    return-void
.end method

.method public whitelist buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    .line 12843
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 12844
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 12845
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    return-object p1

    .line 12847
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist canResolveLayoutDirection()Z
    .registers 2

    .line 11426
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canResolveTextAlignment()Z
    .registers 2

    .line 11456
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canResolveTextDirection()Z
    .registers 2

    .line 11441
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-r cancelInvalidate(Landroid/view/View;)V
    .registers 4

    .line 11069
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 11072
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 11073
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 11074
    return-void
.end method

.method greylist-max-o changeCanvasOpacity(Z)V
    .registers 5

    .line 11811
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11812
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    and-int/2addr p1, v0

    .line 11813
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_31

    .line 11814
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 11816
    :cond_31
    return-void
.end method

.method greylist-max-o checkThread()V
    .registers 5

    .line 11503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 11504
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    if-ne v1, v0, :cond_9

    .line 11510
    return-void

    .line 11505
    :cond_9
    new-instance v1, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only the original thread that created a view hierarchy can touch its views. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 11507
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Calling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11508
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 2

    .line 11266
    return-void
.end method

.method public whitelist childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 3

    .line 11546
    return-void
.end method

.method public whitelist clearChildFocus(Landroid/view/View;)V
    .registers 2

    .line 6626
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6627
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6628
    return-void
.end method

.method public blacklist clearSystemVibrator()V
    .registers 2

    .line 9584
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVibrator:Landroid/os/Vibrator;

    .line 9585
    return-void
.end method

.method public blacklist controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V
    .registers 14

    .line 3333
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    .line 3334
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3335
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_14

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    .line 3336
    :goto_15
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v3, :cond_21

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x63

    if-gt p1, v5, :cond_21

    move p1, v3

    goto :goto_22

    :cond_21
    move p1, v4

    .line 3338
    :goto_22
    iget v5, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_2d

    move v5, v3

    goto :goto_2e

    :cond_2d
    move v5, v4

    .line 3339
    :goto_2e
    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_3d

    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_3b

    if-eqz v2, :cond_3b

    if-eqz p1, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v7, v3

    .line 3341
    :goto_3e
    iget v8, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_49

    move v8, v3

    goto :goto_4a

    :cond_49
    move v8, v4

    .line 3342
    :goto_4a
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_50

    move v0, v3

    goto :goto_51

    :cond_50
    move v0, v4

    .line 3343
    :goto_51
    iget v9, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_5c

    move v9, v3

    goto :goto_5d

    :cond_5c
    move v9, v4

    .line 3344
    :goto_5d
    if-nez v6, :cond_69

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_68

    if-eqz v2, :cond_68

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v3, v4

    .line 3347
    :cond_69
    :goto_69
    nop

    .line 3348
    nop

    .line 3349
    if-eqz v7, :cond_78

    if-nez v5, :cond_78

    .line 3350
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    or-int/2addr p1, v4

    move v11, v4

    move v4, p1

    move p1, v11

    goto :goto_83

    .line 3351
    :cond_78
    if-nez v7, :cond_82

    if-eqz v5, :cond_82

    .line 3352
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    or-int/2addr p1, v4

    goto :goto_83

    .line 3354
    :cond_82
    move p1, v4

    :goto_83
    if-eqz v0, :cond_8d

    if-nez v8, :cond_8d

    .line 3355
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr v4, v0

    goto :goto_96

    .line 3356
    :cond_8d
    if-nez v0, :cond_96

    if-eqz v8, :cond_96

    .line 3357
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr p1, v0

    .line 3359
    :cond_96
    :goto_96
    if-eqz v3, :cond_a8

    if-nez v9, :cond_a8

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 3360
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3361
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    or-int/2addr v4, v0

    goto :goto_b9

    .line 3362
    :cond_a8
    if-nez v3, :cond_b9

    if-eqz v9, :cond_b9

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 3363
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 3364
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    or-int/2addr p1, v0

    .line 3366
    :cond_b9
    :goto_b9
    if-eqz v4, :cond_c2

    .line 3367
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/InsetsController;->hide(I)V

    .line 3369
    :cond_c2
    if-eqz p1, :cond_cb

    .line 3370
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsController;->show(I)V

    .line 3372
    :cond_cb
    iget v0, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    .line 3373
    iget v0, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewRootImpl;->mTypesHiddenByFlags:I

    .line 3374
    return-void
.end method

.method public blacklist createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 3

    .line 12813
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlurRegionAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2

    .line 11262
    return-void
.end method

.method public greylist-max-o debug()V
    .registers 2

    .line 10071
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 10072
    return-void
.end method

.method blacklist decorViewInterceptionChanged(Z)V
    .registers 4

    .line 6242
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 6244
    :try_start_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 6247
    goto :goto_12

    .line 6245
    :catch_c
    move-exception p1

    .line 6246
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 6249
    :cond_12
    :goto_12
    return-void
.end method

.method greylist-max-o destroyHardwareResources()V
    .registers 4

    .line 1927
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1928
    if-eqz v0, :cond_29

    .line 1930
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_21

    .line 1931
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1932
    return-void

    .line 1934
    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1935
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1937
    :cond_29
    return-void
.end method

.method public greylist-max-r detachFunctor(J)V
    .registers 3

    .line 1944
    return-void
.end method

.method public blacklist determineForceDarkType()I
    .registers 7

    .line 2066
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2070
    :try_start_8
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getNightMode()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v4

    .line 2071
    :goto_15
    const/16 v2, 0x117

    if-eqz v1, :cond_37

    .line 2072
    const-string v1, "debug.hwui.force_dark"

    .line 2073
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2074
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2075
    const/16 v5, 0x116

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4d

    if-eqz v1, :cond_2f

    move v1, v3

    goto :goto_30

    :cond_2f
    move v1, v4

    .line 2078
    :goto_30
    if-eqz v1, :cond_37

    .line 2079
    nop

    .line 2093
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2079
    return v3

    .line 2089
    :cond_37
    :try_start_37
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInputWindow()Z

    move-result v1

    if-nez v1, :cond_44

    .line 2090
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_45

    :cond_44
    move v3, v4

    .line 2091
    :goto_45
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->determineForceInvertDarkOverride(Z)I

    move-result v1
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_4d

    .line 2093
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2091
    return v1

    .line 2093
    :catchall_4d
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2094
    throw v1
.end method

.method greylist-max-o die(Z)Z
    .registers 4

    .line 10276
    if-eqz p1, :cond_b

    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez p1, :cond_b

    .line 10277
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 10278
    const/4 p1, 0x0

    return p1

    .line 10281
    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->removeVriSketchyDestroy()Z

    move-result p1

    if-nez p1, :cond_41

    .line 10282
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez p1, :cond_19

    .line 10283
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_41

    .line 10285
    :cond_19
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 10286
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10285
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10289
    :cond_41
    :goto_41
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 10290
    const/4 p1, 0x1

    return p1
.end method

.method greylist-max-o dipToPx(I)I
    .registers 3

    .line 3570
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3571
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public blacklist dispatchAppVisibility(ZI)V
    .registers 5

    .line 11128
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 11129
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 11130
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 11131
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11132
    return-void
.end method

.method public greylist-max-o dispatchApplyInsets(Landroid/view/View;)V
    .registers 6

    .line 3523
    const-string v0, "dispatchApplyInsets"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 3525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3526
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldDispatchCutout()Z

    move-result v3

    if-nez v3, :cond_19

    .line 3529
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    .line 3531
    :cond_19
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 3532
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View$AttachInfo;->delayNotifyContentCaptureInsetsEvent(Landroid/graphics/Insets;)V

    .line 3533
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3534
    return-void
.end method

.method public blacklist dispatchBlurRegions([[FJ)V
    .registers 6

    .line 12795
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 12796
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_b

    .line 12797
    return-void

    .line 12800
    :cond_b
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 12801
    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;

    .line 12803
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz p1, :cond_23

    .line 12804
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->onMergeWithNextTransaction(Ljava/lang/CharSequence;)V

    .line 12805
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p1, v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 12807
    :cond_23
    return-void
.end method

.method public greylist-max-o dispatchCheckFocus()V
    .registers 3

    .line 11188
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 11190
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 11192
    :cond_f
    return-void
.end method

.method public greylist-max-o dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4

    .line 11169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11170
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 11171
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11172
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11173
    return-void
.end method

.method public blacklist dispatchCompatFakeFocus()V
    .registers 6

    .line 4912
    nop

    .line 4913
    monitor-enter p0

    .line 4914
    :try_start_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 4915
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_60

    .line 4916
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 4917
    if-nez v0, :cond_5f

    if-eqz v3, :cond_19

    goto :goto_5f

    .line 4921
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Giving fake focus to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "reason=unity bug workaround"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0xf231

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4923
    invoke-direct {p0, v2, v2}, Landroid/view/ViewRootImpl;->dispatchFocusEvent(ZZ)V

    .line 4924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing fake focus from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "reason=timeout callback"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4926
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->dispatchFocusEvent(ZZ)V

    .line 4927
    return-void

    .line 4919
    :cond_5f
    :goto_5f
    return-void

    .line 4915
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method greylist-max-o dispatchDetachedFromWindow()V
    .registers 4

    .line 6673
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->onWindowFocusLost()V

    .line 6674
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 6675
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_21

    .line 6676
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 6677
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6680
    :cond_21
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 6681
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoDirectConnection()V

    .line 6682
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 6683
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/accessibility/Flags;->preventLeakingViewrootimpl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-eqz v0, :cond_40

    .line 6685
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController;->destroy()V

    .line 6686
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6689
    :cond_40
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 6691
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6693
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->cancelExistingAnimations()V

    .line 6695
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 6696
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 6697
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 6698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 6700
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    .line 6702
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_76

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_76

    .line 6703
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 6704
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->dispose()V

    .line 6705
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 6706
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 6709
    :cond_76
    :try_start_76
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_81} :catch_82

    .line 6711
    goto :goto_83

    .line 6710
    :catch_82
    move-exception v0

    .line 6715
    :goto_83
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_8e

    .line 6716
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 6717
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 6720
    :cond_8e
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->unregisterListeners()V

    .line 6721
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 6722
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 4

    .line 11177
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 11178
    nop

    .line 11179
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    goto :goto_12

    .line 11181
    :cond_10
    const/16 v1, 0xf

    .line 11183
    :goto_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11184
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11185
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .registers 3

    .line 11135
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 11136
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11137
    return-void
.end method

.method public greylist-max-r dispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    .line 11078
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 11079
    return-void
.end method

.method public greylist-max-r dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .registers 4

    .line 11083
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 11084
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 11085
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 11086
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11087
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11088
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11089
    return-void
.end method

.method public greylist-max-o dispatchInvalidateDelayed(Landroid/view/View;J)V
    .registers 6

    .line 11049
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11050
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11051
    return-void
.end method

.method public greylist-max-o dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .registers 3

    .line 11060
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 11061
    return-void
.end method

.method public greylist-max-o dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .registers 6

    .line 11055
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11056
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11057
    return-void
.end method

.method public greylist-max-o dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 3

    .line 11064
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 11065
    return-void
.end method

.method public greylist-max-o dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V
    .registers 4

    .line 11105
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11106
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11107
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11108
    return-void
.end method

.method public greylist dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .registers 4

    .line 11099
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11100
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11101
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11102
    return-void
.end method

.method public greylist-max-o dispatchMoved(II)V
    .registers 8

    .line 10438
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_1c

    .line 10439
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10440
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {p1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 10441
    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-double p1, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v1

    double-to-int p1, p1

    .line 10442
    iget p2, v0, Landroid/graphics/PointF;->y:F

    float-to-double v3, p2

    add-double/2addr v3, v1

    double-to-int p2, v3

    .line 10444
    :cond_1c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 10445
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10446
    return-void
.end method

.method public greylist-max-o dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    .line 11195
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11196
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11197
    return-void
.end method

.method public blacklist dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 4

    .line 11629
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11630
    return-void
.end method

.method public greylist dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    .line 11118
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 11119
    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 11121
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 11122
    return-void
.end method

.method public greylist-max-o dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 11825
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o dispatchWindowShown()V
    .registers 3

    .line 11165
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 11166
    return-void
.end method

.method blacklist doConsumeBatchedInput(J)Z
    .registers 4

    .line 10800
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_b

    .line 10801
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result p1

    goto :goto_c

    .line 10803
    :cond_b
    const/4 p1, 0x0

    .line 10805
    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 10806
    return p1
.end method

.method greylist-max-o doDie()V
    .registers 7

    .line 10294
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 10296
    monitor-enter p0

    .line 10297
    :try_start_4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_a

    .line 10298
    monitor-exit p0

    return-void

    .line 10300
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 10301
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->detachFromWindow()V

    .line 10302
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeVrrMessages()V

    .line 10304
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1c

    .line 10305
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 10308
    :cond_1c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 10310
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_58

    .line 10311
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_58

    .line 10312
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 10313
    iget v4, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v4, v1, :cond_39

    move v4, v0

    goto :goto_3a

    :cond_39
    move v4, v3

    .line 10314
    :goto_3a
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_78

    if-nez v5, :cond_40

    if-eqz v4, :cond_55

    .line 10319
    :cond_40
    :try_start_40
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v1, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_53

    .line 10321
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    const v4, 0x7fffffff

    invoke-interface {v0, v1, v2, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_53} :catch_54
    .catchall {:try_start_40 .. :try_end_53} :catchall_78

    .line 10325
    :cond_53
    goto :goto_55

    .line 10324
    :catch_54
    move-exception v0

    .line 10328
    :cond_55
    :goto_55
    :try_start_55
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    .line 10334
    :cond_58
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v0, v2}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    .line 10336
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 10337
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 10338
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_78

    .line 10339
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    const-string v4, "shutting down VRI"

    invoke-direct {p0, v0, v1, v2, v4}, Landroid/view/ViewRootImpl;->handleSyncRequestWhenNoAsyncDraw(Landroid/window/SurfaceSyncGroup;ZLandroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 10341
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mHasPendingTransactions:Z

    .line 10342
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    .line 10343
    return-void

    .line 10338
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method greylist-max-o doProcessInputEvents()V
    .registers 6

    .line 10639
    nop

    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v0, :cond_34

    .line 10640
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10641
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10642
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 10643
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10645
    :cond_12
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10647
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 10648
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v3, 0x4

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 10651
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    iget-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Landroid/view/InputEventAssigner;->processEvent(Landroid/view/InputEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewFrameInfo;->setInputEvent(I)V

    .line 10653
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 10654
    goto :goto_1

    .line 10658
    :cond_34
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_42

    .line 10659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 10660
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 10662
    :cond_42
    return-void
.end method

.method greylist-max-o doTraversal()V
    .registers 3

    .line 3124
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_11

    .line 3125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3126
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueue:Landroid/os/MessageQueue;

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 3127
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 3129
    :cond_11
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 10111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ViewRoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRemoved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPausedForTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mConsumeBatchedInputScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPendingInputEventCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mProcessInputEventsScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTraversalScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10125
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    const-string v2, ")"

    if-eqz v1, :cond_14b

    .line 10126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (barrier="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10128
    :cond_14b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mReportNextDraw="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10129
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_18b

    .line 10130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportNextDrawReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10132
    :cond_18b
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    if-eqz v1, :cond_1ab

    .line 10133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastPerformTraversalsFailedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastPerformTraversalsSkipDrawReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10136
    :cond_1ab
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    if-eqz v1, :cond_1cb

    .line 10137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastPerformDrawFailedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastPerformDrawSkippedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10140
    :cond_1cb
    iget v1, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroupState:I

    if-eqz v1, :cond_1eb

    .line 10141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWmsRequestSyncGroupState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroupState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10143
    :cond_1eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastReportedMergedConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastConfigurationFromResources="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10147
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v1, :cond_243

    .line 10148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastReportedActivityWindowInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10151
    :cond_243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsAmbientMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUnbufferedInputSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    .line 10153
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10152
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10154
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_29f

    .line 10155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAttachInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10156
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v0, p2}, Landroid/view/View$AttachInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_2b5

    .line 10158
    :cond_29f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAttachInfo=<null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10161
    :goto_2b5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10163
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_2c3

    .line 10164
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10167
    :cond_2c3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p2}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10169
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v1, p1, p2}, Landroid/view/InsetsController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10171
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-virtual {v1, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10173
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    invoke-virtual {v1, p1, p2}, Landroid/view/ImeBackAnimationController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 10175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "View Hierarchy:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10176
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 10177
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 10083
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 10084
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10085
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10086
    const-wide v0, 0x10800000003L

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10087
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10088
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10089
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10090
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10091
    const-wide v3, 0x10800000008L

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10092
    const-wide v3, 0x10800000009L

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10093
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v0, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10094
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide v3, 0x1090000000cL

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10095
    iget v0, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide v3, 0x1090000000dL

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10096
    const-wide v3, 0x1050000000eL

    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10097
    const-wide v3, 0x1050000000fL

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10098
    const-wide v3, 0x10800000010L

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10099
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-wide v3, 0x10b00000011L

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10100
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10101
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    const-wide v3, 0x10b00000004L

    invoke-virtual {p2, p1, v3, v4}, Landroid/view/InsetsController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10102
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/ImeFocusController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10103
    return-void
.end method

.method greylist enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .registers 7

    .line 10588
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object p2

    .line 10590
    instance-of p3, p1, Landroid/view/MotionEvent;

    const v0, 0xf232

    if-eqz p3, :cond_27

    .line 10591
    check-cast p1, Landroid/view/MotionEvent;

    .line 10592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_46

    .line 10593
    nop

    .line 10594
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Motion - Cancel"

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 10593
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_46

    .line 10596
    :cond_27
    instance-of p3, p1, Landroid/view/KeyEvent;

    if-eqz p3, :cond_46

    .line 10597
    check-cast p1, Landroid/view/KeyEvent;

    .line 10598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 10599
    nop

    .line 10600
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Key - Cancel"

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 10599
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_47

    .line 10596
    :cond_46
    :goto_46
    nop

    .line 10608
    :cond_47
    :goto_47
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10609
    if-nez p1, :cond_50

    .line 10610
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10611
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_54

    .line 10613
    :cond_50
    iput-object p2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10614
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10616
    :goto_54
    iget p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 10617
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget p3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p1, p3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 10620
    if-eqz p4, :cond_69

    .line 10621
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_6c

    .line 10623
    :cond_69
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    .line 10625
    :goto_6c
    return-object p2
.end method

.method public greylist-max-r enqueueInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    .line 10582
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 10583
    return-void
.end method

.method greylist-max-r ensureTouchMode(Z)Z
    .registers 4

    .line 7331
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 7333
    :cond_8
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mSendPerfHintOnTouch:Z

    if-eqz v0, :cond_1b

    .line 7334
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyExpensiveFrame()V

    .line 7339
    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 7340
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->setInTouchMode(ZI)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_2c

    .line 7343
    nop

    .line 7346
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result p1

    return p1

    .line 7341
    :catch_2c
    move-exception p1

    .line 7342
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist findOnBackInvokedDispatcherForChild(Landroid/view/View;Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 12927
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5

    .line 10052
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 10053
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 10054
    const/4 p1, 0x0

    return-object p1

    .line 10056
    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist focusableViewAvailable(Landroid/view/View;)V
    .registers 5

    .line 6637
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6638
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 6639
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6640
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_3b

    .line 6641
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3b

    .line 6647
    :cond_1d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 6648
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3b

    .line 6649
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 6650
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_3b

    .line 6651
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6652
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6657
    :cond_3b
    :goto_3b
    return-void
.end method

.method blacklist forceWmRelayout()V
    .registers 2

    .line 12910
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 12911
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 12912
    return-void
.end method

.method public blacklist getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    .line 12540
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-nez v0, :cond_b

    .line 12541
    new-instance v0, Landroid/view/AccessibilityEmbeddedConnection;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityEmbeddedConnection;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 12544
    :cond_b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method public greylist getAccessibilityFocusedHost()Landroid/view/View;
    .registers 2

    .line 6490
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public greylist getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 6501
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public greylist-max-o getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .registers 3

    .line 9610
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 9614
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_f

    .line 9615
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 9617
    :cond_f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    .line 9611
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBufferTransformHint()I
    .registers 2

    .line 12871
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransformHint:I

    return v0
.end method

.method public blacklist getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z
    .registers 11

    .line 2978
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, p4, :cond_33

    .line 2983
    new-instance p1, Landroid/graphics/RectF;

    iget p4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float p4, p4

    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2984
    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2987
    iget p3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p3, p1, Landroid/graphics/RectF;->right:F

    .line 2988
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 2987
    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p1

    return p1

    .line 2979
    :cond_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "child "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not the root view "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " managed by this ViewRootImpl"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 5

    .line 2967
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, p3, :cond_e

    .line 2972
    iget p1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget p3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    return p1

    .line 2968
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "child is not mine, honest!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .registers 2

    .line 13840
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method public blacklist getDirectAccessibilityConnectionId()I
    .registers 2

    .line 11236
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureDirectConnection()I

    move-result v0

    return v0
.end method

.method blacklist getDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 9881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9884
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->applyViewBoundsSandboxingIfNeeded(Landroid/graphics/Rect;)V

    .line 9885
    return-void
.end method

.method public greylist-max-o getDisplayId()I
    .registers 2

    .line 1893
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public blacklist getFrameRateBoostOnTouchEnabled()Z
    .registers 2

    .line 13694
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFrameRateBoostOnTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist getFrameRateCompatibility()I
    .registers 2

    .line 13677
    iget v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    return v0
.end method

.method blacklist getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;
    .registers 3

    .line 10242
    new-instance v0, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    .line 10243
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 10244
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->appendGfxInfo(Landroid/view/View;Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 10246
    :cond_e
    return-object v0
.end method

.method public blacklist getHandwritingInitiator()Landroid/view/HandwritingInitiator;
    .registers 2

    .line 1060
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandwritingInitiator:Landroid/view/HandwritingInitiator;

    return-object v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 1917
    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    return v0
.end method

.method greylist-max-o getHostVisibility()I
    .registers 2

    .line 2997
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v0, :cond_13

    .line 2998
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_15

    :cond_13
    const/16 v0, 0x8

    .line 2997
    :goto_15
    return v0
.end method

.method blacklist getHostVisibilityReason()Ljava/lang/String;
    .registers 2

    .line 3002
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 3003
    const-string v0, "mView is null"

    return-object v0

    .line 3005
    :cond_7
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-nez v0, :cond_12

    .line 3006
    const-string v0, "!mAppVisible && !mForceDecorViewVisibility"

    return-object v0

    .line 3008
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 3012
    const-string v0, ""

    return-object v0

    .line 3010
    :sswitch_1e
    const-string v0, "View.GONE"

    return-object v0

    .line 3011
    :sswitch_21
    const-string v0, "View.INVISIBLE"

    return-object v0

    .line 3009
    :sswitch_24
    const-string v0, "View.VISIBLE"

    return-object v0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_24
        0x4 -> :sswitch_21
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public blacklist getImeFocusController()Landroid/view/ImeFocusController;
    .registers 2

    .line 1030
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    return-object v0
.end method

.method public blacklist getInputToken()Landroid/os/IBinder;
    .registers 2

    .line 12198
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-nez v0, :cond_6

    .line 12199
    const/4 v0, 0x0

    return-object v0

    .line 12201
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 3

    .line 12210
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    .line 12211
    if-eqz v0, :cond_c

    .line 12215
    new-instance v1, Landroid/window/InputTransferToken;

    invoke-direct {v1, v0}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 12212
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getInputTransferToken for Window with no input channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInsetsController()Landroid/view/InsetsController;
    .registers 2

    .line 3544
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    return-object v0
.end method

.method public blacklist getIsFrameRateBoosting()Z
    .registers 2

    .line 13685
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    return v0
.end method

.method public blacklist getIsTouchBoosting()Z
    .registers 2

    .line 13669
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    return v0
.end method

.method public blacklist getLastClickToolType()I
    .registers 2

    .line 9517
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastClickToolType:I

    return v0
.end method

.method public blacklist getLastPreferredFrameRate()F
    .registers 2

    .line 13661
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    return v0
.end method

.method public blacklist getLastPreferredFrameRateCategory()I
    .registers 2

    .line 13645
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRateCategory:I

    return v0
.end method

.method public blacklist getLastTouchDeviceId()I
    .registers 2

    .line 9505
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchDeviceId:I

    return v0
.end method

.method public greylist getLastTouchPoint(Landroid/graphics/Point;)V
    .registers 3

    .line 9496
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 9497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 9498
    return-void
.end method

.method public blacklist getLastTouchPointerId()I
    .registers 2

    .line 9509
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPointerId:I

    return v0
.end method

.method public greylist-max-o getLastTouchSource()I
    .registers 2

    .line 9501
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 2

    .line 11436
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .line 2142
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public blacklist getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 2

    .line 12920
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOnBackInvokedDispatcher:Landroid/window/WindowOnBackInvokedDispatcher;

    return-object v0
.end method

.method public blacklist getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .registers 5

    .line 13170
    nop

    .line 13171
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    const/4 v1, 0x1

    if-nez v0, :cond_28

    .line 13172
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 13173
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda23;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v2}, Landroid/window/SurfaceSyncGroup;->setAddedToSyncListener(Ljava/lang/Runnable;)V

    .line 13194
    nop

    .line 13198
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda24;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v2, v3}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_29

    .line 13171
    :cond_28
    const/4 v0, 0x0

    .line 13207
    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateSurfaceSyncGroup isNew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 13222
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->isComplete()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 13223
    iget v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewRootImpl;->mNumPausedForSync:I

    .line 13224
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 13225
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8a

    .line 13228
    :cond_6c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active sync group is already completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 13229
    invoke-virtual {v2}, Landroid/window/SurfaceSyncGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13231
    :goto_8a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mActiveSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    return-object v0
.end method

.method public whitelist getParent()Landroid/view/ViewParent;
    .registers 2

    .line 2962
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getParentForAccessibility()Landroid/view/ViewParent;
    .registers 2

    .line 6632
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferredFrameRate()F
    .registers 3

    .line 13653
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    goto :goto_c

    :cond_a
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastPreferredFrameRate:F

    :goto_c
    return v0
.end method

.method public blacklist getPreferredFrameRateCategory()I
    .registers 2

    .line 13637
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    return v0
.end method

.method public blacklist getRootSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 6270
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->getRootRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScrollCaptureRequestTimeout()J
    .registers 3

    .line 11666
    iget-wide v0, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    return-wide v0
.end method

.method public blacklist getScrollY()I
    .registers 2

    .line 6482
    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    return v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 12191
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method blacklist getSurfaceSequenceId()I
    .registers 2

    .line 12822
    iget v0, p0, Landroid/view/ViewRootImpl;->mSurfaceSequenceId:I

    return v0
.end method

.method public whitelist getTextAlignment()I
    .registers 2

    .line 11466
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTextDirection()I
    .registers 2

    .line 11451
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1897
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getUpdatedFrameInfo()Landroid/graphics/FrameInfo;
    .registers 3

    .line 692
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 693
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v1, v0}, Landroid/view/ViewFrameInfo;->populateFrameInfo(Landroid/graphics/FrameInfo;)V

    .line 694
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v1}, Landroid/view/ViewFrameInfo;->reset()V

    .line 695
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventAssigner:Landroid/view/InputEventAssigner;

    invoke-virtual {v1}, Landroid/view/InputEventAssigner;->notifyFrameProcessed()V

    .line 696
    return-object v0
.end method

.method public greylist getView()Landroid/view/View;
    .registers 2

    .line 2138
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 1907
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    return v0
.end method

.method public greylist-max-r getWindowFlags()I
    .registers 2

    .line 1889
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method greylist-max-o getWindowInsets(Z)Landroid/view/WindowInsets;
    .registers 10

    .line 3497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_a5

    .line 3498
    :cond_6
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3499
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 3500
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3501
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v7

    .line 3499
    invoke-virtual/range {v0 .. v6}, Landroid/view/InsetsController;->calculateInsets(ZIIIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3505
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v1, :cond_5e

    .line 3506
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->toDiffString(Landroid/view/WindowInsets;)Ljava/lang/String;

    move-result-object v1

    .line 3507
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 3508
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowInsets changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    :cond_5e
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 3513
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3514
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3515
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3516
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3515
    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/view/InsetsController;->calculateVisibleInsets(IIII)Landroid/graphics/Insets;

    move-result-object p1

    .line 3517
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 3515
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3519
    :cond_a5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method blacklist getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .line 12994
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 12219
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method blacklist getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 5

    .line 9892
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9896
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 9897
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 9898
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 9899
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 9900
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9903
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->applyViewBoundsSandboxingIfNeeded(Landroid/graphics/Rect;)V

    .line 9904
    return-void
.end method

.method blacklist handleAppVisibility(ZI)V
    .registers 10

    .line 2287
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2288
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 2290
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 2288
    const-string v3, "%s visibilityChanged oldVisibility=%b newVisibility=%b seqId=%d mSeqId=%d"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 2292
    :cond_2b
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewRootImpl;->mSeqId:I

    .line 2293
    iget-boolean p2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq p2, p1, :cond_81

    .line 2294
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_41

    move p2, v1

    goto :goto_42

    :cond_41
    move p2, v0

    .line 2295
    :goto_42
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 2296
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result p1

    if-nez p1, :cond_4b

    move v0, v1

    .line 2298
    :cond_4b
    if-eq p2, v0, :cond_74

    .line 2299
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibilityChanged oldVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " newVisibility="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 2302
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2305
    :cond_74
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz p1, :cond_7c

    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez p1, :cond_81

    .line 2306
    :cond_7c
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 2311
    :cond_81
    return-void
.end method

.method public greylist-max-o handleDispatchWindowShown()V
    .registers 2

    .line 9472
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 9473
    return-void
.end method

.method greylist-max-o handleGetNewSurface()V
    .registers 2

    .line 2314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2315
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2316
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2317
    return-void
.end method

.method public blacklist handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 3

    .line 2420
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->onInsetsStateChanged(Landroid/view/InsetsState;)V

    .line 2421
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->onActiveControlsChanged(Landroid/view/InsetsSourceControl$Array;)V

    .line 2422
    return-void
.end method

.method public greylist-max-o handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 9

    .line 9476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9478
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 9479
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 9481
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 9482
    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, p2, :cond_29

    .line 9483
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyboardShortcutGroup;

    .line 9484
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/view/KeyboardShortcutGroup;->setPackageName(Ljava/lang/CharSequence;)V

    .line 9482
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 9487
    :cond_29
    const-string p2, "shortcuts_array"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9489
    :try_start_2e
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    .line 9491
    goto :goto_33

    .line 9490
    :catch_32
    move-exception p1

    .line 9492
    :goto_33
    return-void
.end method

.method public blacklist handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 9

    .line 11680
    new-instance v0, Landroid/view/ScrollCaptureSearchResults;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 11681
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V

    .line 11684
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V

    .line 11687
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 11688
    if-nez v1, :cond_43

    .line 11689
    new-instance v0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    .line 11690
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11691
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11692
    const-string v1, "The root view was null"

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 11694
    :try_start_32
    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 11697
    goto :goto_42

    .line 11695
    :catch_3a
    move-exception p1

    .line 11696
    const-string v0, "ViewRootImpl"

    const-string v1, "Failed to send scroll capture search result"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11698
    :goto_42
    return-void

    .line 11701
    :cond_43
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 11702
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11703
    invoke-virtual {p0, v1, v3, v2}, Landroid/view/ViewRootImpl;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 11704
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 11706
    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    .line 11707
    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureSearchResults;->setOnCompleteListener(Ljava/lang/Runnable;)V

    .line 11708
    invoke-virtual {v0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result p1

    if-nez p1, :cond_83

    .line 11709
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda3;-><init>(Landroid/view/ScrollCaptureSearchResults;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getScrollCaptureRequestTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11711
    :cond_83
    return-void
.end method

.method greylist-max-o hasPointerCapture()Z
    .registers 2

    .line 6556
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method public blacklist injectBackKeyEvents(Z)Z
    .registers 3

    .line 12953
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewRootImpl;->sendBackKeyEvent(IZ)Z

    .line 12954
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewRootImpl;->sendBackKeyEvent(IZ)Z

    move-result p1

    return p1
.end method

.method blacklist intermittentUpdateState()I
    .registers 3

    .line 13545
    iget v0, p0, Landroid/view/ViewRootImpl;->mMinusOneFrameIntervalMillis:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mMinusTwoFrameIntervalMillis:I

    add-int/2addr v0, v1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    .line 13547
    const/4 v0, 0x1

    return v0

    .line 13549
    :cond_b
    iget v0, p0, Landroid/view/ViewRootImpl;->mInfrequentUpdateCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 13550
    const/4 v0, 0x0

    return v0

    .line 13552
    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method greylist invalidate()V
    .registers 5

    .line 2658
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2659
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_11

    .line 2660
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2662
    :cond_11
    return-void
.end method

.method public whitelist invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 2676
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 2677
    return-void
.end method

.method public whitelist invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 5

    .line 2681
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2684
    const/4 p1, 0x0

    if-nez p2, :cond_a

    .line 2685
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 2686
    return-object p1

    .line 2687
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_15

    .line 2688
    return-object p1

    .line 2691
    :cond_15
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_42

    .line 2692
    :cond_1d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2693
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2694
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_2f

    .line 2695
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2697
    :cond_2f
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_38

    .line 2698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 2700
    :cond_38
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_42

    .line 2701
    const/4 v0, -0x1

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 2705
    :cond_42
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 2707
    return-object p1
.end method

.method greylist-max-o invalidateWorld(Landroid/view/View;)V
    .registers 4

    .line 2665
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2666
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 2667
    check-cast p1, Landroid/view/ViewGroup;

    .line 2668
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 2669
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 2668
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2672
    :cond_1a
    return-void
.end method

.method public blacklist isFrameRateConflicted()Z
    .registers 2

    .line 13737
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsFrameRateConflicted:Z

    return v0
.end method

.method public blacklist isFrameRatePowerSavingsBalanced()Z
    .registers 2

    .line 13725
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_b

    .line 13726
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFrameRatePowerSavingsBalanced()Z

    move-result v0

    return v0

    .line 13728
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isHandlingPointerEvent()Z
    .registers 2

    .line 8477
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    return v0
.end method

.method public blacklist isHardwareEnabled()Z
    .registers 2

    .line 5474
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method greylist-max-o isInLayout()Z
    .registers 2

    .line 5104
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public blacklist isInWMSRequestedSync()Z
    .registers 2

    .line 5481
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWmsRequestSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isLayoutDirectionResolved()Z
    .registers 2

    .line 11431
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isLayoutRequested()Z
    .registers 2

    .line 2642
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public whitelist isTextAlignmentResolved()Z
    .registers 2

    .line 11461
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isTextDirectionResolved()Z
    .registers 2

    .line 11446
    const/4 v0, 0x1

    return v0
.end method

.method blacklist keepClearRectsChanged(Z)V
    .registers 5

    .line 6297
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v0

    .line 6298
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    .line 6299
    invoke-virtual {v1}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v1

    .line 6301
    if-nez v0, :cond_12

    if-nez v1, :cond_12

    if-eqz p1, :cond_2d

    :cond_12
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_2d

    .line 6303
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    .line 6305
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 6306
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6308
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    .line 6311
    :cond_2d
    return-void
.end method

.method public whitelist keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5

    .line 10065
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 10066
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o loadSystemProperties()V
    .registers 3

    .line 10351
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$10;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$10;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 10375
    return-void
.end method

.method public blacklist mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 12830
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_13

    .line 12831
    if-eqz p1, :cond_d

    .line 12832
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->onMergeWithNextTransaction(Ljava/lang/CharSequence;)V

    .line 12834
    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_16

    .line 12836
    :cond_13
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 12838
    :goto_16
    return-void
.end method

.method public greylist-max-o notifyChildRebuilt()V
    .registers 4

    .line 1453
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 1454
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_12

    .line 1455
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1458
    :cond_12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1459
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 1461
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_34

    .line 1462
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1463
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 1464
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_37

    .line 1466
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1469
    :goto_37
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1470
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 1471
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_4c

    .line 1472
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 1478
    :cond_4c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->updateLastConfigurationFromResources(Landroid/content/res/Configuration;)V

    .line 1480
    const-string v0, "rebuilt"

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 1482
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_5f

    .line 1483
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    .line 1485
    :cond_5f
    return-void
.end method

.method public blacklist notifyImeVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    .line 10457
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x34

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 10460
    :try_start_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v2, p1, p2}, Landroid/view/IWindowSession;->notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 10465
    goto :goto_1c

    .line 10461
    :catch_11
    move-exception p1

    .line 10462
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 10464
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10466
    :goto_1c
    return-void
.end method

.method blacklist notifyInsetsChanged()V
    .registers 3

    .line 2592
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2593
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2596
    sget-boolean v0, Landroid/view/View;->sForceLayoutWhenInsetsChanged:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    .line 2599
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2604
    :cond_1d
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_24

    .line 2605
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2607
    :cond_24
    return-void
.end method

.method public blacklist notifyRendererForGpuLoadUp(Ljava/lang/String;)V
    .registers 3

    .line 3079
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    .line 3080
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->notifyRendererForGpuLoadUp(Ljava/lang/String;)I

    .line 3082
    :cond_d
    return-void
.end method

.method public blacklist notifyRendererOfExpensiveFrame()V
    .registers 3

    .line 3056
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_e

    .line 3057
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->notifyExpensiveFrameWithRateLimit(Ljava/lang/String;)I

    .line 3059
    :cond_e
    return-void
.end method

.method public blacklist notifyRendererOfExpensiveFrame(Ljava/lang/String;)V
    .registers 3

    .line 3067
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    .line 3068
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->notifyExpensiveFrameWithRateLimit(Ljava/lang/String;)I

    .line 3070
    :cond_d
    return-void
.end method

.method greylist-max-o notifyRendererOfFramePending()V
    .registers 2

    .line 3044
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    .line 3045
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    .line 3047
    :cond_d
    return-void
.end method

.method public whitelist notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 11421
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 11422
    return-void
.end method

.method public whitelist onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 2647
    sget-boolean p1, Landroid/view/ViewRootImpl;->sToolkitEnableInvalidateCheckThreadFlagValue:Z

    if-eqz p1, :cond_7

    .line 2648
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2650
    :cond_7
    iget p1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_10

    .line 2651
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2653
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 2654
    return-void
.end method

.method public blacklist onDescendantUnbufferedRequested()V
    .registers 2

    .line 12818
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mUnbufferedInputSource:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    .line 12819
    return-void
.end method

.method public greylist-max-o onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 4

    .line 2528
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 2529
    return-void

    .line 2534
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->updateInternalDisplay(ILandroid/content/res/Resources;)V

    .line 2535
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mImeFocusController:Landroid/view/ImeFocusController;

    invoke-virtual {p1}, Landroid/view/ImeFocusController;->onMovedToDisplay()V

    .line 2536
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p1, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2538
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 2539
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 11572
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 11577
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 11582
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    .line 11568
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 11564
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 11559
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 4

    .line 5354
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 5355
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_1f

    .line 5356
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 5357
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    .line 5356
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 5360
    :cond_1f
    return-void
.end method

.method public blacklist onPreDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 4

    .line 5346
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5347
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 5349
    :cond_17
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 5350
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 11550
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 11555
    return-void
.end method

.method public greylist-max-o onWindowTitleChanged()V
    .registers 3

    .line 9468
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 9469
    return-void
.end method

.method greylist-max-o outputDisplayList(Landroid/view/View;)V
    .registers 2

    .line 5366
    iget-object p1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->output()V

    .line 5367
    return-void
.end method

.method public blacklist performHapticFeedback(IIII)Z
    .registers 11

    .line 10024
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 10025
    const/4 p1, 0x0

    return p1

    .line 10028
    :cond_c
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getSystemVibrator()Landroid/os/Vibrator;

    move-result-object v0

    const-string v3, "ViewRootImpl#performHapticFeedback"

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->performHapticFeedback(IILjava/lang/String;II)V

    .line 10030
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIIII)V
    .registers 14

    .line 10038
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 10039
    return-void

    .line 10042
    :cond_b
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getSystemVibrator()Landroid/os/Vibrator;

    move-result-object v1

    const-string v5, "ViewRootImpl#performHapticFeedbackForInputDevice"

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/Vibrator;->performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V

    .line 10045
    return-void
.end method

.method public greylist-max-o playSoundEffect(I)V
    .registers 5

    .line 9971
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 9972
    return-void

    .line 9975
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 9978
    :try_start_e
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 9980
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFastScrollSoundEffectsEnabled:Z

    if-eqz v1, :cond_25

    .line 9981
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->isNavigationRepeat(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 9982
    nop

    .line 9983
    invoke-static {}, Landroid/view/SoundEffectConstants;->nextNavigationRepeatSoundEffectId()I

    move-result p1

    .line 9982
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 9984
    return-void

    .line 9987
    :cond_25
    packed-switch p1, :pswitch_data_88

    .line 10008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_44

    .line 9993
    :pswitch_2b
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 9994
    return-void

    .line 10001
    :pswitch_30
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 10002
    return-void

    .line 10005
    :pswitch_35
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 10006
    return-void

    .line 9997
    :pswitch_3a
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 9998
    return-void

    .line 9989
    :pswitch_3f
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 9990
    return-void

    .line 10008
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown effect id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not defined in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v1, Landroid/view/SoundEffectConstants;

    .line 10009
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_6b} :catch_6b

    .line 10011
    :catch_6b
    move-exception p1

    .line 10013
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10014
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10016
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
    .end packed-switch
.end method

.method greylist-max-o pokeDrawLockIfNeeded()V
    .registers 3

    .line 2564
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDisableDrawWakeLock:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_2c

    .line 2570
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 2573
    return-void

    .line 2575
    :cond_14
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_2b

    .line 2577
    :try_start_22
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 2580
    goto :goto_2b

    .line 2578
    :catch_2a
    move-exception v0

    .line 2582
    :cond_2b
    :goto_2b
    return-void

    .line 2568
    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist probablyHasInput()Z
    .registers 2

    .line 11591
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-nez v0, :cond_6

    .line 11592
    const/4 v0, 0x0

    return v0

    .line 11594
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->probablyHasInput()Z

    move-result v0

    return v0
.end method

.method public blacklist processRawInputEvent(Landroid/view/InputEvent;)V
    .registers 7

    .line 11023
    nop

    .line 11024
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

    if-eqz v0, :cond_1b

    .line 11025
    const-string v0, "processInputEventForCompatibility"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11027
    :try_start_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputCompatHandler:Landroid/view/input/InputEventCompatHandler;

    invoke-virtual {v0, p1}, Landroid/view/input/InputEventCompatHandler;->processInputEvent(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    .line 11029
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 11030
    goto :goto_1c

    .line 11029
    :catchall_16
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 11030
    throw p1

    .line 11024
    :cond_1b
    const/4 v0, 0x0

    .line 11032
    :goto_1c
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    .line 11033
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 11035
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_49

    .line 11037
    :cond_2c
    nop

    :goto_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_49

    .line 11038
    nop

    .line 11039
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 11038
    const/16 v4, 0x40

    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 11037
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 11044
    :cond_44
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 11046
    :cond_49
    :goto_49
    return-void
.end method

.method public whitelist recomputeViewAttributes(Landroid/view/View;)V
    .registers 3

    .line 6661
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6662
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 6663
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 6664
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez p1, :cond_13

    .line 6665
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6668
    :cond_13
    return-void
.end method

.method blacklist recordViewPercentage(F)V
    .registers 3

    .line 13714
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 13716
    :cond_7
    iget v0, p0, Landroid/view/ViewRootImpl;->mLargestChildPercentage:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/view/ViewRootImpl;->mLargestChildPercentage:F

    .line 13717
    return-void
.end method

.method public blacklist refreshPointerIcon()V
    .registers 3

    .line 8486
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8487
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 8488
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .registers 4

    .line 1957
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_e

    .line 1958
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_24

    .line 1960
    :cond_e
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 1961
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 1963
    :cond_1d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1965
    :goto_24
    return-void
.end method

.method public whitelist registerOnJankDataListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 4

    .line 12231
    new-instance v0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 12233
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->addOnJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 4

    .line 1984
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_12

    .line 1985
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v1, Landroid/view/ViewRootImpl$3;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 2002
    :cond_12
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 3

    .line 1971
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_d

    .line 1972
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1974
    :cond_d
    return-void
.end method

.method public whitelist removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 3

    .line 12889
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12890
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransformHintListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12891
    return-void
.end method

.method public blacklist removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 3

    .line 11615
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    if-eqz v0, :cond_14

    .line 11616
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11617
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 11618
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRootScrollCaptureCallbacks:Ljava/util/HashSet;

    .line 11621
    :cond_14
    return-void
.end method

.method blacklist removeSensitiveContentAppProtection()V
    .registers 4

    .line 4781
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->sensitiveContentPrematureProtectionRemovedFix()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4782
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->applySensitiveContentAppProtection(Z)V

    .line 4783
    return-void

    .line 4789
    :cond_b
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4790
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda7;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 4795
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4796
    return-void
.end method

.method public blacklist removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3

    .line 2787
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2788
    return-void
.end method

.method public blacklist removeThreadedRendererView(Landroid/view/View;)V
    .registers 4

    .line 13529
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->shouldEnableDvrr()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 13530
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 13531
    :try_start_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThreadedRendererViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13532
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 13533
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendCheckInvalidationIdle()V

    goto :goto_16

    .line 13532
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1

    .line 13535
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3

    .line 1427
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1428
    return-void
.end method

.method public greylist-max-o reportDrawFinish()V
    .registers 2

    .line 1431
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_9

    .line 1432
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1434
    :cond_9
    return-void
.end method

.method blacklist reportKeepClearAreasChanged()V
    .registers 5

    .line 6314
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_3e

    .line 6317
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasPendingKeepClearAreaChange:Z

    .line 6319
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->getLastComputedRects()Ljava/util/List;

    move-result-object v0

    .line 6320
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    .line 6321
    invoke-virtual {v1}, Landroid/view/ViewRootRectTracker;->getLastComputedRects()Ljava/util/List;

    move-result-object v1

    .line 6323
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 6324
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 6325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6326
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 6330
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3, v0, v1}, Landroid/view/IWindowSession;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_38

    .line 6334
    nop

    .line 6335
    return-void

    .line 6332
    :catch_38
    move-exception v0

    .line 6333
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 6315
    :cond_3e
    :goto_3e
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 6617
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6618
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6619
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 11519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewRootImpl;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;ZI)Z

    move-result p1

    return p1
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;ZI)Z
    .registers 7

    .line 11526
    if-nez p2, :cond_8

    .line 11527
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1

    .line 11529
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 11530
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 11529
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 11531
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result p1

    .line 11532
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11533
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 11534
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p3, p3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 11536
    :try_start_3c
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {p2, p3, v0, p4}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_46

    .line 11539
    goto :goto_47

    .line 11537
    :catch_46
    move-exception p2

    .line 11540
    :goto_47
    return p1
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 11515
    return-void
.end method

.method public whitelist requestFitSystemWindows()V
    .registers 2

    .line 2586
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2587
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2588
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2589
    return-void
.end method

.method public greylist-max-o requestInvalidateRootRenderNode()V
    .registers 2

    .line 6342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 6343
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 2633
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_d

    .line 2634
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2636
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2638
    :cond_d
    return-void
.end method

.method greylist-max-o requestLayoutDuringLayout(Landroid/view/View;)Z
    .registers 4

    .line 5130
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_a

    goto :goto_1e

    .line 5134
    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 5135
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5137
    :cond_17
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez p1, :cond_1c

    .line 5140
    return v1

    .line 5144
    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 5132
    :cond_1e
    :goto_1e
    return v1
.end method

.method blacklist requestPointerCapture(I)V
    .registers 5

    .line 6560
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    .line 6561
    if-nez v0, :cond_e

    .line 6562
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v0, "No input channel to request Pointer Capture."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    return-void

    .line 6565
    :cond_e
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 6566
    if-nez v1, :cond_22

    .line 6567
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v0, "Missing InputManager; cannot request pointer capture."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6568
    return-void

    .line 6570
    :cond_22
    invoke-virtual {v1, v0, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;I)V

    .line 6571
    return-void
.end method

.method public whitelist requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 11270
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_60

    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez p1, :cond_60

    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz p1, :cond_d

    goto :goto_60

    .line 11275
    :cond_d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-object p1, p1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz p1, :cond_24

    .line 11278
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    .line 11283
    :cond_24
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    .line 11284
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->getSourceForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/View;

    move-result-object v0

    .line 11285
    sparse-switch p1, :sswitch_data_62

    goto :goto_59

    .line 11299
    :sswitch_30
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 11300
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_59

    .line 11287
    :sswitch_3d
    if-eqz v0, :cond_59

    .line 11288
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    .line 11289
    if-eqz p1, :cond_55

    .line 11290
    nop

    .line 11291
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 11290
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 11293
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 11294
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 11296
    :cond_55
    goto :goto_59

    .line 11306
    :sswitch_56
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11309
    :cond_59
    :goto_59
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11310
    const/4 p1, 0x1

    return p1

    .line 11271
    :cond_60
    :goto_60
    const/4 p1, 0x0

    return p1

    :sswitch_data_62
    .sparse-switch
        0x800 -> :sswitch_56
        0x8000 -> :sswitch_3d
        0x10000 -> :sswitch_30
    .end sparse-switch
.end method

.method public greylist-max-o requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3

    .line 3030
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3031
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 3032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 3034
    :cond_17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3036
    :cond_1c
    return-void
.end method

.method public whitelist requestTransparentRegion(Landroid/view/View;)V
    .registers 3

    .line 5289
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 5290
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_8

    .line 5291
    return-void

    .line 5294
    :cond_8
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget p1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_1b

    .line 5295
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5298
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 5302
    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 5303
    return-void
.end method

.method public greylist-max-o requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    .line 10346
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10347
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10348
    return-void
.end method

.method greylist-max-o scheduleConsumeBatchedInput()V
    .registers 5

    .line 10772
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_21

    .line 10773
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 10774
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10776
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_21

    .line 10777
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyCallbackPending()V

    .line 10780
    :cond_21
    return-void
.end method

.method greylist-max-o scheduleConsumeBatchedInputImmediately()V
    .registers 3

    .line 10791
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_11

    .line 10792
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 10793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 10794
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 10796
    :cond_11
    return-void
.end method

.method greylist-max-r scheduleTraversals()V
    .registers 5

    .line 3086
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1e

    .line 3087
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3106
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 3107
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 3109
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 3110
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 3112
    :cond_1e
    return-void
.end method

.method greylist-max-o scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 9

    .line 6346
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    invoke-virtual {v0}, Landroid/view/ImeBackAnimationController;->isAnimationInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 6349
    return v1

    .line 6352
    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 6353
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 6354
    nop

    .line 6355
    nop

    .line 6357
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_31

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_31

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_31

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_2d

    goto :goto_31

    :cond_2d
    move p1, v1

    move v0, p1

    goto/16 :goto_d8

    .line 6363
    :cond_31
    :goto_31
    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 6370
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 6371
    if-nez v3, :cond_3c

    .line 6372
    return v1

    .line 6374
    :cond_3c
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_4b

    :cond_4a
    move-object v4, v5

    .line 6375
    :goto_4b
    if-eq v3, v4, :cond_4e

    .line 6379
    move-object p1, v5

    .line 6384
    :cond_4e
    if-ne v3, v4, :cond_58

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v4, :cond_58

    if-nez p1, :cond_58

    goto/16 :goto_d7

    .line 6394
    :cond_58
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 6395
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 6398
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 6403
    if-nez p1, :cond_80

    .line 6404
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 6407
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_85

    .line 6408
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_85

    .line 6416
    :cond_80
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6422
    :cond_85
    :goto_85
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 6426
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 6427
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_a4

    goto :goto_d5

    .line 6438
    :cond_a4
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_b5

    .line 6439
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    move v0, p1

    goto :goto_d5

    .line 6442
    :cond_b5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_d4

    .line 6443
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    move v0, p1

    goto :goto_d5

    .line 6447
    :cond_d4
    move v0, v1

    .line 6449
    :goto_d5
    const/4 p1, 0x1

    goto :goto_d8

    .line 6455
    :cond_d7
    :goto_d7
    move p1, v1

    :goto_d8
    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v0, v2, :cond_106

    .line 6458
    if-nez p2, :cond_fb

    .line 6459
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez p2, :cond_ef

    .line 6460
    new-instance p2, Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 6462
    :cond_ef
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v3, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v3, v0, v3

    invoke-virtual {p2, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_104

    .line 6463
    :cond_fb
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_104

    .line 6464
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6466
    :cond_104
    :goto_104
    iput v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 6469
    :cond_106
    return p1
.end method

.method greylist-max-o setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10

    .line 6507
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v1, 0x40

    if-eqz v0, :cond_33

    .line 6509
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6510
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6517
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6518
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6522
    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 6525
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    .line 6526
    if-eqz v4, :cond_30

    .line 6528
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 6529
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 6531
    nop

    .line 6532
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 6531
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    .line 6533
    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 6536
    :cond_30
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 6538
    :cond_33
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eq v0, p1, :cond_40

    .line 6540
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 6545
    :cond_40
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6546
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6547
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateKeepClearForAccessibilityFocusRect()V

    .line 6549
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 6550
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAccessibilityFocusDirty()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 6551
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6553
    :cond_53
    return-void
.end method

.method public greylist-max-o setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 2

    .line 1402
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 1403
    if-nez p1, :cond_a

    .line 1404
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 1405
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    goto :goto_18

    .line 1407
    :cond_a
    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 1408
    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 1410
    :goto_18
    return-void
.end method

.method blacklist setBackKeyCallbackForWindowlessWindow(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .line 13710
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mWindowlessBackKeyCallback:Ljava/util/function/Predicate;

    .line 13711
    return-void
.end method

.method public whitelist setChildBoundingInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 13265
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1c

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1c

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1c

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v0, :cond_1c

    .line 13268
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13269
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mChildBoundingInsetsChanged:Z

    .line 13270
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 13271
    return-void

    .line 13266
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative insets passed to setChildBoundingInsets."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setDisplayDecoration(Z)V
    .registers 3

    .line 12775
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 12777
    :cond_5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDisplayDecorationCached:Z

    .line 12779
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 12780
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateDisplayDecoration()V

    .line 12782
    :cond_12
    return-void
.end method

.method public greylist-max-o setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .registers 8

    .line 9521
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_34

    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-nez v0, :cond_34

    .line 9524
    iget v0, p2, Landroid/view/DragEvent;->mX:F

    .line 9525
    iget v1, p2, Landroid/view/DragEvent;->mY:F

    .line 9526
    iget v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 9527
    iget-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 9529
    const/4 v4, 0x0

    iput v4, p2, Landroid/view/DragEvent;->mX:F

    .line 9530
    iput v4, p2, Landroid/view/DragEvent;->mY:F

    .line 9531
    const/4 v4, 0x0

    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 9533
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_24

    .line 9534
    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 9535
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 9538
    :cond_24
    if-eqz p1, :cond_2c

    .line 9539
    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 9540
    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 9543
    :cond_2c
    iput v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 9544
    iput v0, p2, Landroid/view/DragEvent;->mX:F

    .line 9545
    iput v1, p2, Landroid/view/DragEvent;->mY:F

    .line 9546
    iput-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 9549
    :cond_34
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 9550
    return-void
.end method

.method blacklist setDragStartedViewForAccessibility(Landroid/view/View;)V
    .registers 3

    .line 9554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    if-nez v0, :cond_6

    .line 9555
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mStartedDragViewForA11y:Landroid/view/View;

    .line 9557
    :cond_6
    return-void
.end method

.method public greylist-max-o setIsAmbientMode(Z)V
    .registers 2

    .line 2730
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 2731
    return-void
.end method

.method public greylist-max-o setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 19

    .line 2147
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 2148
    :try_start_5
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2149
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2150
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 2151
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 2152
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2153
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 2162
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v8, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 2165
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2166
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2169
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v10, Landroid/view/InsetsFlags;->appearance:I

    .line 2170
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v11, v11, Landroid/view/InsetsFlags;->behavior:I

    .line 2173
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewRootImpl;->adjustLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    .line 2178
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v13, v0}, Landroid/view/ViewRootImpl;->shouldKeepSystemApplicationOverlay(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 2179
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2182
    :cond_4f
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v13, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v13

    .line 2183
    const/high16 v14, 0x80000

    and-int/2addr v14, v13

    const/4 v15, 0x1

    if-eqz v14, :cond_5f

    .line 2185
    iget-object v14, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2187
    :cond_5f
    and-int/lit8 v14, v13, 0x1

    if-eqz v14, :cond_67

    .line 2189
    iget-object v14, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v14, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 2191
    :cond_67
    const/high16 v14, 0x4000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_6f

    .line 2192
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 2194
    :cond_6f
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v13, :cond_7b

    .line 2195
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2199
    :cond_7b
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2202
    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v8, v12, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2203
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2204
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v10, v8, Landroid/view/InsetsFlags;->appearance:I

    .line 2205
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v11, v8, Landroid/view/InsetsFlags;->behavior:I

    .line 2207
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v8, v8, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v8, :cond_a3

    .line 2209
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2211
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v7, v2, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    goto :goto_c5

    .line 2212
    :cond_a3
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v2, :cond_c3

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_c3

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, v4, :cond_c3

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v5, :cond_c5

    .line 2216
    :cond_c3
    iput-boolean v15, v1, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 2219
    :cond_c5
    :goto_c5
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 2221
    if-eqz p2, :cond_d3

    .line 2222
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 2223
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2227
    :cond_d3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_e6

    .line 2229
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0xf1

    and-int/lit16 v3, v6, 0xf0

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2233
    :cond_e6
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, v6, :cond_ef

    .line 2234
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestFitSystemWindows()V

    .line 2237
    :cond_ef
    iput-boolean v15, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 2238
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2239
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->setAccessibilityWindowAttributesIfNeeded()V

    .line 2240
    monitor-exit p0

    .line 2241
    return-void

    .line 2240
    :catchall_f9
    move-exception v0

    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_5 .. :try_end_fb} :catchall_f9

    throw v0
.end method

.method greylist-max-r setLocalDragState(Ljava/lang/Object;)V
    .registers 2

    .line 9343
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 9344
    return-void
.end method

.method public blacklist setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V
    .registers 3

    .line 1413
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v0, Landroid/view/View$AttachInfo;->mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 1417
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez p1, :cond_b

    .line 1418
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestFitSystemWindows()V

    .line 1420
    :cond_b
    return-void
.end method

.method blacklist setOverrideInsetsFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 9872
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    .line 9873
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mOverrideInsetsFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->onFrameChanged(Landroid/graphics/Rect;)V

    .line 9874
    return-void
.end method

.method public greylist-max-o setPausedForTransition(Z)V
    .registers 2

    .line 2957
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 2958
    return-void
.end method

.method public blacklist setReportNextDraw(ZLjava/lang/String;)V
    .registers 3

    .line 11805
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mSyncBuffer:Z

    .line 11806
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->reportNextDraw(Ljava/lang/String;)V

    .line 11807
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 11808
    return-void
.end method

.method public blacklist setRootSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 6256
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceChangedExclusionRectsMsgs()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    .line 6257
    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->isWaitingForComputeChanges()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 6258
    :goto_11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v1, p1}, Landroid/view/ViewRootRectTracker;->setRootRects(Ljava/util/List;)V

    .line 6259
    if-nez v0, :cond_1f

    .line 6260
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6262
    :cond_1f
    return-void
.end method

.method public blacklist setScrollCaptureRequestTimeout(I)V
    .registers 4

    .line 11657
    int-to-long v0, p1

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mScrollCaptureRequestTimeout:J

    .line 11658
    return-void
.end method

.method public blacklist setScrollY(I)V
    .registers 3

    .line 6474
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_9

    .line 6475
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6477
    :cond_9
    iput p1, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 6478
    return-void
.end method

.method public whitelist setTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 12984
    if-eqz p1, :cond_a

    .line 12985
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    goto :goto_d

    .line 12987
    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mTouchableRegion:Landroid/graphics/Region;

    .line 12989
    :goto_d
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 12990
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 12991
    return-void
.end method

.method public greylist-max-o setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 5

    .line 1505
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V

    .line 1506
    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V
    .registers 27

    .line 1513
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1514
    :try_start_5
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_52b

    .line 1515
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1517
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 1518
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v2, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 1519
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1520
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1521
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1524
    :cond_2b
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1525
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->setTag()V

    .line 1526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mFpsTraceName:Ljava/lang/String;

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Largest view percentage(per hundred) of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mLargestViewTraceName:Ljava/lang/String;

    .line 1535
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 1537
    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->adjustLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    .line 1538
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1540
    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v5, 0x0

    if-eqz v4, :cond_92

    .line 1541
    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1542
    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 1543
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_92

    .line 1544
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v4, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1545
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 1546
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1552
    :cond_92
    iget-boolean v4, v2, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v6, 0x1

    if-nez v4, :cond_9a

    .line 1553
    invoke-virtual {v2, v0, v5, v6}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1556
    :cond_9a
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 1557
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 1558
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1561
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_c3

    .line 1564
    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 1565
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_b9

    move v4, v6

    goto :goto_ba

    :cond_b9
    move v4, v5

    .line 1567
    :goto_ba
    iget-boolean v7, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eq v7, v4, :cond_c3

    .line 1570
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 1571
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    .line 1575
    :cond_c3
    nop

    .line 1576
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_da

    .line 1577
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v7}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1578
    nop

    .line 1579
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 1580
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move v4, v6

    goto :goto_db

    .line 1576
    :cond_da
    move v4, v5

    .line 1584
    :goto_db
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 1585
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1586
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v7, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1587
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_ed

    move v8, v6

    goto :goto_ee

    :cond_ed
    move v8, v5

    :goto_ee
    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 1588
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1589
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v8, :cond_fa

    move v8, v9

    goto :goto_fe

    :cond_fa
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v8, v8, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_fe
    iput v8, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1590
    if-eqz p3, :cond_10a

    .line 1591
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 1599
    :cond_10a
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1600
    nop

    .line 1601
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/2addr v7, v6

    if-nez v7, :cond_11d

    .line 1603
    new-instance v7, Landroid/view/InputChannel;

    invoke-direct {v7}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v17, v7

    goto :goto_11f

    .line 1601
    :cond_11d
    move-object/from16 v17, v3

    .line 1605
    :goto_11f
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_129

    move v7, v6

    goto :goto_12a

    :cond_129
    move v7, v5

    :goto_12a
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 1608
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v7, :cond_141

    .line 1609
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1610
    invoke-interface {v7}, Lcom/android/internal/view/RootViewSurfaceTaker;->providePendingInsetsController()Landroid/view/PendingInsetsController;

    move-result-object v7

    .line 1611
    if-eqz v7, :cond_141

    .line 1612
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v7, v8}, Landroid/view/PendingInsetsController;->replayAndAttach(Landroid/view/InsetsController;)V

    .line 1615
    :cond_141
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/internal/policy/DecorView;

    if-eqz v7, :cond_14f

    .line 1616
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1621
    :cond_14f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->recordingOverlay()Z

    move-result v7

    if-eqz v7, :cond_16b

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7f6

    if-ne v7, v8, :cond_16b

    .line 1623
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->hasSystemApplicationOverlayAppOp()Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 1624
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1627
    :cond_16b
    new-instance v7, Landroid/view/WindowRelayoutResult;

    new-instance v8, Landroid/window/ClientWindowFrames;

    invoke-direct {v8}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v10, Landroid/util/MergedConfiguration;

    invoke-direct {v10}, Landroid/util/MergedConfiguration;-><init>()V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    new-instance v12, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v12}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_181
    .catchall {:try_start_5 .. :try_end_181} :catchall_52d

    .line 1631
    :try_start_181
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v8, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 1632
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1633
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 1634
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 1635
    invoke-virtual {v10}, Landroid/view/InsetsController;->getAppearanceControlled()I

    move-result v10

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 1636
    invoke-virtual {v11}, Landroid/view/InsetsController;->isBehaviorControlled()Z

    move-result v11

    .line 1634
    invoke-static {v8, v10, v11}, Landroid/view/ViewRootImpl;->adjustLayoutParamsForCompatibility(Landroid/view/WindowManager$LayoutParams;IZ)V

    .line 1637
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v8}, Landroid/view/ViewRootImpl;->controlInsetsForCompatibility(Landroid/view/WindowManager$LayoutParams;)V

    .line 1639
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1640
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v13

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 1641
    invoke-virtual {v8}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v16

    .line 1639
    move/from16 v15, p4

    move-object/from16 v18, v7

    invoke-interface/range {v10 .. v18}, Landroid/view/IWindowSession;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result v7

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    .line 1642
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_1d3

    .line 1643
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v12, v8, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v12, v12, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 1646
    :cond_1d3
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v12, v8, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v12, v12, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iput-object v12, v11, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 1647
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v12, v8, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget v12, v12, Landroid/window/ClientWindowFrames;->compatScale:F

    iput v12, v11, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 1648
    iget-object v11, v8, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget v11, v11, Landroid/window/ClientWindowFrames;->compatScale:F

    div-float/2addr v9, v11

    iput v9, v1, Landroid/view/ViewRootImpl;->mInvCompatScale:F

    .line 1649
    iget v9, v8, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget v11, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    .line 1650
    const-wide/16 v11, 0x8

    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_21a

    .line 1651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " setView id="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v13, v1, Landroid/view/ViewRootImpl;->mSeqId:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12, v9}, Landroid/os/Trace;->instant(JLjava/lang/String;)V
    :try_end_21a
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_21a} :catch_50b
    .catch Ljava/lang/RuntimeException; {:try_start_181 .. :try_end_21a} :catch_50b
    .catchall {:try_start_181 .. :try_end_21a} :catchall_509

    .line 1661
    :cond_21a
    if-eqz v4, :cond_21f

    .line 1662
    :try_start_21c
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 1666
    :cond_21f
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTempInsets:Landroid/view/InsetsState;

    iget-object v8, v8, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v1, v4, v8}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 1667
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v13

    .line 1668
    iget-object v14, v1, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1669
    invoke-virtual {v13, v14}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 1670
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->getCompatWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    .line 1671
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1672
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v16

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInsetsController:Landroid/view/InsetsController;

    .line 1674
    invoke-virtual {v4}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v19

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 1671
    const/16 v17, -0x1

    const/16 v18, -0x1

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v21, v4

    invoke-virtual/range {v11 .. v21}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 1676
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v1, v4, v6}, Landroid/view/ViewRootImpl;->setFrame(Landroid/graphics/Rect;Z)V

    .line 1677
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->registerBackCallbackOnWindow()V

    .line 1679
    if-gez v7, :cond_3dc

    .line 1680
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1681
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v3}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 1682
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 1683
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1684
    packed-switch v7, :pswitch_data_530

    .line 1725
    new-instance v0, Ljava/lang/RuntimeException;

    goto/16 :goto_3c5

    .line 1687
    :pswitch_276
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :pswitch_297
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :pswitch_2b8
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- app for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1699
    :pswitch_2d9
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :pswitch_2fa
    monitor-exit p0

    return-void

    .line 1707
    :pswitch_2fc
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :pswitch_32b
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for window type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1715
    :pswitch_354
    new-instance v0, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- the specified display can not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1718
    :pswitch_375
    new-instance v0, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- the specified window type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1722
    :pswitch_3a4
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- requested userId is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1725
    :goto_3c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1729
    :cond_3dc
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->registerListeners()V

    .line 1732
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    iput v4, v3, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1733
    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    if-eqz v3, :cond_41a

    .line 1734
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") Initial DisplayState: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    :cond_41a
    instance-of v3, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_427

    .line 1739
    move-object v3, v0

    check-cast v3, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1740
    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v3

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 1742
    :cond_427
    if-eqz v10, :cond_450

    .line 1743
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v3, :cond_43b

    .line 1744
    new-instance v3, Landroid/view/InputQueue;

    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 1745
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v3, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 1747
    :cond_43b
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 1748
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-direct {v3, v1, v10, v4, v8}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/graphics/HardwareRenderer;)V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 1751
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mUnbufferedInputSource:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mUnbufferedInputSource:I

    .line 1754
    :cond_450
    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 1755
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_459

    move v3, v6

    goto :goto_45a

    :cond_459
    move v3, v5

    :goto_45a
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 1756
    and-int/lit8 v3, v7, 0x2

    if-eqz v3, :cond_461

    move v5, v6

    :cond_461
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1758
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_473

    .line 1759
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 1760
    invoke-direct {v1}, Landroid/view/ViewRootImpl;->setAccessibilityWindowAttributesIfNeeded()V

    .line 1763
    :cond_473
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_47c

    .line 1764
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1768
    :cond_47c
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1769
    new-instance v2, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1770
    new-instance v2, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-direct {v2, v1, v3}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1771
    new-instance v3, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1773
    new-instance v2, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v2, v1, v3}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1774
    new-instance v3, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1776
    new-instance v4, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v4, v1, v3}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1777
    new-instance v3, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aq:native-pre-ime:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1780
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1781
    iput-object v2, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aq:pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 1783
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 1785
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_503

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_52b

    .line 1786
    :cond_503
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    invoke-static {v0, v1}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V
    :try_end_508
    .catchall {:try_start_21c .. :try_end_508} :catchall_52d

    goto :goto_52b

    .line 1661
    :catchall_509
    move-exception v0

    goto :goto_525

    .line 1653
    :catch_50b
    move-exception v0

    .line 1654
    :try_start_50c
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1655
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1656
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v3}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 1657
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 1658
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1659
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_525
    .catchall {:try_start_50c .. :try_end_525} :catchall_509

    .line 1661
    :goto_525
    if-eqz v4, :cond_52a

    .line 1662
    :try_start_527
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 1664
    :cond_52a
    throw v0

    .line 1791
    :cond_52b
    :goto_52b
    monitor-exit p0

    .line 1792
    return-void

    .line 1791
    :catchall_52d
    move-exception v0

    monitor-exit p0
    :try_end_52f
    .catchall {:try_start_527 .. :try_end_52f} :catchall_52d

    throw v0

    :pswitch_data_530
    .packed-switch -0xb
        :pswitch_3a4
        :pswitch_375
        :pswitch_354
        :pswitch_32b
        :pswitch_2fc
        :pswitch_2fa
        :pswitch_2d9
        :pswitch_2b8
        :pswitch_297
        :pswitch_276
        :pswitch_276
    .end packed-switch
.end method

.method greylist-max-o setWindowStopped(Z)V
    .registers 6

    .line 2734
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2735
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_49

    .line 2736
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 2737
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2738
    if-eqz p1, :cond_15

    .line 2742
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {p1, v0}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 2744
    :cond_15
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_1f

    .line 2747
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 2748
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_49

    .line 2750
    :cond_1f
    if-eqz p1, :cond_26

    .line 2751
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 2754
    :cond_26
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2755
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz p1, :cond_35

    .line 2756
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->notifyHolderSurfaceDestroyed()V

    .line 2758
    :cond_35
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->notifySurfaceDestroyed()V

    .line 2760
    :cond_38
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroySurface()V

    .line 2763
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAppStartTimestampsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2764
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppStartTrackingStarted:Z

    .line 2765
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mRenderThreadDrawStartTimeNs:J

    .line 2766
    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mFirstFramePresentedTimeNs:J

    .line 2769
    :cond_49
    :goto_49
    iget p1, p0, Landroid/view/ViewRootImpl;->mCurrentColorMode:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewRootImpl;->logColorMode(IZ)V

    .line 2770
    return-void
.end method

.method public blacklist shouldCheckFrameRate(Z)Z
    .registers 3

    .line 13572
    iget p1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    const/high16 v0, 0x42f00000    # 120.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist shouldCheckFrameRateCategory()Z
    .registers 3

    .line 13560
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 2

    .line 11241
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 4

    .line 11246
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 11251
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 11257
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o synthesizeInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    .line 11092
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 11093
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11094
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11095
    return-void
.end method

.method blacklist systemGestureExclusionChanged()V
    .registers 4

    .line 6216
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->computeChangedRects()Ljava/util/List;

    move-result-object v0

    .line 6217
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_22

    .line 6219
    :try_start_c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_1c

    .line 6222
    nop

    .line 6223
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 6224
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->dispatchOnSystemGestureExclusionRectsChanged(Ljava/util/List;)V

    goto :goto_22

    .line 6220
    :catch_1c
    move-exception v0

    .line 6221
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 6226
    :cond_22
    :goto_22
    return-void
.end method

.method public blacklist touchModeChanged(Z)V
    .registers 3

    .line 11156
    monitor-enter p0

    .line 11157
    :try_start_1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 11158
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 11159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 11160
    const/16 v0, 0x22

    iput v0, p1, Landroid/os/Message;->what:I

    .line 11161
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11162
    return-void

    .line 11158
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method greylist-max-o transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .registers 4

    .line 3483
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3484
    return-void
.end method

.method greylist-max-o transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .registers 4

    .line 3493
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3494
    return-void
.end method

.method greylist-max-o unscheduleConsumeBatchedInput()V
    .registers 5

    .line 10783
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_f

    .line 10784
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 10785
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10788
    :cond_f
    return-void
.end method

.method greylist-max-o unscheduleTraversals()V
    .registers 5

    .line 3115
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_17

    .line 3116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3117
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueue:Landroid/os/MessageQueue;

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 3118
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 3121
    :cond_17
    return-void
.end method

.method public blacklist updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 5

    .line 2827
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_48

    .line 2828
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 2829
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bounds for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2830
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2831
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2832
    const-string v1, "ViewRootImpl.getBoundsLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2833
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    .line 2834
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->setBoundsLayerCrop(Landroid/view/SurfaceControl$Transaction;)V

    .line 2835
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2837
    :cond_48
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mBoundsLayer:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public blacklist updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8

    .line 2616
    sget-boolean v0, Landroid/view/ViewRootImpl;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_2e

    .line 2617
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2618
    :goto_9
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2619
    nop

    .line 2621
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2620
    const-string v4, "notifyInsetsAnimationRunningStateChanged(%s)"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2619
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 2623
    :cond_23
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInsetsAnimationRunning:Z

    .line 2625
    :try_start_25
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 2627
    goto :goto_2e

    .line 2626
    :catch_2d
    move-exception p1

    .line 2629
    :cond_2e
    :goto_2e
    return-void
.end method

.method blacklist updateBlastSurfaceIfNeeded()V
    .registers 6

    .line 2841
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2842
    return-void

    .line 2845
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->isSameSurfaceControl(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2846
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2849
    return-void

    .line 2854
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_34

    .line 2855
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2857
    :cond_34
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2861
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mBbqApplyToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setApplyToken(Landroid/os/IBinder;)V

    .line 2862
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2864
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 2865
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;-><init>(Landroid/view/Choreographer;)V

    invoke-virtual {v0, v2}, Landroid/graphics/BLASTBufferQueue;->setWaitForBufferReleaseCallback(Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V

    .line 2866
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCornerRadiiCallback:Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setCornerRadiiCallback(Landroid/graphics/BLASTBufferQueue$CornerRadiiCallback;)V

    .line 2868
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v0

    .line 2871
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 2874
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->setRecoverableFromBufferStuffing(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    .line 2875
    return-void
.end method

.method blacklist updateCompatSysUiVisibility(III)V
    .registers 5

    .line 3190
    and-int/2addr p2, p3

    not-int v0, p3

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    .line 3193
    const/4 p2, 0x4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-direct {p0, p2, v0, p1, p3}, Landroid/view/ViewRootImpl;->updateCompatSystemUiVisibilityInfo(IIII)V

    .line 3195
    const/4 p2, 0x2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-direct {p0, p2, v0, p1, p3}, Landroid/view/ViewRootImpl;->updateCompatSystemUiVisibilityInfo(IIII)V

    .line 3197
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->dispatchDispatchSystemUiVisibilityChanged()V

    .line 3198
    return-void
.end method

.method public greylist-max-o updateConfiguration(I)V
    .registers 5

    .line 6822
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 6823
    return-void

    .line 6829
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6830
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6833
    const/4 v2, -0x1

    if-eq p1, v2, :cond_15

    .line 6834
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6838
    :cond_15
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_38

    .line 6840
    :cond_21
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->updateInternalDisplay(ILandroid/content/res/Resources;)V

    .line 6842
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->updateLastConfigurationFromResources(Landroid/content/res/Configuration;)V

    .line 6843
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6849
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 6850
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 6853
    :cond_38
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->updateForceDarkMode()V

    .line 6854
    return-void
.end method

.method public blacklist updateDecorViewGestureInterception(Z)V
    .registers 6

    .line 6234
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 6237
    nop

    .line 6235
    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 6234
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6239
    return-void
.end method

.method blacklist updateKeepClearRectsForView(Landroid/view/View;)V
    .registers 3

    .line 6277
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    .line 6278
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnrestrictedKeepClearRectsTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    .line 6279
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6280
    return-void
.end method

.method blacklist updateSystemGestureExclusionRectsForView(Landroid/view/View;)V
    .registers 4

    .line 6207
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceChangedExclusionRectsMsgs()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    .line 6208
    invoke-virtual {v0}, Landroid/view/ViewRootRectTracker;->isWaitingForComputeChanges()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 6209
    :goto_11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mGestureExclusionTracker:Landroid/view/ViewRootRectTracker;

    invoke-virtual {v1, p1}, Landroid/view/ViewRootRectTracker;->updateRectsForView(Landroid/view/View;)V

    .line 6210
    if-nez v0, :cond_1f

    .line 6211
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6213
    :cond_1f
    return-void
.end method

.method public blacklist votePreferredFrameRate(FI)V
    .registers 8

    .line 13595
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_6

    .line 13596
    return-void

    .line 13598
    :cond_6
    const/4 v1, 0x2

    if-ne p2, v1, :cond_12

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsPressedGesture:Z

    if-nez v1, :cond_12

    .line 13599
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsTouchBoosting:Z

    .line 13600
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsFrameRateBoosting:Z

    .line 13604
    :cond_12
    iget v1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1c

    .line 13605
    nop

    .line 13606
    move v1, p2

    move p2, p1

    goto :goto_20

    .line 13608
    :cond_1c
    iget p2, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 13609
    iget v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    .line 13612
    :goto_20
    iget v2, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    cmpl-float v2, v2, v0

    const/4 v3, 0x1

    if-lez v2, :cond_5e

    iget v2, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    rem-float/2addr v2, p1

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5e

    iget v2, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    rem-float/2addr p1, v2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5e

    .line 13614
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsFrameRateConflicted:Z

    .line 13615
    const/high16 p1, 0x42700000    # 60.0f

    cmpl-float p1, p2, p1

    const/4 v0, 0x0

    const/high16 v2, 0xa000000

    const/4 v4, 0x5

    if-lez p1, :cond_4c

    iget p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    if-eq p1, v4, :cond_4c

    .line 13616
    iput v4, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    .line 13617
    iput v2, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 13618
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryView:Ljava/lang/String;

    goto :goto_5e

    .line 13619
    :cond_4c
    iget p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighCount:I

    if-nez p1, :cond_5e

    iget p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryHighHintCount:I

    if-nez p1, :cond_5e

    iget p1, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    if-ge p1, v4, :cond_5e

    .line 13621
    iput v4, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryNormalCount:I

    .line 13622
    iput v2, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 13623
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryView:Ljava/lang/String;

    .line 13627
    :cond_5e
    :goto_5e
    iput p2, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRate:F

    .line 13628
    iput v1, p0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    .line 13629
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    .line 13630
    return-void
.end method

.method public blacklist votePreferredFrameRateCategory(IILandroid/view/View;)V
    .registers 6

    .line 13493
    iget v0, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    if-le p1, v0, :cond_8

    .line 13494
    iput p1, p0, Landroid/view/ViewRootImpl;->mPreferredFrameRateCategory:I

    .line 13495
    iput p2, p0, Landroid/view/ViewRootImpl;->mFrameRateCategoryChangeReason:I

    .line 13498
    :cond_8
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mDrawnThisFrame:Z

    .line 13500
    sget-boolean p2, Landroid/view/ViewRootImpl;->sToolkitFrameRateDebugFlagValue:Z

    if-eqz p2, :cond_48

    .line 13501
    if-nez p3, :cond_14

    const-string p2, "-"

    goto :goto_1c

    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 13502
    :goto_1c
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### View: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " votes \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13503
    invoke-static {p1}, Landroid/view/ViewRootImpl;->categoryToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13502
    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13505
    :cond_48
    return-void
.end method

.method blacklist wasRelayoutRequested()Z
    .registers 2

    .line 12906
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRelayoutRequested:Z

    return v0
.end method

.method public blacklist windowFocusChanged(Z)V
    .registers 3

    .line 11143
    monitor-enter p0

    .line 11144
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 11145
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 11146
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14

    .line 11147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 11148
    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->what:I

    .line 11149
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11150
    return-void

    .line 11146
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
