.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$ImeWindowVisibility;,
        Landroid/inputmethodservice/InputMethodService$BackDispositionMode;
    }
.end annotation


# static fields
.field public static final whitelist BACK_DISPOSITION_ADJUST_NOTHING:I = 0x3

.field public static final whitelist BACK_DISPOSITION_DEFAULT:I = 0x0

.field private static final greylist-max-o BACK_DISPOSITION_MAX:I = 0x3

.field private static final greylist-max-o BACK_DISPOSITION_MIN:I = 0x0

.field public static final whitelist BACK_DISPOSITION_WILL_DISMISS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field public static final blacklist DISALLOW_INPUT_METHOD_INTERFACE_OVERRIDE:J = 0x8d39f80L

.field public static final blacklist FINISH_INPUT_NO_FALLBACK_CONNECTION:J = 0x94fa793L

.field public static final greylist-max-o IME_ACTIVE:I = 0x1

.field public static final greylist-max-o IME_VISIBLE:I = 0x2

.field private static final blacklist MAX_EVENTS_BUFFER:I = 0x1f4

.field static final greylist-max-o MOVEMENT_DOWN:I = -0x1

.field static final greylist-max-o MOVEMENT_UP:I = -0x2

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MAX_MS:J = 0x7530L

.field private static final blacklist STYLUS_HANDWRITING_IDLE_TIMEOUT_MS:J = 0x2710L

.field private static final blacklist STYLUS_WINDOW_IDLE_TIMEOUT_MILLIS:J = 0x493e0L

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodService"

.field private static final blacklist TIMEOUT_SURFACE_REMOVAL_MILLIS:J = 0x1f4L


# instance fields
.field final greylist-max-o mActionClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mBackCallbackRegistered:Z

.field greylist-max-o mBackDisposition:I

.field greylist-max-o mCandidatesFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mCandidatesViewStarted:Z

.field greylist-max-o mCandidatesVisibility:I

.field private final blacklist mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

.field private blacklist mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

.field private blacklist mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

.field greylist-max-o mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field blacklist mDecorViewVisible:Z

.field blacklist mDecorViewWasVisible:Z

.field private blacklist mDestroyed:Z

.field private final blacklist mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field greylist-max-o mExtractAccessories:Landroid/view/ViewGroup;

.field greylist-max-o mExtractAction:Landroid/view/View;

.field greylist mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field greylist-max-o mExtractFrame:Landroid/widget/FrameLayout;

.field greylist mExtractView:Landroid/view/View;

.field greylist-max-o mExtractViewHidden:Z

.field greylist-max-o mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field greylist-max-o mExtractedToken:I

.field private blacklist mFinishHwRunnable:Ljava/lang/Runnable;

.field greylist-max-o mFullscreenApplied:Z

.field greylist-max-o mFullscreenArea:Landroid/view/ViewGroup;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandwritingDelegationText:Ljava/lang/CharSequence;

.field private blacklist mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field private blacklist mHandwritingRequestId:Ljava/util/OptionalInt;

.field private blacklist mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

.field private blacklist mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

.field private blacklist mImeWindowVisibility:I

.field greylist-max-o mImm:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mInShowWindow:Z

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mInitialized:Z

.field private blacklist mInkWindow:Landroid/inputmethodservice/InkWindow;

.field private blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field greylist-max-o mInputBinding:Landroid/view/inputmethod/InputBinding;

.field greylist-max-o mInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field greylist-max-o mInputFrame:Landroid/widget/FrameLayout;

.field greylist-max-o mInputStarted:Z

.field greylist-max-o mInputView:Landroid/view/View;

.field greylist-max-o mInputViewStarted:Z

.field final greylist-max-o mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsConnectionlessHandwritingForDelegation:Z

.field greylist-max-o mIsFullscreen:Z

.field greylist-max-o mIsInputViewShown:Z

.field private blacklist mLastHandwritingRegion:Landroid/graphics/Region;

.field greylist-max-o mLastShowInputRequested:Z

.field private blacklist mLastWasInFullscreenMode:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

.field private blacklist mNotifyUserActionSent:Z

.field private blacklist mOnPreparedStylusHwCalled:Z

.field private blacklist mPendingEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field greylist mRootView:Landroid/view/View;

.field private greylist-max-r mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field greylist-max-o mShowInputFlags:I

.field greylist-max-o mShowInputRequested:Z

.field greylist-max-o mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field greylist-max-o mStatusIcon:I

.field private blacklist mStylusHwSessionsTimeout:J

.field private blacklist mStylusWindowIdleTimeoutForTest:J

.field private blacklist mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

.field greylist-max-p mTheme:I

.field greylist-max-o mThemeAttrs:Landroid/content/res/TypedArray;

.field final greylist-max-p mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final greylist-max-o mTmpLocation:[I

.field greylist-max-o mToken:Landroid/os/IBinder;

.field private blacklist mUsingCtrlShiftShortcut:Z

.field blacklist mViewsCreated:Z

.field greylist-max-o mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field greylist-max-o mWindowVisible:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-ED5AL7BIiM9Pb2cd0YhrcpZDp4(Landroid/inputmethodservice/InputMethodService;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$64CCF769URG4UxhThxsOaNifSZ8(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9GKzNPRsVqAtJ86Wppe4BntF300(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$onStylusHandwritingMotionEvent$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A0c9lqSsOJBj4WezJ0EY5v9wSC8(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$scheduleImeSurfaceRemoval$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H_GdHZP8tu6Q6TE1DL_T8E6qLZM(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getStylusWindowIdleTimeoutRunnable$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dprTlUrqmp7gkpceDaSVD_xgHHM(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->lambda$getFinishHandwritingRunnable$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$efLNqwKcMrpEkZFhflQPR8Y7qp8(Landroid/inputmethodservice/InputMethodService;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lURwGg9PN5eodMDPZKp4MOQxhlk(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->compatHandleBack()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oRMkK66rOxqNaqhjifweqVkTB4Q(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeBackCallbackSender(Landroid/inputmethodservice/InputMethodService;)Landroid/window/ImeBackCallbackSender;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/inputmethodservice/InputMethodService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSettingsObserver(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionlessHandwritingCallback(Landroid/inputmethodservice/InputMethodService;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsConnectionlessHandwritingForDelegation(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastHandwritingRegion(Landroid/inputmethodservice/InputMethodService;Landroid/graphics/Region;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotifyUserActionSent(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusWindowIdleTimeoutForTest(Landroid/inputmethodservice/InputMethodService;J)V
    .registers 3

    iput-wide p1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcommitHandwritingDelegationTextIfAvailable(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->commitHandwritingDelegationTextIfAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeImeWindowVis(Landroid/inputmethodservice/InputMethodService;)I
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->computeImeWindowVis()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateStatsToken(Landroid/inputmethodservice/InputMethodService;ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdiscardHandwritingDelegationText(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->discardHandwritingDelegationText()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishAndRemoveStylusHandwritingWindow(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monToggleSoftInput(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDefaultOnBackInvokedCallback(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerDefaultOnBackInvokedCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleImeSurfaceRemoval()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeWindowVisibility(Landroid/inputmethodservice/InputMethodService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEditorToolTypeInternal(Landroid/inputmethodservice/InputMethodService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 339
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 374
    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 377
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    .line 384
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 516
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 518
    new-instance v1, Landroid/inputmethodservice/NavigationBarController;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/NavigationBarController;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    .line 522
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 624
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    .line 628
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 630
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 634
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 636
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    .line 637
    new-instance v0, Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-direct {v0}, Landroid/inputmethodservice/ImsConfigurationTracker;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    .line 660
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 685
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 4565
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    return-void
.end method

.method private blacklist cancelImeSurfaceRemoval()V
    .registers 3

    .line 1273
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 1274
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1276
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    .line 1277
    return-void
.end method

.method private blacklist cancelStylusWindowIdleTimeout()V
    .registers 3

    .line 2869
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2870
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2872
    :cond_b
    return-void
.end method

.method private blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 4

    .line 2834
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2835
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2836
    if-eqz v0, :cond_14

    .line 2838
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2841
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    .line 2842
    return-void
.end method

.method private blacklist compatHandleBack()V
    .registers 5

    .line 4607
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-nez v0, :cond_f

    .line 4608
    const-string v0, "InputMethodService"

    const-string v1, "Back callback invoked on a hidden IME. Removing the callback..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 4610
    return-void

    .line 4612
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4614
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4615
    nop

    .line 4616
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    move v0, v3

    .line 4617
    :cond_24
    invoke-direct {p0, v3, v0}, Landroid/inputmethodservice/InputMethodService;->createBackKeyEvent(IZ)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4618
    invoke-virtual {p0, v2, v0}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4619
    return-void
.end method

.method private blacklist computeImeWindowVis()I
    .registers 2

    .line 4489
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist createBackKeyEvent(IZ)Landroid/view/KeyEvent;
    .registers 16

    .line 3162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3163
    new-instance v0, Landroid/view/KeyEvent;

    .line 3167
    if-eqz p2, :cond_b

    const/16 p2, 0x200

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    or-int/lit8 v11, p2, 0x48

    const/16 v12, 0x101

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3163
    return-object v0
.end method

.method private blacklist createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 6

    .line 4502
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x2

    :goto_9
    const/4 v1, 0x7

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    return-object p1
.end method

.method private blacklist discardHandwritingDelegationText()V
    .registers 2

    .line 2845
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    .line 2846
    return-void
.end method

.method private blacklist dispatchOnCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 4294
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4295
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mNotifyUserActionSent:Z

    .line 4296
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 4297
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4298
    return-void

    .line 4296
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private greylist-max-o dispatchOnShowInputRequested(IZ)Z
    .registers 4

    .line 3014
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result p2

    .line 3015
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnShowInputRequested(Z)V

    .line 3016
    if-eqz p2, :cond_e

    .line 3017
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_11

    .line 3019
    :cond_e
    const/4 p1, 0x0

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 3021
    :goto_11
    return p2
.end method

.method private blacklist finishAndRemoveStylusHandwritingWindow()V
    .registers 4

    .line 2854
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    .line 2856
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 2857
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v1, :cond_25

    .line 2858
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2860
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 2862
    :cond_18
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 2863
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/InkWindow;->destroy()V

    .line 2864
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    .line 2866
    :cond_25
    return-void
.end method

.method private blacklist finishViews(Z)V
    .registers 3

    .line 3228
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_d

    .line 3230
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInputView()V

    .line 3231
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    goto :goto_14

    .line 3232
    :cond_d
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_14

    .line 3234
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 3236
    :cond_14
    :goto_14
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3237
    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3238
    return-void
.end method

.method private greylist-max-o getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .registers 2

    .line 3599
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_10

    .line 3602
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    .line 3600
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFinishHandwritingRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 2946
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2947
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0

    .line 2949
    :cond_7
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda7;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private blacklist getHostInputToken()Landroid/os/IBinder;
    .registers 3

    .line 1237
    nop

    .line 1238
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1239
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    goto :goto_e

    .line 1238
    :cond_d
    move-object v0, v1

    .line 1241
    :goto_e
    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_15
    return-object v1
.end method

.method private greylist-max-o getIconForImeAction(I)I
    .registers 2

    .line 4138
    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_22

    .line 4152
    const p1, 0x1080462

    return p1

    .line 4150
    :pswitch_9
    const p1, 0x1080461

    return p1

    .line 4148
    :pswitch_d
    const p1, 0x108045e

    return p1

    .line 4146
    :pswitch_11
    const p1, 0x1080460

    return p1

    .line 4144
    :pswitch_15
    const p1, 0x1080464

    return p1

    .line 4142
    :pswitch_19
    const p1, 0x1080463

    return p1

    .line 4140
    :pswitch_1d
    const p1, 0x108045f

    return p1

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method public static final whitelist getStylusHandwritingIdleTimeoutMax()Ljava/time/Duration;
    .registers 2

    .line 2928
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 2882
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2883
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 2889
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private greylist-max-o handleBack(Z)Z
    .registers 6

    .line 3571
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 3574
    if-eqz p1, :cond_d

    .line 3575
    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 3577
    :cond_d
    return v2

    .line 3578
    :cond_e
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_22

    .line 3579
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1c

    .line 3582
    if-eqz p1, :cond_21

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_21

    .line 3587
    :cond_1c
    if-eqz p1, :cond_21

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 3589
    :cond_21
    :goto_21
    return v2

    .line 3591
    :cond_22
    return v3
.end method

.method private blacklist hideWindowWithToken(I)V
    .registers 4

    .line 3249
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 3251
    :goto_11
    invoke-direct {p0, v1, p1, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3252
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 3253
    return-void
.end method

.method private blacklist initConfigurationTracker()V
    .registers 7

    .line 1773
    const-string v0, "InputMethodService"

    new-instance v1, Landroid/content/ComponentName;

    .line 1774
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 1778
    :try_start_17
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1779
    const-wide/32 v4, 0x8080

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v4

    .line 1778
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_8f

    .line 1783
    nop

    .line 1784
    :try_start_27
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.view.im"

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_77

    .line 1786
    :try_start_31
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->InputMethod:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_6b

    .line 1788
    if-eqz v1, :cond_58

    .line 1792
    const/4 v4, 0x0

    :try_start_42
    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 1794
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    invoke-virtual {v5, v4}, Landroid/inputmethodservice/ImsConfigurationTracker;->onInitialize(I)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_56

    .line 1795
    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_6b

    :cond_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_77

    .line 1797
    :cond_55
    goto :goto_8e

    .line 1784
    :catchall_56
    move-exception v4

    goto :goto_60

    .line 1789
    :cond_58
    :try_start_58
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No android.view.im meta-data"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_56

    .line 1784
    :goto_60
    if-eqz v3, :cond_6a

    :try_start_62
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v3

    :try_start_67
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v4
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v3

    if-eqz v1, :cond_76

    :try_start_6e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v1

    :try_start_73
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw v3
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_77

    .line 1795
    :catch_77
    move-exception v1

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load input method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1798
    :goto_8e
    return-void

    .line 1780
    :catch_8f
    move-exception v1

    .line 1781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find input method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    return-void
.end method

.method private synthetic blacklist lambda$getFinishHandwritingRunnable$5()V
    .registers 3

    .line 2950
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2951
    const-string v0, "InputMethodService"

    const-string v1, "Stylus handwriting idle timed-out. calling finishStylusHandwriting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    .line 2953
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 2954
    return-void
.end method

.method private synthetic blacklist lambda$getStylusWindowIdleTimeoutRunnable$4()V
    .registers 2

    .line 2884
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishAndRemoveStylusHandwritingWindow()V

    .line 2885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutRunnable:Ljava/lang/Runnable;

    .line 2886
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 5

    .line 661
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 662
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/NavigationBarController;->updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 663
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 666
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 667
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 668
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 670
    goto :goto_54

    .line 671
    :cond_34
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 672
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 673
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 674
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 676
    :goto_54
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1, p1}, Landroid/inputmethodservice/NavigationBarController;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 678
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_66

    .line 681
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget p1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setImeExclusionRect(I)V

    .line 683
    :cond_66
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;)V
    .registers 5

    .line 686
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    .line 687
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 688
    if-eqz p1, :cond_24

    if-eqz v0, :cond_24

    .line 689
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v1, :cond_16

    .line 690
    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_24

    .line 691
    :cond_16
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    .line 692
    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 695
    :cond_24
    :goto_24
    return-void
.end method

.method private synthetic blacklist lambda$onStylusHandwritingMotionEvent$3()V
    .registers 6

    .line 2701
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2702
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 2703
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v4, :cond_1f

    .line 2704
    goto :goto_27

    .line 2706
    :cond_1f
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    .line 2702
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2708
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 2710
    :cond_2c
    return-void
.end method

.method private synthetic blacklist lambda$scheduleImeSurfaceRemoval$2()V
    .registers 1

    .line 1258
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    .line 1259
    return-void
.end method

.method private varargs blacklist methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4623
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/inputmethodservice/InputMethodService;
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_e} :catch_14

    if-eq p1, p2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1

    .line 4625
    :catch_14
    move-exception p1

    .line 4626
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Method must exist."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 3221
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3222
    if-eqz v0, :cond_15

    .line 3223
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->notifyImeVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3225
    :cond_15
    return-void
.end method

.method private greylist-max-o onToggleSoftInput(II)V
    .registers 4

    .line 3801
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3802
    const/16 p1, 0x1e

    invoke-direct {p0, p2, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    goto :goto_11

    .line 3805
    :cond_c
    const/16 p2, 0x35

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    .line 3808
    :goto_11
    return-void
.end method

.method private blacklist prepareWindow(Z)Z
    .registers 4

    .line 3172
    nop

    .line 3173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3174
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    .line 3175
    nop

    .line 3176
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    move p1, v0

    goto :goto_14

    .line 3180
    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3181
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3182
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 3184
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    if-nez v1, :cond_2f

    .line 3185
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 3186
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3188
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 3190
    if-eqz v0, :cond_2f

    .line 3191
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 3194
    :cond_2f
    return p1
.end method

.method private blacklist registerDefaultOnBackInvokedCallback()V
    .registers 4

    .line 3131
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 3132
    return-void

    .line 3134
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_2e

    .line 3135
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3140
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_2b

    .line 3143
    :cond_1f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 3146
    :goto_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 3148
    :cond_2e
    return-void
.end method

.method private blacklist removeImeSurface()V
    .registers 2

    .line 1265
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    .line 1267
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_c

    .line 1268
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1270
    :cond_c
    return-void
.end method

.method private blacklist reportFullscreenMode()V
    .registers 3

    .line 2102
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V

    .line 2103
    return-void
.end method

.method private blacklist requestHideSelf(II)V
    .registers 8

    .line 3545
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 3547
    :goto_11
    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3548
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    const-string v4, "InputMethodService#requestHideSelf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3550
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 3551
    return-void
.end method

.method private blacklist requestShowSelf(II)V
    .registers 8

    .line 3563
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3564
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3563
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3565
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    const-string v4, "InputMethodService#requestShowSelf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3567
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 3568
    return-void
.end method

.method private greylist-max-o resetStateForNewConfiguration()V
    .registers 11

    .line 1897
    const-string v0, "IMS.resetStateForNewConfiguration"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1898
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 1899
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1900
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1901
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1902
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1903
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 1904
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1905
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1906
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    .line 1907
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 1908
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    .line 1907
    invoke-virtual {p0, v7, v9, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1910
    :cond_32
    if-eqz v0, :cond_64

    .line 1911
    const/16 v0, 0x2c

    if-eqz v4, :cond_4d

    .line 1913
    invoke-direct {p0, v3, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1914
    invoke-direct {p0, v8, v0}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    .line 1916
    if-eqz v5, :cond_58

    .line 1917
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1918
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_58

    .line 1921
    :cond_49
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    goto :goto_58

    .line 1923
    :cond_4d
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_55

    .line 1926
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_58

    .line 1930
    :cond_55
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 1933
    :cond_58
    :goto_58
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    .line 1934
    if-eqz v0, :cond_5f

    const/4 v6, 0x2

    :cond_5f
    or-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 1936
    :cond_64
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1937
    return-void
.end method

.method private blacklist scheduleHandwritingSessionTimeout()V
    .registers 5

    .line 2958
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2959
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2961
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getFinishHandwritingRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2962
    return-void
.end method

.method private blacklist scheduleImeSurfaceRemoval()V
    .registers 5

    .line 1245
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 1250
    :cond_11
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    if-eqz v0, :cond_19

    .line 1255
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->removeImeSurface()V

    goto :goto_29

    .line 1257
    :cond_19
    new-instance v0, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda6;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    .line 1260
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeSurfaceRemoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1262
    :goto_29
    return-void

    .line 1247
    :cond_2a
    :goto_2a
    return-void
.end method

.method private blacklist scheduleStylusWindowIdleTimeout()V
    .registers 5

    .line 2875
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelStylusWindowIdleTimeout()V

    .line 2876
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 2877
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusWindowIdleTimeoutForTest:J

    goto :goto_11

    :cond_e
    const-wide/32 v0, 0x493e0

    .line 2878
    :goto_11
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getStylusWindowIdleTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2879
    return-void
.end method

.method private blacklist setImeExclusionRect(I)V
    .registers 9

    .line 1299
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1300
    nop

    .line 1301
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 1306
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1303
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v1, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v1

    .line 1309
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1310
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, p1, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1307
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1312
    return-void
.end method

.method private blacklist setImeWindowStatus(II)V
    .registers 4

    .line 1294
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V

    .line 1295
    return-void
.end method

.method private blacklist setImeWindowVisibility(I)V
    .registers 3

    .line 1285
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    if-ne p1, v0, :cond_5

    .line 1286
    return-void

    .line 1288
    :cond_5
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    .line 1289
    iget p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 1290
    return-void
.end method

.method private blacklist showWindowWithToken(ZI)V
    .registers 5

    .line 3032
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3033
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3032
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3034
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 3035
    return-void
.end method

.method private blacklist startViews(Z)V
    .registers 5

    .line 3198
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 3199
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v0, :cond_22

    .line 3201
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3202
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3203
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_22

    .line 3205
    :cond_17
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v0, :cond_22

    .line 3207
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3208
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, v2}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3210
    :cond_22
    :goto_22
    if-eqz p1, :cond_27

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 3211
    :cond_27
    return-void
.end method

.method private blacklist unregisterDefaultOnBackInvokedCallback()V
    .registers 3

    .line 3151
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 3152
    return-void

    .line 3154
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_17

    .line 3155
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCompatBackCallback:Landroid/window/CompatOnBackInvokedCallback;

    .line 3156
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 3157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    .line 3159
    :cond_17
    return-void
.end method

.method private blacklist updateEditorToolTypeInternal(I)V
    .registers 3

    .line 1315
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_9

    .line 1316
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 1319
    :cond_9
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateEditorToolType(I)V

    .line 1320
    return-void
.end method


# virtual methods
.method final blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .registers 2

    .line 4398
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method greylist-max-o doFinishInput()V
    .registers 5

    .line 3343
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const-string v2, "InputMethodService#doFinishInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3346
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1c

    .line 3347
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnFinishInput()V

    .line 3349
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 3351
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3352
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3353
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 3354
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    if-nez v0, :cond_2a

    .line 3356
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 3361
    :cond_2a
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 3362
    return-void
.end method

.method greylist-max-o doMovementKey(ILandroid/view/KeyEvent;I)Z
    .registers 11

    .line 3833
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3834
    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 3838
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 3839
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 3840
    const/4 v4, 0x1

    if-eqz v2, :cond_6f

    if-eqz v3, :cond_6f

    .line 3843
    const/4 v3, -0x1

    if-ne p3, v3, :cond_25

    .line 3844
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {v2, v0, p3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 3845
    invoke-virtual {p0, p1, v4}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 3846
    return v4

    .line 3848
    :cond_25
    const/4 v5, -0x2

    if-ne p3, v5, :cond_33

    .line 3849
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {v2, v0, p3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 3850
    return v4

    .line 3853
    :cond_33
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v2, v0, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3854
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_6f

    .line 3856
    :cond_41
    invoke-static {p2, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v5

    .line 3857
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p1, v5}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 3858
    invoke-static {p2, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    .line 3859
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 3860
    :goto_5a
    add-int/2addr p3, v3

    if-lez p3, :cond_6c

    .line 3861
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p1, v5}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 3862
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v2, v0, v6, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_5a

    .line 3864
    :cond_6c
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 3871
    :cond_6f
    :goto_6f
    packed-switch p1, :pswitch_data_76

    goto :goto_74

    .line 3876
    :pswitch_73
    return v4

    .line 3880
    :cond_74
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x13
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
    .end packed-switch
.end method

.method greylist-max-o doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8

    .line 3365
    if-nez p3, :cond_9

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_9

    .line 3366
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 3368
    :cond_9
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodService#doStartInput"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 3371
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3372
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3373
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 3374
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 3375
    if-nez p2, :cond_25

    move-object v1, v3

    goto :goto_27

    :cond_25
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3376
    :goto_27
    if-nez p2, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p2}, Landroid/view/inputmethod/EditorInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 3374
    :goto_2e
    invoke-virtual {p1, v1, v3}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V

    .line 3378
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3379
    iget-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz p1, :cond_57

    .line 3380
    iget-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz p1, :cond_4c

    .line 3382
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 3383
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->notifyOnStartInputView()V

    .line 3384
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3385
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_57

    .line 3386
    :cond_4c
    iget p1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez p1, :cond_57

    .line 3388
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 3389
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3392
    :cond_57
    :goto_57
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 4511
    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Input method service state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mViewsCreated="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDecorViewVisible="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mDecorViewWasVisible="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mWindowVisible="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mInShowWindow="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Configuration="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mToken="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4520
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInputBinding="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInputConnection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mStartedInputConnection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInputStarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mInputViewStarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mCandidatesViewStarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4527
    iget-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_135

    .line 4528
    const-string p2, "  mInputEditorInfo:"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4529
    iget-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string p3, "    "

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_13a

    .line 4531
    :cond_135
    const-string p2, "  mInputEditorInfo: null"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4534
    :goto_13a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowInputRequested="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mLastShowInputRequested="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mShowInputFlags=0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 4536
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4534
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCandidatesVisibility="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mFullscreenApplied="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mIsFullscreen="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mExtractViewHidden="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4542
    iget-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz p2, :cond_21a

    .line 4543
    const-string p2, "  mExtractedText:"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    text="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object p3, p3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " chars startOffset="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget p3, p3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    selectionStart="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget p3, p3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " selectionEnd="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget p3, p3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " flags=0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget p3, p3, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4548
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4546
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_21f

    .line 4550
    :cond_21a
    const-string p2, "  mExtractedText: null"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4552
    :goto_21f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mExtractedToken="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsInputViewShown="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mStatusIcon="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4555
    const-string p2, "  Last computed insets:"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4556
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    contentTopInsets="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget p3, p3, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " visibleTopInsets="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget p3, p3, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " touchableInsets="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget p3, p3, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " touchableRegion="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object p3, p3, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSettingsObserver="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNavigationBarController="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {p3}, Landroid/inputmethodservice/NavigationBarController;->toDebugString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBackCallbackRegistered="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/inputmethodservice/InputMethodService;->mBackCallbackRegistered:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4563
    return-void
.end method

.method public whitelist enableHardwareAcceleration()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1684
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_9

    .line 1687
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0

    .line 1685
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist finishConnectionlessStylusHandwriting(Ljava/lang/CharSequence;)V
    .registers 4

    .line 2814
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v0, :cond_28

    .line 2816
    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2817
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    .line 2818
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    if-eqz v0, :cond_1c

    .line 2819
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingDelegationText:Ljava/lang/CharSequence;

    goto :goto_1c

    .line 2822
    :cond_16
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 2827
    :cond_1c
    :goto_1c
    goto :goto_25

    .line 2825
    :catch_1d
    move-exception p1

    .line 2826
    const-string v0, "InputMethodService"

    const-string v1, "Couldn\'t send connectionless handwriting result"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2828
    :goto_25
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 2830
    :cond_28
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 2831
    return-void
.end method

.method public final whitelist finishStylusHandwriting()V
    .registers 7

    .line 2765
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-nez v0, :cond_5

    .line 2766
    return-void

    .line 2768
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2769
    return-void

    .line 2771
    :cond_e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    .line 2772
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2774
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFinishHwRunnable:Ljava/lang/Runnable;

    .line 2775
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    .line 2777
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    .line 2778
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingRequestId:Ljava/util/OptionalInt;

    .line 2780
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2781
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 2782
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 2784
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    if-eqz v2, :cond_51

    .line 2785
    const-string v2, "Connectionless handwriting session did not complete successfully"

    const-string v4, "InputMethodService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :try_start_42
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    .line 2790
    goto :goto_4f

    .line 2788
    :catch_49
    move-exception v2

    .line 2789
    const-string v5, "Couldn\'t send connectionless handwriting error result"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2791
    :goto_4f
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnectionlessHandwritingCallback:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 2793
    :cond_51
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsConnectionlessHandwritingForDelegation:Z

    .line 2795
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->resetStylusHandwriting(I)V

    .line 2796
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mOnPreparedStylusHwCalled:Z

    .line 2797
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishStylusHandwriting()V

    .line 2798
    return-void
.end method

.method public whitelist getBackDisposition()I
    .registers 2

    .line 2012
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public whitelist getCandidatesHiddenVisibility()I
    .registers 2

    .line 2417
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_a

    :cond_9
    const/4 v0, 0x4

    :goto_a
    return v0
.end method

.method public whitelist getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .registers 2

    .line 2042
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public whitelist getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .line 2050
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2051
    if-eqz v0, :cond_5

    .line 2052
    return-object v0

    .line 2054
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .line 2098
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public whitelist getCurrentInputStarted()Z
    .registers 2

    .line 2094
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public whitelist getInputMethodWindowRecommendedHeight()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4331
    const-string v0, "InputMethodService"

    const-string v1, "getInputMethodWindowRecommendedHeight() is deprecated and now always returns 0. Do not use this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1974
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getMaxWidth()I
    .registers 2

    .line 2032
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2033
    nop

    .line 2034
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 2033
    invoke-static {v0}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2034
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2033
    return v0
.end method

.method public final blacklist getShouldShowImeWithHardKeyboardForTesting()Ljava/lang/Boolean;
    .registers 2

    .line 1647
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final whitelist getStylusHandwritingSessionTimeout()Ljava/time/Duration;
    .registers 3

    .line 2942
    iget-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getStylusHandwritingWindow()Landroid/view/Window;
    .registers 2

    .line 2744
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    return-object v0
.end method

.method public whitelist getTextForImeAction(I)Ljava/lang/CharSequence;
    .registers 2

    .line 4108
    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_40

    .line 4124
    const p1, 0x10404f3

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4122
    :pswitch_d
    const p1, 0x10404f7

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4120
    :pswitch_15
    const p1, 0x10404f4

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4118
    :pswitch_1d
    const p1, 0x10404f6

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4116
    :pswitch_25
    const p1, 0x10404f9

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4114
    :pswitch_2d
    const p1, 0x10404f8

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4112
    :pswitch_35
    const p1, 0x10404f5

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 4110
    :pswitch_3d
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist getWindow()Landroid/app/Dialog;
    .registers 2

    .line 1978
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public whitelist hideStatusIcon()V
    .registers 4

    .line 2426
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2427
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2428
    return-void
.end method

.method public whitelist hideWindow()V
    .registers 7

    .line 3258
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_14

    .line 3259
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3261
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3259
    const/16 v2, 0x2b

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3262
    :goto_14
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3264
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3265
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodService#hideWindow"

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3267
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 3270
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3271
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3272
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->finishViews(Z)V

    .line 3273
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_4c

    .line 3275
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 3276
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 3278
    :cond_45
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    .line 3279
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 3280
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3282
    :cond_4c
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastWasInFullscreenMode:Z

    .line 3283
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 3284
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->unregisterDefaultOnBackInvokedCallback()V

    .line 3285
    return-void
.end method

.method greylist-max-o initViews()V
    .registers 7

    .line 1818
    const-string v0, "IMS.initViews"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1819
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1820
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    .line 1821
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1822
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 1824
    sget-object v3, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1825
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090090

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 1827
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 1828
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1829
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102033d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 1830
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1831
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 1832
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1833
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1834
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1835
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 1836
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 1838
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 1839
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v4, 0x102001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1840
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1841
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1843
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1844
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1845
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1846
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onViewInitialized()V

    .line 1848
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1849
    return-void
.end method

.method greylist-max-o initialize()V
    .registers 2

    .line 1811
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_a

    .line 1812
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 1813
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 1815
    :cond_a
    return-void
.end method

.method public whitelist isExtractViewShown()Z
    .registers 2

    .line 2245
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isFullscreenMode()Z
    .registers 2

    .line 2191
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public final blacklist isImeNavigationBarShownForTesting()Z
    .registers 2

    .line 4345
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->isShown()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputViewShown()Z
    .registers 2

    .line 2350
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    return v0
.end method

.method public whitelist isShowInputRequested()Z
    .registers 2

    .line 2341
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 3793
    return-void
.end method

.method public whitelist onBindInput()V
    .registers 1

    .line 3313
    return-void
.end method

.method public whitelist onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 7

    .line 2290
    const-string v0, "IMS.onComputeInsets"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2291
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 2292
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_18

    .line 2293
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_2a

    .line 2295
    :cond_18
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 2296
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    aput v3, v0, v4

    .line 2298
    :goto_2a
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2300
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 2301
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2302
    goto :goto_47

    .line 2303
    :cond_43
    aget v3, v0, v4

    iput v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2305
    :goto_47
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_54

    .line 2306
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2308
    :cond_54
    aget v0, v0, v4

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2309
    const/4 v0, 0x2

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2310
    iget-object p1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 2311
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2312
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1892
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1893
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConfigTracker:Landroid/inputmethodservice/ImsConfigurationTracker;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda5;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, p1, v1}, Landroid/inputmethodservice/ImsConfigurationTracker;->onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V

    .line 1894
    return-void
.end method

.method public whitelist onConfigureWindow(Landroid/view/Window;ZZ)V
    .registers 4

    .line 2174
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2175
    const/4 p1, -0x1

    if-eqz p2, :cond_11

    move p2, p1

    goto :goto_12

    :cond_11
    const/4 p2, -0x2

    .line 2176
    :goto_12
    nop

    .line 2182
    iget-object p3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {p3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/Window;->setLayout(II)V

    .line 2183
    return-void
.end method

.method public whitelist onCreate()V
    .registers 11

    .line 1691
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "onCreateInputMethodSessionInterface"

    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/InputMethodService;->methodIsOverridden(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1692
    const-wide/32 v1, 0x8d39f80

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 1693
    :cond_15
    new-instance v0, Ljava/lang/LinkageError;

    const-string v1, "InputMethodService#onCreateInputMethodSessionInterface() can no longer be overridden!"

    invoke-direct {v0, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_1d
    :goto_1d
    const-string v1, "IMS.onCreate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1697
    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1698
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1697
    const v6, 0x1030054

    const v7, 0x103007f

    const v8, 0x103013e

    const v9, 0x103013e

    invoke-static/range {v4 .. v9}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1703
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v1}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 1704
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 1705
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 1706
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1709
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    .line 1711
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11101db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1714
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->initConfigurationTracker()V

    .line 1719
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1721
    const-string v4, "IMS.initSoftInputWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1722
    new-instance v4, Landroid/inputmethodservice/SoftInputWindow;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v4, p0, v5, v6}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/inputmethodservice/InputMethodService;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1723
    new-instance v4, Landroid/window/ImeBackCallbackSender;

    invoke-direct {v4}, Landroid/window/ImeBackCallbackSender;-><init>()V

    iput-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 1724
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-interface {v4, v5}, Landroid/window/OnBackInvokedDispatcher;->setImeBackCallbackSender(Landroid/window/ImeBackCallbackSender;)V

    .line 1726
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/NavigationBarController;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    .line 1728
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1730
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1731
    const-string v6, "InputMethod"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1732
    const/16 v6, 0x7db

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1733
    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1734
    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1735
    const/16 v6, 0x50

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1736
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1737
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v6

    and-int/lit8 v6, v6, -0x9

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 1738
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 1739
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1749
    const v5, -0x7ffffef8

    const v6, -0x7ffffef6

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1756
    if-eqz v1, :cond_e6

    .line 1757
    invoke-virtual {v4, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1761
    :cond_e6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 1762
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1764
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSessionController;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda8;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v4, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda9;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    new-instance v5, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda10;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-direct {v0, v1, v4, v5}, Landroid/inputmethodservice/InlineSuggestionSessionController;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 1767
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1768
    return-void
.end method

.method public whitelist onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .line 2526
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateExtractTextView()Landroid/view/View;
    .registers 4

    .line 2511
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateInlineSuggestionsRequest(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest;
    .registers 2

    .line 1216
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1951
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1970
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public whitelist onCreateInputView()Landroid/view/View;
    .registers 2

    .line 2541
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2

    .line 4315
    return-void
.end method

.method public whitelist onCustomImeSwitcherButtonRequestedVisible(Z)V
    .registers 2

    .line 4377
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDestroyed:Z

    .line 1853
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 1854
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1856
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1857
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {v0}, Landroid/inputmethodservice/NavigationBarController;->onDestroy()V

    .line 1858
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismissForDestroyIfNecessary()V

    .line 1859
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1860
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    .line 1861
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    .line 1863
    :cond_2a
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_33

    .line 1866
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->remove(Landroid/os/IBinder;)V

    .line 1868
    :cond_33
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    invoke-virtual {v0}, Landroid/window/ImeBackCallbackSender;->clear()V

    .line 1869
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImeBackCallbackSender:Landroid/window/ImeBackCallbackSender;

    .line 1870
    return-void
.end method

.method public whitelist onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    .line 3424
    return-void
.end method

.method public whitelist onEvaluateFullscreenMode()Z
    .registers 5

    .line 2203
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2204
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 2205
    return v2

    .line 2207
    :cond_f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    and-int/2addr v0, v3

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 2213
    :cond_24
    return v2

    .line 2215
    :cond_25
    return v1
.end method

.method public whitelist onEvaluateInputViewShown()Z
    .registers 5

    .line 2366
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2367
    const-string v0, "InputMethodService"

    const-string v2, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    return v1

    .line 2370
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 2371
    return v2

    .line 2373
    :cond_17
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2374
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_28

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method

.method public whitelist onExtractTextContextMenuItem(I)Z
    .registers 3

    .line 4089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4090
    if-eqz v0, :cond_9

    .line 4091
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 4093
    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist onExtractedCursorMovement(II)V
    .registers 3

    .line 4072
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz p1, :cond_14

    if-nez p2, :cond_7

    goto :goto_14

    .line 4075
    :cond_7
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 4076
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 4078
    :cond_13
    return-void

    .line 4073
    :cond_14
    :goto_14
    return-void
.end method

.method public greylist onExtractedDeleteText(II)V
    .registers 5

    .line 4008
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4009
    if-eqz v0, :cond_11

    .line 4010
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4011
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 4012
    const/4 v1, 0x0

    sub-int/2addr p2, p1

    invoke-interface {v0, v1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4014
    :cond_11
    return-void
.end method

.method public greylist onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .registers 5

    .line 4021
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4022
    if-eqz v0, :cond_d

    .line 4023
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 4024
    const/4 p1, 0x1

    invoke-interface {v0, p3, p1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4026
    :cond_d
    return-void
.end method

.method public whitelist onExtractedSelectionChanged(II)V
    .registers 4

    .line 3997
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3998
    if-eqz v0, :cond_9

    .line 3999
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 4001
    :cond_9
    return-void
.end method

.method public greylist onExtractedSetSpan(Ljava/lang/Object;III)V
    .registers 11

    .line 4033
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4034
    if-eqz v0, :cond_27

    .line 4035
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 4036
    :cond_d
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4037
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_27

    .line 4038
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, p1, v4, v5, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4039
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 4040
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4043
    :cond_27
    return-void
.end method

.method public whitelist onExtractedTextClicked()V
    .registers 2

    .line 4053
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_5

    .line 4054
    return-void

    .line 4056
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4057
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 4059
    :cond_11
    return-void
.end method

.method public whitelist onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    .line 4238
    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez p1, :cond_a

    .line 4239
    const/4 p1, 0x2

    const/16 v0, 0x1f

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 4242
    :cond_a
    return-void
.end method

.method public whitelist onFinishCandidatesView(Z)V
    .registers 2

    .line 2618
    if-nez p1, :cond_b

    .line 2619
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 2620
    if-eqz p1, :cond_b

    .line 2621
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2624
    :cond_b
    return-void
.end method

.method public whitelist onFinishInput()V
    .registers 2

    .line 3407
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3408
    if-eqz v0, :cond_9

    .line 3409
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 3411
    :cond_9
    return-void
.end method

.method public whitelist onFinishInputView(Z)V
    .registers 2

    .line 2573
    if-nez p1, :cond_b

    .line 2574
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 2575
    if-eqz p1, :cond_b

    .line 2576
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2579
    :cond_b
    return-void
.end method

.method public whitelist onFinishStylusHandwriting()V
    .registers 1

    .line 2729
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 3786
    const/4 p1, 0x0

    return p1
.end method

.method final blacklist onImeSwitchButtonClickFromClient()V
    .registers 3

    .line 4387
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onImeSwitchButtonClickFromClient(I)V

    .line 4388
    return-void
.end method

.method public whitelist onInitializeInterface()V
    .registers 1

    .line 1808
    return-void
.end method

.method public whitelist onInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)Z
    .registers 2

    .line 1229
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 3629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->updateEditorToolTypeInternal(I)V

    .line 3631
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v1, :cond_20

    .line 3632
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object p1

    .line 3633
    if-eqz p1, :cond_15

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3634
    return v2

    .line 3636
    :cond_15
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 3637
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 3638
    return v2

    .line 3640
    :cond_1f
    return v0

    .line 3641
    :cond_20
    const/16 v1, 0x3e

    const/4 v3, -0x1

    const/16 v4, 0x1000

    if-ne p1, v1, :cond_4e

    .line 3642
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0xc2

    .line 3641
    invoke-static {v1, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3643
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v1, :cond_4e

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_4e

    .line 3644
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/lit16 p1, p1, 0xc1

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v3, v2

    .line 3645
    :goto_45
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p1, v3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V

    .line 3646
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 3647
    return v2

    .line 3652
    :cond_4e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 3653
    const/16 v1, 0x3b

    if-eq p1, v1, :cond_77

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_5d

    goto :goto_77

    .line 3658
    :cond_5d
    const/16 v1, 0x71

    if-eq p1, v1, :cond_69

    const/16 v1, 0x72

    if-ne p1, v1, :cond_66

    goto :goto_69

    .line 3664
    :cond_66
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_84

    .line 3661
    :cond_69
    :goto_69
    nop

    .line 3662
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    .line 3661
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_84

    .line 3656
    :cond_77
    :goto_77
    nop

    .line 3657
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3656
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 3668
    :cond_84
    :goto_84
    invoke-virtual {p0, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 3694
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    .line 3710
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 3726
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->ctrlShiftShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 3727
    const/16 v0, 0x3b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x71

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x72

    if-ne p1, v0, :cond_19

    goto :goto_1c

    .line 3742
    :cond_19
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    goto :goto_34

    .line 3731
    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    if-eqz v0, :cond_34

    .line 3732
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3733
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mUsingCtrlShiftShortcut:Z

    .line 3734
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_34

    .line 3736
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->switchToNextInputMethod(Z)Z

    .line 3738
    return v1

    .line 3746
    :cond_34
    :goto_34
    const/4 v0, 0x4

    if-ne p1, v0, :cond_55

    .line 3747
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 3748
    if-eqz v0, :cond_44

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3749
    return v1

    .line 3751
    :cond_44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_66

    .line 3752
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result p1

    return p1

    .line 3754
    :cond_55
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_66

    .line 3755
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_67

    .line 3756
    return v1

    .line 3754
    :cond_66
    nop

    .line 3760
    :cond_67
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public whitelist onPrepareStylusHandwriting()V
    .registers 1

    .line 2636
    return-void
.end method

.method public whitelist onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 3685
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onShowInputRequested(IZ)Z
    .registers 5

    .line 2978
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2979
    return v1

    .line 2981
    :cond_8
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_30

    .line 2982
    if-nez p2, :cond_1b

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 2988
    return v1

    .line 2990
    :cond_1b
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {p1}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 2991
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_30

    .line 2995
    return v1

    .line 2998
    :cond_30
    return v0
.end method

.method public whitelist onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3

    .line 2602
    return-void
.end method

.method public whitelist onStartConnectionlessStylusHandwriting(ILandroid/view/inputmethod/CursorAnchorInfo;)Z
    .registers 3

    .line 2680
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3

    .line 3339
    return-void
.end method

.method public whitelist onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3

    .line 2557
    return-void
.end method

.method public whitelist onStartStylusHandwriting()Z
    .registers 2

    .line 2654
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2692
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->isInkViewVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2693
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InkWindow;->dispatchHandwritingEvent(Landroid/view/MotionEvent;)V

    goto :goto_34

    .line 2695
    :cond_12
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_21

    .line 2696
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/view/MotionEvent;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    .line 2698
    :cond_21
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPendingEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2699
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    if-eqz v0, :cond_34

    .line 2700
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInkWindow:Landroid/inputmethodservice/InkWindow;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodService$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V

    .line 2715
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3d

    .line 2716
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleStylusWindowIdleTimeout()V

    .line 2718
    :cond_3d
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 3773
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onUnbindInput()V
    .registers 1

    .line 3323
    return-void
.end method

.method public whitelist onUpdateCursor(Landroid/graphics/Rect;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3518
    return-void
.end method

.method public whitelist onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 2

    .line 3529
    return-void
.end method

.method public whitelist onUpdateEditorToolType(I)V
    .registers 2

    .line 3507
    return-void
.end method

.method public whitelist onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4

    .line 3433
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_5

    .line 3434
    return-void

    .line 3436
    :cond_5
    if-eqz p2, :cond_12

    .line 3437
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz p1, :cond_12

    .line 3438
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 3439
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 3442
    :cond_12
    return-void
.end method

.method public whitelist onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    .line 4192
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4193
    return-void

    .line 4196
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    .line 4197
    return-void

    .line 4199
    :cond_c
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_25

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_24

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_24

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v1

    .line 4203
    :cond_25
    :goto_25
    if-eqz v2, :cond_7e

    .line 4204
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4205
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_8f

    .line 4206
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5b

    .line 4207
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4208
    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4209
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4f

    .line 4210
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4212
    :cond_4f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4215
    :cond_5b
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_69

    .line 4216
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 4218
    :cond_69
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4221
    :goto_76
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8f

    .line 4224
    :cond_7e
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4225
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz p1, :cond_8f

    .line 4226
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4229
    :cond_8f
    :goto_8f
    return-void
.end method

.method public whitelist onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    .line 4166
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_11

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_c

    goto :goto_11

    .line 4173
    :cond_c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 4174
    return-void

    .line 4169
    :cond_11
    :goto_11
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 4170
    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .registers 7

    .line 3456
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 3457
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz p2, :cond_34

    .line 3458
    iget-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget p2, p2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3459
    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 3460
    sub-int/2addr p3, p2

    .line 3461
    sub-int/2addr p4, p2

    .line 3462
    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 3463
    const/4 p5, 0x0

    if-gez p3, :cond_24

    move p3, p5

    goto :goto_27

    .line 3464
    :cond_24
    if-le p3, p2, :cond_27

    move p3, p2

    .line 3465
    :cond_27
    :goto_27
    if-gez p4, :cond_2b

    move p4, p5

    goto :goto_2e

    .line 3466
    :cond_2b
    if-le p4, p2, :cond_2e

    move p4, p2

    .line 3467
    :cond_2e
    :goto_2e
    invoke-virtual {p1, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 3468
    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 3470
    :cond_34
    return-void
.end method

.method public whitelist onViewClicked(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3491
    return-void
.end method

.method public whitelist onWindowHidden()V
    .registers 1

    .line 3302
    return-void
.end method

.method public whitelist onWindowShown()V
    .registers 1

    .line 3294
    return-void
.end method

.method greylist-max-o reportExtractedMovement(II)V
    .registers 5

    .line 3814
    nop

    .line 3815
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_18

    move p2, v0

    goto :goto_13

    .line 3820
    :pswitch_7
    nop

    .line 3821
    goto :goto_13

    .line 3817
    :pswitch_9
    neg-int p2, p2

    .line 3818
    goto :goto_13

    .line 3826
    :pswitch_b
    move v1, v0

    move v0, p2

    move p2, v1

    goto :goto_13

    .line 3823
    :pswitch_f
    neg-int p2, p2

    .line 3824
    move v1, v0

    move v0, p2

    move p2, v1

    .line 3829
    :goto_13
    invoke-virtual {p0, p2, v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 3830
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x13
        :pswitch_f
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist requestHideSelf(I)V
    .registers 3

    .line 3538
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(II)V

    .line 3539
    return-void
.end method

.method public final whitelist requestShowSelf(I)V
    .registers 3

    .line 3558
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(II)V

    .line 3559
    return-void
.end method

.method public whitelist sendDefaultEditorAction(Z)Z
    .registers 4

    .line 3936
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3937
    if-eqz v0, :cond_24

    if-eqz p1, :cond_f

    iget p1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-nez p1, :cond_24

    :cond_f
    iget p1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eq p1, v1, :cond_24

    .line 3945
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 3946
    if-eqz p1, :cond_23

    .line 3947
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 3949
    :cond_23
    return v1

    .line 3952
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist sendDownUpKeyEvents(I)V
    .registers 15

    .line 3903
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3904
    if-nez v0, :cond_7

    return-void

    .line 3905
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3906
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3909
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3912
    return-void
.end method

.method public whitelist sendKeyChar(C)V
    .registers 5

    .line 3970
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2e

    .line 3978
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1f

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1f

    .line 3979
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_2c

    .line 3972
    :pswitch_13
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 3973
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_2c

    .line 3981
    :cond_1f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3982
    if-eqz v1, :cond_2c

    .line 3983
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3988
    :cond_2c
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0xa
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist setBackDisposition(I)V
    .registers 4

    .line 1993
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    if-ne p1, v0, :cond_5

    .line 1994
    return-void

    .line 1996
    :cond_5
    const/4 v0, 0x3

    if-gt p1, v0, :cond_15

    if-gez p1, :cond_b

    goto :goto_15

    .line 2000
    :cond_b
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 2001
    iget p1, p0, Landroid/inputmethodservice/InputMethodService;->mImeWindowVisibility:I

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->setImeWindowStatus(II)V

    .line 2002
    return-void

    .line 1997
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid back disposition value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") specified."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method public whitelist setCandidatesView(Landroid/view/View;)V
    .registers 6

    .line 2486
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2487
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2488
    return-void
.end method

.method public whitelist setCandidatesViewShown(Z)V
    .registers 3

    .line 2383
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2384
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eq v0, p1, :cond_17

    .line 2388
    const/16 v0, 0x2d

    if-eqz p1, :cond_14

    .line 2389
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService;->showWindowWithToken(ZI)V

    goto :goto_17

    .line 2392
    :cond_14
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->hideWindowWithToken(I)V

    .line 2396
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist setExtractView(Landroid/view/View;)V
    .registers 5

    .line 2458
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2459
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2460
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 2461
    if-eqz p1, :cond_41

    .line 2462
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2464
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 2465
    const v0, 0x1020059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2467
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 2468
    const v0, 0x102005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2471
    :cond_3c
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    goto :goto_48

    .line 2473
    :cond_41
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2474
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 2475
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    .line 2477
    :goto_48
    return-void
.end method

.method public whitelist setExtractViewShown(Z)V
    .registers 3

    .line 2228
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_b

    .line 2229
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 2230
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 2232
    :cond_b
    return-void
.end method

.method public whitelist setInputView(Landroid/view/View;)V
    .registers 6

    .line 2497
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2498
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2499
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 2500
    return-void
.end method

.method public final whitelist setStylusHandwritingRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 3110
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 3111
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3112
    const-string p1, "InputMethodService"

    const-string v0, "Failed to set setStylusHandwritingRegion(): same region set twice."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    return-void

    .line 3121
    :cond_15
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p1, v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 3122
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastHandwritingRegion:Landroid/graphics/Region;

    .line 3123
    return-void
.end method

.method public final whitelist setStylusHandwritingSessionTimeout(Ljava/time/Duration;)V
    .registers 6

    .line 2907
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 2908
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_17

    .line 2912
    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    if-lez p1, :cond_11

    .line 2913
    move-wide v0, v2

    .line 2915
    :cond_11
    iput-wide v0, p0, Landroid/inputmethodservice/InputMethodService;->mStylusHwSessionsTimeout:J

    .line 2916
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->scheduleHandwritingSessionTimeout()V

    .line 2917
    return-void

    .line 2909
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A positive value should be set for Stylus handwriting session timeout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTheme(I)V
    .registers 3

    .line 1660
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v0, :cond_7

    .line 1663
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 1664
    return-void

    .line 1661
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called before onCreate()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist shouldOfferSwitchingToNextInputMethod()Z
    .registers 2

    .line 2090
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist showStatusIcon(I)V
    .registers 4

    .line 2421
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2422
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2423
    return-void
.end method

.method public whitelist showWindow(Z)V
    .registers 7

    .line 3046
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto :goto_14

    .line 3047
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 3049
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v0

    .line 3047
    const/16 v2, 0x2a

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->createStatsToken(ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3050
    :goto_14
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3052
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    const/16 v4, 0x2c

    if-eqz v3, :cond_2c

    .line 3053
    const-string p1, "InputMethodService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3055
    return-void

    .line 3058
    :cond_2c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3063
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/InputMethodService;->notifyPreImeWindowVisibilityChanged(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3065
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodService#showWindow"

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 3067
    const-string v0, "IMS.showWindow"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3068
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3069
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3070
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->prepareWindow(Z)Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->startViews(Z)V

    .line 3071
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->computeImeWindowVis()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setImeWindowVisibility(I)V

    .line 3073
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mNavigationBarController:Landroid/inputmethodservice/NavigationBarController;

    invoke-virtual {p1}, Landroid/inputmethodservice/NavigationBarController;->onWindowShown()V

    .line 3075
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 3076
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 3080
    iget-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 3081
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    .line 3082
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->cancelImeSurfaceRemoval()V

    .line 3083
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 3084
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3085
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->registerDefaultOnBackInvokedCallback()V

    .line 3086
    return-void
.end method

.method greylist-max-o startExtractingText(Z)V
    .registers 7

    .line 4245
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 4246
    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 4247
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 4248
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 4249
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 4250
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 4251
    iput v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 4252
    const/16 v3, 0xa

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 4253
    const/16 v3, 0x2710

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 4254
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 4255
    if-nez v3, :cond_31

    const/4 v1, 0x0

    goto :goto_35

    .line 4256
    :cond_31
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    :goto_35
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 4257
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_3d

    if-nez v3, :cond_61

    .line 4258
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", input connection = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputMethodService"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    :cond_61
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 4264
    :try_start_65
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 4265
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 4266
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 4267
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4268
    and-int/lit8 v4, v3, 0xf

    if-ne v4, v2, :cond_7c

    .line 4270
    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_7c

    .line 4271
    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    .line 4274
    :cond_7c
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 4275
    iget-object v3, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4276
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_91

    .line 4277
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4278
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_9a

    .line 4280
    :cond_91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 4281
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9a
    .catchall {:try_start_65 .. :try_end_9a} :catchall_a4

    .line 4284
    :goto_9a
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4285
    nop

    .line 4287
    if-eqz p1, :cond_a9

    .line 4288
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_a9

    .line 4284
    :catchall_a4
    move-exception p1

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 4285
    throw p1

    .line 4291
    :cond_a9
    :goto_a9
    return-void
.end method

.method public whitelist switchInputMethod(Ljava/lang/String;)V
    .registers 3

    .line 2440
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 2441
    return-void
.end method

.method public final whitelist switchInputMethod(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 2454
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2455
    return-void
.end method

.method public final whitelist switchToNextInputMethod(Z)Z
    .registers 3

    .line 2077
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result p1

    return p1
.end method

.method public final whitelist switchToPreviousInputMethod()Z
    .registers 2

    .line 2065
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mPrivOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method greylist-max-o updateCandidatesVisibility(Z)V
    .registers 3

    .line 2399
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result p1

    .line 2400
    :goto_8
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v0, p1, :cond_13

    .line 2401
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2402
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2404
    :cond_13
    return-void
.end method

.method greylist-max-o updateExtractFrameVisibility()V
    .registers 6

    .line 2250
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 2252
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2253
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    move v0, v2

    .line 2255
    :goto_19
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_28

    .line 2259
    :cond_1f
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 2260
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2263
    :goto_28
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4a

    .line 2264
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v0, :cond_39

    .line 2265
    goto :goto_3a

    .line 2266
    :cond_39
    const/4 v1, 0x2

    :goto_3a
    nop

    .line 2264
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2268
    if-eqz v1, :cond_4a

    .line 2269
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2273
    :cond_4a
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2274
    return-void
.end method

.method public whitelist updateFullscreenMode()V
    .registers 9

    .line 2114
    const-string v0, "IMS.updateFullscreenMode"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2115
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v4

    .line 2116
    :goto_16
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v6, :cond_1e

    move v5, v3

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 2117
    :goto_1f
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v6, v0, :cond_27

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v6, :cond_7d

    .line 2118
    :cond_27
    nop

    .line 2119
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 2120
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->reportFullscreenMode()V

    .line 2121
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 2122
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2123
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 2124
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2125
    if-eqz v0, :cond_4e

    .line 2126
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2128
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2129
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_5a

    .line 2131
    :cond_4e
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    const/4 v6, -0x2

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2133
    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2135
    :goto_5a
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2137
    if-eqz v0, :cond_79

    .line 2138
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_76

    .line 2139
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v5

    .line 2140
    if-eqz v5, :cond_76

    .line 2141
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 2144
    :cond_76
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 2146
    :cond_79
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    move v5, v3

    .line 2149
    :cond_7d
    if-eqz v5, :cond_8f

    .line 2150
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    xor-int/2addr v3, v5

    invoke-virtual {p0, v4, v0, v3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 2151
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 2153
    :cond_8f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2154
    return-void
.end method

.method public whitelist updateInputViewShown()V
    .registers 4

    .line 2323
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 2324
    :goto_e
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_32

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    if-eqz v2, :cond_32

    .line 2325
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 2326
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2327
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v0, :cond_32

    .line 2328
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 2329
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    .line 2330
    if-eqz v0, :cond_32

    .line 2331
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 2335
    :cond_32
    return-void
.end method
