.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;,
        Landroid/view/inputmethod/InputMethodManager$BindState;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;,
        Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$HideFlags;,
        Landroid/view/inputmethod/InputMethodManager$ShowFlags;,
        Landroid/view/inputmethod/InputMethodManager$HandwritingDelegateFlags;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_RETURN_TRUE_HIDE_SOFT_INPUT_FROM_WINDOW:J = 0x17932c7eL

.field private static final blacklist CACHE_KEY_CONNECTIONLESS_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.connectionless_stylus_handwriting"

.field private static final blacklist CACHE_KEY_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.stylus_handwriting"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field public static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field public static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field public static final whitelist HANDWRITING_DELEGATE_FLAG_HOME_DELEGATOR_ALLOWED:I = 0x1

.field public static final whitelist HIDE_IMPLICIT_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HIDE_NOT_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final blacklist INVALID_SEQ_ID:I = -0x1

.field private static final greylist-max-o MSG_BIND:I = 0x2

.field private static final blacklist MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field private static final greylist-max-o MSG_DUMP:I = 0x1

.field private static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x7

.field private static final greylist-max-o MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field private static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x5

.field private static final greylist-max-o MSG_SET_ACTIVE:I = 0x4

.field private static final blacklist MSG_SET_INTERACTIVE:I = 0xd

.field private static final blacklist MSG_SET_VISIBILITY:I = 0xe

.field private static final blacklist MSG_START_INPUT_RESULT:I = 0x28

.field private static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field private static final greylist-max-o MSG_UNBIND:I = 0x3

.field private static final blacklist MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field private static final blacklist NOT_A_SUBTYPE_ID:I = -0x1

.field private static final blacklist OPTIMIZE_NONEDITABLE_VIEWS:Z

.field private static final greylist-max-o PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final greylist-max-o REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final whitelist RESULT_HIDDEN:I = 0x3

.field public static final whitelist RESULT_SHOWN:I = 0x2

.field public static final whitelist RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final whitelist RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final whitelist SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_IMPLICIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final blacklist SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodManager"

.field static greylist sInstance:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sPreventImeStartupUnlessTextEditor:Z


# instance fields
.field private final blacklist mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActive:Z

.field private final blacklist mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

.field private greylist-max-o mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

.field private greylist-max-o mCurChannel:Landroid/view/InputChannel;

.field greylist mCurId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field greylist mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field blacklist mCurRootViewWindowFocused:Z

.field private greylist-max-o mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private blacklist mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field private greylist-max-o mCursorCandEnd:I

.field private greylist-max-o mCursorCandStart:I

.field greylist mCursorRect:Landroid/graphics/Rect;

.field private greylist-max-o mCursorSelEnd:I

.field private greylist-max-o mCursorSelStart:I

.field private final blacklist mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final blacklist mDisplayId:I

.field private final blacklist mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private greylist-max-o mFullscreenMode:Z

.field final greylist-max-p mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final blacklist mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

.field private blacklist mInitialSelEnd:I

.field private blacklist mInitialSelStart:I

.field private blacklist mLastPendingStartSeqId:I

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private blacklist mNextServedView:Landroid/view/View;

.field private final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

.field private blacklist mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

.field private greylist-max-o mRequestUpdateCursorAnchorInfoMonitorMode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mRestartOnNextWindowFocus:Z

.field private greylist-max-o mServedConnecting:Z

.field private blacklist mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private blacklist mServedInputConnectionHandler:Landroid/os/Handler;

.field private blacklist mServedView:Landroid/view/View;

.field final greylist mService:Lcom/android/internal/view/IInputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field greylist mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$KGScHDK9-7Fekxsisng64hyxDzA(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$startInputInner$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wwjtNFnHFbU0BPAF4gKxkRM-a3k(Landroid/view/inputmethod/InputMethodManager;IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->lambda$updateSelection$5(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeBackCallbackProxy(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeBackCallbackProxy;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearCurRootViewIfNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnectionInternal(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monImeFocusLost(Landroid/view/inputmethod/InputMethodManager;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->onImeFocusLost(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->onViewFocusChangedInternal(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportInputConnectionOpened(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhasViewImeRequestedVisible(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->setImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    .line 458
    nop

    .line 459
    const-string v0, "debug.imm.optimize_noneditable_views"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z

    .line 458
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .registers 8

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 316
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 587
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    .line 591
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 595
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 678
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 694
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 698
    new-instance v2, Landroid/util/Pools$SimplePool;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 700
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 703
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v2, p0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 1489
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v2, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 1670
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1671
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1672
    new-instance p1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {p1, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1673
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1674
    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance p2, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {p2, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {p1, p3, p2, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1676
    return-void
.end method

.method private static blacklist areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 4

    .line 2180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2181
    return v0

    .line 2183
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_a

    goto :goto_17

    .line 2186
    :cond_a
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    if-ne p0, p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 2184
    :cond_17
    :goto_17
    return v1
.end method

.method private static greylist-max-o canStartInput(Landroid/view/View;)Z
    .registers 2

    .line 828
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private blacklist checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z
    .registers 7

    .line 3830
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_6

    .line 3831
    return v1

    .line 3833
    :cond_6
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne p2, v0, :cond_f

    if-nez p1, :cond_f

    .line 3834
    return v1

    .line 3836
    :cond_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 3837
    sget-object p2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 3839
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 3840
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_2e
    const-string v3, "<none>"

    :goto_30
    filled-new-array {v0, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 3837
    const-string v0, "checkFocus: view=%s next=%s force=%s package=%s"

    invoke-static {p2, v0, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3850
    :cond_39
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez p1, :cond_44

    .line 3851
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 3852
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3853
    return v1

    .line 3855
    :cond_44
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3856
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz p1, :cond_51

    .line 3857
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 3859
    :cond_51
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist clearAccessibilityBindingLocked(I)V
    .registers 5

    .line 2136
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2137
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Clearing accessibility binding %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2141
    :cond_15
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2142
    return-void
.end method

.method private blacklist clearAllAccessibilityBindingLocked()V
    .registers 4

    .line 2149
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2150
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Clearing all accessibility bindings"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2154
    :cond_10
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2155
    return-void
.end method

.method private greylist-max-o clearBindingLocked()V
    .registers 4

    .line 2118
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2119
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Clearing binding!"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2123
    :cond_10
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 2125
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 2126
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2128
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 2129
    return-void
.end method

.method private greylist-max-o clearConnectionLocked()V
    .registers 3

    .line 2195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2196
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 2197
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_12

    .line 2198
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2199
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2200
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2202
    :cond_12
    return-void
.end method

.method private blacklist clearCurRootViewIfNeeded()Z
    .registers 3

    .line 2247
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    if-nez v0, :cond_13

    .line 2248
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 2249
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->-$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V

    .line 2251
    const/4 v0, 0x1

    return v0

    .line 2254
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist createInputConnection(Landroid/view/View;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation

    .line 5260
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 5264
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 5265
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5266
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5267
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    .line 5268
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5269
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "Starting input: editorInfo=%s ic=%s"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5278
    :cond_31
    if-nez p0, :cond_3b

    .line 5279
    sget-object v1, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5280
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5282
    :cond_3b
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static blacklist createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 1610
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    goto :goto_f

    .line 1611
    :cond_b
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    .line 1610
    :goto_f
    return-object p0
.end method

.method private static blacklist createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6

    .line 1616
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_20

    .line 1620
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1630
    :try_start_f
    iget-object p1, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p1, v0, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    .line 1633
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    nop

    .line 1635
    return-object v1

    .line 1633
    :catchall_1b
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    throw p0

    .line 1618
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IInputMethodManager is not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6

    .line 1641
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1642
    nop

    .line 1643
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1666
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v1
.end method

.method private greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4983
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4984
    return-void

    .line 4987
    :cond_7
    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Input method client state for "

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

    .line 4989
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFallbackInputConnection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mActive="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mRestartOnNextWindowFocus="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mBindSequence="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4992
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mCurImeId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4993
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4990
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4994
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFullscreenMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4995
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 4996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurMethod="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p3, p3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_be

    .line 4998
    :cond_b9
    const-string p2, "  mCurMethod= null"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5000
    :goto_be
    const/4 p2, 0x0

    move p3, p2

    :goto_c0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_f7

    .line 5001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAccessibilityInputMethodSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5002
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5003
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5001
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5000
    add-int/lit8 p3, p3, 0x1

    goto :goto_c0

    .line 5005
    :cond_f7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCurRootView="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5006
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mServedView="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5007
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNextServedView="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5008
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mServedConnecting="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5009
    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p3, :cond_16c

    .line 5010
    const-string p3, "  mCurrentEditorInfo:"

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5011
    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v0, "    "

    invoke-virtual {p3, p1, v0, p2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_171

    .line 5013
    :cond_16c
    const-string p2, "  mCurrentEditorInfo: null"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5015
    :goto_171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mServedInputConnection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5016
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mServedInputConnectionHandler="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5017
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastPendingStartSeqId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5018
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCompletions="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5019
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCursorRect="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCursorSelStart="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mCursorSelEnd="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mCursorCandStart="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mCursorCandEnd="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5024
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    const-string p3, "  "

    invoke-virtual {p2, p1, p3}, Landroid/window/ImeBackCallbackProxy;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5025
    return-void
.end method

.method public static blacklist ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .registers 2

    .line 381
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_e

    .line 382
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 384
    :cond_e
    return-void
.end method

.method private greylist-max-o finishedInputEvent(IZZ)V
    .registers 9

    .line 4484
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4485
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 4486
    if-gez p1, :cond_d

    .line 4487
    monitor-exit v0

    return-void

    .line 4490
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4491
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4492
    const-string p1, "aq:imm"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-wide/16 v3, 0x4

    invoke-static {v3, v4, p1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4494
    if-eqz p3, :cond_5e

    .line 4495
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 4496
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p3, "Timeout waiting for IME to handle input event after %s ms: %s"

    .line 4498
    const-wide/16 v2, 0x9c4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 4496
    invoke-static {p1, p3, v2}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_64

    .line 4500
    :cond_43
    const-string p1, "InputMethodManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 4504
    :cond_5e
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 p3, 0x6

    invoke-virtual {p1, p3, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 4506
    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_69

    .line 4508
    invoke-direct {p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4509
    return-void

    .line 4506
    :catchall_69
    move-exception p1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p1
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .registers 7

    .line 4529
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 4531
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4532
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_26

    .line 4533
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4534
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v5, v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4535
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4536
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4532
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4538
    :cond_26
    return-void
.end method

.method private blacklist forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;)V"
        }
    .end annotation

    .line 5252
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5253
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5255
    :cond_17
    return-void
.end method

.method public static blacklist forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 4

    .line 1687
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1690
    if-nez v0, :cond_b

    .line 1691
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1694
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1110007

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    .line 1696
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 5

    .line 1701
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1702
    :goto_5
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1703
    :try_start_8
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1704
    if-eqz v2, :cond_14

    .line 1705
    monitor-exit v1

    return-object v2

    .line 1707
    :cond_14
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    .line 1709
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    .line 1710
    sput-object p1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1712
    :cond_20
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1713
    monitor-exit v1

    return-object p1

    .line 1714
    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw p0
.end method

.method private blacklist getBindSequenceLocked()I
    .registers 2

    .line 5186
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mBindSequence:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method private blacklist getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .registers 8

    .line 760
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 761
    return-object v0

    .line 769
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 770
    if-nez v1, :cond_b

    .line 771
    return-object v0

    .line 773
    :cond_b
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 774
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_14

    .line 776
    return-object v0

    .line 778
    :cond_14
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 779
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 780
    const-string v3, "InputMethodManager"

    if-nez v1, :cond_4b

    .line 781
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 782
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "b/117267690: Failed to get non-null fallback IMM. view=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4a

    .line 785
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_4a
    return-object v0

    .line 790
    :cond_4b
    iget v4, v1, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v4, v2, :cond_98

    .line 791
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 792
    sget-object v3, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 794
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 792
    const-string v1, "b/117267690: Failed to get fallback IMM with expected displayId=%d actual IMM#displayId=%d view=%s"

    invoke-static {v3, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_97

    .line 797
    :cond_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " actual IMM#displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_97
    return-object v0

    .line 803
    :cond_98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " InputMethodManager displayId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    return-object v1
.end method

.method private blacklist getImeIdLocked()Ljava/lang/String;
    .registers 2

    .line 5181
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static greylist getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1728
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1732
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1733
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNextServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1112
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private blacklist getServedViewLocked()Landroid/view/View;
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private blacklist getStartInputFlags(Landroid/view/View;I)I
    .registers 3

    .line 3790
    or-int/lit8 p2, p2, 0x1

    .line 3791
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3792
    or-int/lit8 p2, p2, 0x2

    .line 3794
    :cond_a
    return p2
.end method

.method private blacklist hasActiveInputConnectionInternal(Landroid/view/View;)Z
    .registers 5

    .line 1081
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1082
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    .line 1086
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1087
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    monitor-exit v0

    .line 1086
    return v2

    .line 1083
    :cond_22
    :goto_22
    monitor-exit v0

    return v2

    .line 1088
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private blacklist hasServedByInputMethodLocked(Landroid/view/View;)Z
    .registers 3

    .line 1120
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 1121
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_f

    .line 1122
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 1121
    :goto_12
    return p1
.end method

.method private static blacklist hasViewImeRequestedVisible(Landroid/view/View;)Z
    .registers 3

    .line 847
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 848
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 849
    if-eqz v1, :cond_1a

    .line 850
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 851
    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getRequestedVisibleTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr p0, v1

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    .line 850
    :cond_19
    return v0

    .line 854
    :cond_1a
    return v0
.end method

.method private blacklist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 11

    .line 2634
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p2

    .line 2635
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 2636
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a9

    .line 2638
    if-nez p5, :cond_24

    .line 2639
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    .line 2640
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result p5

    .line 2639
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-interface {p2, v0, v1, p4, p5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p5

    .line 2641
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p2

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p5, v1, p4, v0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2644
    :cond_24
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p2

    const-string p4, "InputMethodManager#hideSoftInputFromWindow"

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p0, v0}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2646
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2647
    iget-object p4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p4

    .line 2649
    :try_start_34
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p2

    .line 2650
    const-wide/32 v1, 0x17932c7e

    const/4 v3, 0x1

    if-eqz p2, :cond_8d

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eq v4, p1, :cond_45

    goto :goto_8d

    .line 2660
    :cond_45
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p5, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2662
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 2663
    if-eqz p1, :cond_87

    .line 2664
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_67

    .line 2667
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 p2, 0x42

    invoke-interface {p1, p5, p2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2671
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p1

    monitor-exit p4

    return p1

    .line 2675
    :cond_67
    nop

    .line 2676
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p2

    .line 2675
    invoke-static {p2}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result p2

    .line 2677
    if-eqz p3, :cond_7b

    .line 2678
    nop

    .line 2679
    if-nez p2, :cond_76

    goto :goto_77

    .line 2680
    :cond_76
    const/4 v3, 0x3

    :goto_77
    nop

    .line 2678
    invoke-virtual {p3, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2682
    :cond_7b
    const/4 p3, 0x0

    invoke-static {p1, p3, p5}, Landroid/view/inputmethod/InputMethodManager;->setImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2683
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p1

    if-nez p1, :cond_87

    .line 2687
    monitor-exit p4

    return p2

    .line 2691
    :cond_87
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p1

    monitor-exit p4

    return p1

    .line 2651
    :cond_8d
    :goto_8d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p5, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2652
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p5, v3, p2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2656
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p1

    monitor-exit p4

    return p1

    .line 2693
    :catchall_a6
    move-exception p1

    monitor-exit p4
    :try_end_a8
    .catchall {:try_start_34 .. :try_end_a8} :catchall_a6

    throw p1

    .line 2636
    :catchall_a9
    move-exception p1

    :try_start_aa
    monitor-exit p2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p1
.end method

.method public static blacklist invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V
    .registers 1

    .line 739
    const-string v0, "cache_key.system_server.connectionless_stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public static blacklist invalidateLocalStylusHandwritingAvailabilityCaches()V
    .registers 1

    .line 729
    const-string v0, "cache_key.system_server.stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private greylist-max-o invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 3

    .line 4513
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 4514
    iget-object p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 4517
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_1f

    .line 4521
    :cond_12
    iget-object p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 4522
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4523
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4525
    :goto_1f
    return-void
.end method

.method private static greylist-max-o isAutofillUIShowing(Landroid/view/View;)Z
    .registers 2

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillManager;

    .line 745
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private blacklist isImeSessionAvailableLocked()Z
    .registers 2

    .line 5176
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist isInEditMode()Z
    .registers 1

    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist isInEditModeInternal()Z
    .registers 1

    .line 1605
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method private blacklist isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z
    .registers 7

    .line 3698
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_16

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3701
    move-object p0, p1

    move-object p1, v0

    invoke-virtual/range {p0 .. p5}, Landroid/view/inputmethod/ViewFocusParameterInfo;->sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 3698
    :goto_17
    return p1
.end method

.method static synthetic blacklist lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1645
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    .line 1646
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p2, 0x0

    .line 1649
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1646
    if-ne p0, p1, :cond_12

    .line 1647
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1648
    :cond_12
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_17

    .line 1649
    return-object v0

    .line 1650
    :cond_17
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_22

    .line 1651
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1652
    :cond_22
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_27

    .line 1653
    return-object v0

    .line 1654
    :cond_27
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_2c

    .line 1655
    return-object v0

    .line 1656
    :cond_2c
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_31

    .line 1657
    return-object v0

    .line 1658
    :cond_31
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3b

    .line 1659
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1660
    :cond_3b
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_46

    .line 1661
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1663
    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$doInvalidateInput$3(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 4

    .line 3387
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$getShortcutInputMethodsAndSubtypes$6(Landroid/view/inputmethod/InputMethodInfo;)I
    .registers 1

    .line 4783
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$sendFailureCallback$2(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2848
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$setImeVisibilityOnInsetsController$1(ZLandroid/view/InsetsController;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 2828
    if-eqz p0, :cond_a

    .line 2829
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/InsetsController;->show(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_11

    .line 2831
    :cond_a
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/InsetsController;->hide(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2833
    :goto_11
    return-void
.end method

.method private synthetic blacklist lambda$startInputInner$4(I)V
    .registers 8

    .line 3497
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$5(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 13

    .line 3983
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v0, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 8

    .line 4543
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4544
    if-nez v0, :cond_10

    .line 4545
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    .line 4547
    :cond_10
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4548
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 4549
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 4550
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 4551
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 4552
    return-object v0
.end method

.method private blacklist onImeFocusLost(Landroid/view/ViewRootImpl;)V
    .registers 7

    .line 1024
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1025
    and-int/lit8 v0, v0, 0xf

    .line 1027
    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 1030
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x3a

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 1034
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1035
    sget-object v1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "onImeFocusLost, hiding IME because of STATE_ALWAYS_HIDDEN"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    :cond_25
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/InsetsController;->hide(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1043
    :cond_30
    return-void
.end method

.method private blacklist onViewFocusChangedInternal(Landroid/view/View;Z)V
    .registers 8

    .line 3864
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_46

    .line 3867
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3868
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3869
    :try_start_10
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v0, :cond_16

    .line 3870
    monitor-exit v1

    return-void

    .line 3872
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_41

    .line 3875
    :cond_23
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3876
    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v3, "onViewFocusChangedInternal, view=%s"

    .line 3877
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 3876
    invoke-static {v2, v3, v4}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3892
    :cond_38
    if-eqz p2, :cond_3c

    .line 3893
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 3895
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_43

    .line 3896
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 3897
    return-void

    .line 3873
    :cond_41
    :goto_41
    :try_start_41
    monitor-exit v1

    return-void

    .line 3895
    :catchall_43
    move-exception p1

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw p1

    .line 3865
    :cond_46
    :goto_46
    return-void
.end method

.method public static greylist peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1747
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1751
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1752
    :try_start_f
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1753
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 8

    .line 5196
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 5197
    return v0

    .line 5200
    :cond_4
    array-length v1, p2

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, p2, v2

    .line 5201
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5202
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5203
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 5204
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5205
    const/4 p1, 0x1

    return p1

    .line 5200
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5208
    :cond_23
    return v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3

    .line 4557
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 4558
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4559
    return-void
.end method

.method private blacklist reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 5

    .line 3707
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 3708
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 3709
    if-eqz p1, :cond_10

    .line 3710
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 3712
    :cond_10
    return-void
.end method

.method private blacklist sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2845
    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 2848
    :cond_5
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2849
    return-void

    .line 2846
    :cond_e
    :goto_e
    return-void
.end method

.method private greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 5

    .line 4428
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4429
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 4430
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 4431
    monitor-exit v0

    return-void

    .line 4434
    :cond_c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 4435
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 4437
    invoke-direct {p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4438
    return-void

    .line 4435
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private greylist-max-o sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 8

    .line 4443
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_b5

    .line 4444
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v0, :cond_18

    .line 4445
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 4448
    :cond_18
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4449
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 4450
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 4451
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4452
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 4453
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4452
    const-wide/16 v3, 0x4

    const-string v5, "aq:imm"

    invoke-static {v3, v4, v5, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4455
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4456
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4457
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4458
    const/4 p1, -0x1

    return p1

    .line 4461
    :cond_4c
    sget-boolean p1, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    const-string v2, "InputMethodManager"

    if-eqz p1, :cond_7b

    .line 4462
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 4463
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "Dropping event because IME is evicted: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b5

    .line 4466
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event because IME is evicted: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 4469
    :cond_7b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 4470
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 4471
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 4470
    const-string v2, "Unable to send input event to IME: %s dropping: %s"

    invoke-static {p1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b5

    .line 4474
    :cond_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to IME: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " dropping: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    :cond_b5
    :goto_b5
    return v1
.end method

.method private static blacklist setImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8

    .line 2782
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 2783
    const-string v1, "show"

    const-string v2, "hide"

    const/16 v3, 0x42

    if-nez v0, :cond_46

    .line 2784
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2785
    sget-object p0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2787
    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2785
    const-string v0, "Cannot set IME visibility: no view available for %s"

    invoke-static {p0, v0, p1}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    .line 2789
    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set IME visibility: no view available for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_30

    goto :goto_31

    .line 2790
    :cond_30
    move-object v1, v2

    :goto_31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2789
    const-string p1, "InputMethodManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :goto_3e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2794
    return-void

    .line 2797
    :cond_46
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2798
    if-nez v0, :cond_54

    .line 2800
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2802
    return-void

    .line 2804
    :cond_54
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2807
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object p0

    .line 2808
    const/16 v3, 0x50

    if-nez p0, :cond_6b

    .line 2809
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2811
    return-void

    .line 2813
    :cond_6b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_9a

    .line 2819
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2820
    sget-object v3, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2822
    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    move-object v1, v2

    :goto_88
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2820
    const-string v2, "Rescheduling %s IME visibility to view thread"

    invoke-static {v3, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2827
    :cond_91
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;-><init>(ZLandroid/view/InsetsController;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_ab

    .line 2835
    :cond_9a
    if-eqz p1, :cond_a4

    .line 2836
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsController;->show(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_ab

    .line 2838
    :cond_a4
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsController;->hide(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2841
    :goto_ab
    return-void
.end method

.method private greylist-max-o showInputMethodPickerLocked()V
    .registers 3

    .line 4590
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 4592
    return-void
.end method

.method private blacklist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z
    .registers 15

    .line 2435
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2436
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v1

    .line 2435
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 2437
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result p1

    return p1
.end method

.method private blacklist showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    .registers 11

    .line 2443
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v2, p5, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2445
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#showSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2448
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2449
    if-eqz v0, :cond_23

    .line 2450
    move-object p0, v0

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result p1

    return p1

    .line 2453
    :cond_23
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2454
    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p3

    .line 2455
    :try_start_29
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_76

    .line 2456
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p4

    invoke-interface {p4, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2457
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p4

    new-instance p5, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p4, p2, v1, p5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2459
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 2460
    sget-object p2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p4, "Ignoring showSoftInput() as view=%s is not served."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_74

    .line 2463
    :cond_56
    const-string p2, "InputMethodManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Ignoring showSoftInput() as view="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " is not served."

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :goto_74
    monitor-exit p3

    return v0

    .line 2468
    :cond_76
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p5

    invoke-interface {p5, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2470
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 2475
    const/16 p5, 0x3d

    if-eqz p1, :cond_be

    .line 2476
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsController;->computeUserAnimatingTypes()I

    move-result v3

    .line 2477
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_9e

    .line 2478
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    .line 2479
    invoke-virtual {v3}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2480
    :cond_9e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p2, p5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2482
    if-eqz p4, :cond_b9

    .line 2483
    nop

    .line 2484
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p5

    .line 2483
    invoke-static {p5}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result p5

    .line 2485
    nop

    .line 2486
    if-eqz p5, :cond_b4

    goto :goto_b5

    .line 2487
    :cond_b4
    const/4 v0, 0x2

    :goto_b5
    nop

    .line 2485
    invoke-virtual {p4, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2489
    :cond_b9
    invoke-static {p1, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->setImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2490
    monitor-exit p3

    return v1

    .line 2492
    :cond_be
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, p5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2494
    monitor-exit p3

    return v0

    .line 2495
    :catchall_c7
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_ca
    .catchall {:try_start_29 .. :try_end_ca} :catchall_c7

    throw p1
.end method

.method private blacklist startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 14

    .line 3028
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3033
    if-eqz v0, :cond_1b

    .line 3034
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    move-object p4, v3

    move-object p3, v4

    goto :goto_21

    .line 3033
    :cond_1b
    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 3038
    :goto_21
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3039
    iget-object p6, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p6

    .line 3040
    :try_start_27
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iget-object p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq p1, p5, :cond_49

    .line 3041
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 3042
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p2, "Ignoring startConnectionlessStylusHandwriting: View\'s window does not have focus."

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47

    .line 3046
    :cond_40
    const-string p1, "InputMethodManager"

    const-string p2, "Ignoring startConnectionlessStylusHandwriting: View\'s window does not have focus."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :goto_47
    monitor-exit p6

    return-void

    .line 3051
    :cond_49
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3052
    move-object p5, p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    move-object v0, p5

    new-instance p5, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;

    invoke-direct {p5, v5, v6}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 3051
    move-object p0, v0

    invoke-static/range {p0 .. p5}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z

    .line 3055
    monitor-exit p6

    .line 3056
    return-void

    .line 3055
    :catchall_5c
    move-exception v0

    move-object p1, v0

    monitor-exit p6
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_5c

    throw p1
.end method

.method private greylist-max-o startInputInner(ILandroid/os/IBinder;III)Z
    .registers 29

    .line 3447
    move-object/from16 v1, p0

    move/from16 v3, p1

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3448
    :try_start_7
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v15

    .line 3451
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3452
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Starting input: view=%s reason=%s"

    .line 3453
    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 3454
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 3452
    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3460
    :cond_24
    const/4 v7, 0x0

    if-nez v15, :cond_38

    .line 3461
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3462
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "ABORT input: no served view!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3466
    :cond_36
    monitor-exit v2

    return v7

    .line 3468
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_273

    .line 3474
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3475
    if-nez v2, :cond_52

    .line 3480
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3481
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "ABORT input: no handler for view! Close current input."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3486
    :cond_4e
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3487
    return v7

    .line 3489
    :cond_52
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v0, v4, :cond_74

    .line 3492
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3493
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Starting input: reschedule to view thread"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3497
    :cond_6b
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3498
    return v7

    .line 3501
    :cond_74
    if-nez p2, :cond_ac

    .line 3502
    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3503
    if-nez v0, :cond_94

    .line 3504
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 3505
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "ABORT input: ServedView must be attached to a Window"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_93

    .line 3508
    :cond_8c
    const-string v0, "InputMethodManager"

    const-string v1, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :goto_93
    return v7

    .line 3512
    :cond_94
    move/from16 v4, p3

    invoke-direct {v1, v15, v4}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v4

    .line 3513
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3514
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v8, v0

    goto :goto_b4

    .line 3501
    :cond_ac
    move/from16 v4, p3

    move-object/from16 v8, p2

    move/from16 v5, p4

    move/from16 v6, p5

    .line 3520
    :goto_b4
    invoke-static {v15}, Landroid/view/inputmethod/InputMethodManager;->createInputConnection(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    .line 3521
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/view/inputmethod/InputConnection;

    .line 3522
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/view/inputmethod/EditorInfo;

    .line 3525
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v11

    .line 3528
    :try_start_c4
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v12

    .line 3529
    if-ne v12, v15, :cond_232

    iget-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v0, :cond_d3

    move-object/from16 v20, v11

    move-object v2, v15

    goto/16 :goto_235

    .line 3555
    :cond_d3
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v0, :cond_d9

    .line 3556
    or-int/lit8 v4, v4, 0x4

    .line 3559
    :cond_d9
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 3562
    invoke-virtual {v10}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3565
    iget-object v13, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3567
    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3568
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const/4 v14, 0x0

    if-eqz v0, :cond_fa

    .line 3569
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 3570
    iput-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3571
    iput-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3574
    :cond_fa
    if-eqz v9, :cond_136

    .line 3575
    iget v0, v10, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 3576
    iget v0, v10, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 3577
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 3578
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 3579
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3580
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3581
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3582
    iput-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_118
    .catchall {:try_start_c4 .. :try_end_118} :catchall_26c

    .line 3583
    nop

    .line 3585
    :try_start_119
    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_11d
    .catch Ljava/lang/AbstractMethodError; {:try_start_119 .. :try_end_11d} :catch_11e
    .catchall {:try_start_119 .. :try_end_11d} :catchall_26c

    .line 3588
    goto :goto_120

    .line 3586
    :catch_11e
    move-exception v0

    move-object v0, v14

    .line 3589
    :goto_120
    nop

    .line 3590
    :try_start_121
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3591
    new-instance v7, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3592
    if-eqz v0, :cond_12c

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_130

    :cond_12c
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_130
    invoke-direct {v7, v2, v9, v1, v15}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 3593
    move-object/from16 v17, v0

    goto :goto_13d

    .line 3594
    :cond_136
    nop

    .line 3595
    nop

    .line 3596
    iput-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    move-object v7, v14

    move-object/from16 v17, v7

    .line 3598
    :goto_13d
    iput-object v7, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3600
    move-object/from16 v18, v14

    invoke-static {v12}, Landroid/view/inputmethod/InputMethodManager;->hasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v14

    .line 3602
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 3603
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "START INPUT: view=%s ic=%s editorInfo=%s startInputFlags=%s imeRequestedVisible=%s"

    .line 3606
    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    .line 3607
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    .line 3608
    move/from16 p2, v4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v12, v9, v10, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 3603
    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_167

    .line 3602
    :cond_165
    move/from16 p2, v4

    .line 3617
    :goto_167
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z

    const/16 v19, 0x1

    if-eqz v0, :cond_184

    if-nez v13, :cond_184

    if-nez v9, :cond_184

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 3620
    move/from16 v4, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z

    move-result v0

    move v2, v6

    move-object v6, v1

    move v1, v2

    move v2, v3

    if-eqz v0, :cond_189

    move/from16 v12, v19

    goto :goto_18a

    .line 3617
    :cond_184
    move v2, v6

    move-object v6, v1

    move v1, v2

    move/from16 v2, p2

    .line 3620
    :cond_189
    const/4 v12, 0x0

    .line 3623
    :goto_18a
    new-instance v0, Landroid/view/inputmethod/ViewFocusParameterInfo;

    move v4, v5

    move v5, v1

    iget-object v1, v6, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/ViewFocusParameterInfo;-><init>(Landroid/view/inputmethod/EditorInfo;IIII)V

    move v1, v5

    move v5, v4

    iput-object v0, v6, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 3625
    if-eqz v12, :cond_1af

    .line 3626
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 3627
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "Not calling IMMS due to switching between non-editable views."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3632
    :cond_1ab
    monitor-exit v11

    const/16 v16, 0x0

    return v16

    .line 3634
    :cond_1af
    iget-object v0, v10, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_1ba

    .line 3635
    iget-object v0, v10, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    goto :goto_1be

    :cond_1ba
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_1be
    move v12, v0

    .line 3636
    const-string v0, "IMM.startInputOrWindowGainedFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3639
    if-nez v7, :cond_1cb

    move-object/from16 v0, v18

    goto :goto_1cf

    .line 3640
    :cond_1cb
    invoke-virtual {v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v0

    .line 3642
    :goto_1cf
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->computerControlTyping()Z

    move-result v13

    if-eqz v13, :cond_1dd

    if-nez v7, :cond_1d8

    goto :goto_1dd

    .line 3644
    :cond_1d8
    invoke-virtual {v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteComputerControlInputConnection()Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    move-result-object v13

    goto :goto_1df

    .line 3643
    :cond_1dd
    :goto_1dd
    move-object/from16 v13, v18

    .line 3646
    :goto_1df
    move-wide/from16 v20, v3

    move v4, v2

    iget-object v2, v6, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3651
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 p2, v0

    iget-object v0, v6, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    .line 3652
    invoke-virtual {v0}, Landroid/window/ImeBackCallbackProxy;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v0
    :try_end_1f6
    .catchall {:try_start_121 .. :try_end_1f6} :catchall_26c

    .line 3647
    move-object/from16 v18, v9

    move-object/from16 v16, v15

    move-wide/from16 v21, v20

    move-object/from16 v9, p2

    move-object v15, v6

    move-object/from16 v20, v11

    move v6, v1

    move v11, v3

    move-object v3, v8

    move/from16 v1, p1

    move-object v8, v7

    move-object v7, v10

    move-object v10, v13

    move-object v13, v0

    :try_start_20a
    invoke-static/range {v1 .. v14}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;Z)I

    move-result v2

    move-object v5, v7

    .line 3654
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 3657
    if-eqz v18, :cond_22c

    .line 3658
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->invalidateInputCallsRestart()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 3659
    iput v2, v15, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    .line 3661
    :cond_21c
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$6;

    move v7, v2

    move-object v1, v15

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodManager$6;-><init>(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;I)V

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    goto :goto_230

    .line 3681
    :cond_22c
    move-object v1, v15

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 3683
    :goto_230
    monitor-exit v20

    .line 3684
    return v19

    .line 3529
    :cond_232
    move-object/from16 v20, v11

    move-object v2, v15

    .line 3531
    :goto_235
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_254

    .line 3532
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Starting input: finished by someone else. view=%s servedView=%s mServedConnecting=%s"

    .line 3535
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 3536
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 3532
    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3543
    :cond_254
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_268

    const/4 v0, 0x6

    if-ne v3, v0, :cond_268

    .line 3546
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3547
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3546
    invoke-direct {v1, v0, v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    .line 3550
    :cond_268
    monitor-exit v20

    const/16 v16, 0x0

    return v16

    .line 3683
    :catchall_26c
    move-exception v0

    move-object/from16 v20, v11

    :goto_26f
    monitor-exit v20
    :try_end_270
    .catchall {:try_start_20a .. :try_end_270} :catchall_271

    throw v0

    :catchall_271
    move-exception v0

    goto :goto_26f

    .line 3468
    :catchall_273
    move-exception v0

    :try_start_274
    monitor-exit v2
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_273

    throw v0
.end method

.method private blacklist startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z
    .registers 13

    .line 1095
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1096
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1097
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1098
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1099
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    .line 1100
    nop

    .line 1101
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    :cond_13
    move-object v3, v0

    .line 1100
    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p1

    return p1

    .line 1099
    :catchall_1e
    move-exception v0

    move-object p1, v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1e

    throw p1
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 10

    .line 2854
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2863
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 2867
    :goto_a
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2868
    if-eqz v3, :cond_1b

    .line 2869
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-object p1, v7

    move-object p2, v8

    goto :goto_20

    .line 2868
    :cond_1b
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object p1, p4

    move-object p2, p5

    .line 2873
    :goto_20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .line 2875
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2876
    iget-object p4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p4

    .line 2877
    :try_start_2a
    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p5

    if-nez p5, :cond_65

    .line 2878
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p3

    if-eqz p3, :cond_42

    .line 2879
    sget-object p3, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p5, "Ignoring startStylusHandwriting as view=%s is not served."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, p5, v0}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    .line 2882
    :cond_42
    const-string p3, "InputMethodManager"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring startStylusHandwriting as view="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " is not served."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :goto_60
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2886
    monitor-exit p4

    return v1

    .line 2888
    :cond_65
    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p5

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq p5, v3, :cond_89

    .line 2889
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p3

    if-eqz p3, :cond_7d

    .line 2890
    sget-object p3, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p5, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p5, v0}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    .line 2893
    :cond_7d
    const-string p3, "InputMethodManager"

    const-string p5, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {p3, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :goto_84
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2897
    monitor-exit p4

    return v1

    .line 2899
    :cond_89
    if-nez p3, :cond_ce

    .line 2900
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2901
    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2902
    if-eqz v2, :cond_b9

    .line 2903
    new-instance v8, Landroid/view/inputmethod/InputMethodManager$5;

    invoke-direct {v8, p0, p3, p5}, Landroid/view/inputmethod/InputMethodManager$5;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 2913
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2914
    move-object p3, v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2913
    move v7, v6

    move-object v6, v5

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z

    move-result p3

    if-nez p3, :cond_b7

    .line 2916
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2918
    :cond_b7
    monitor-exit p4

    return v0

    .line 2920
    :cond_b9
    move-object p3, v4

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2921
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2920
    invoke-static {p1, p2, p3, v5, v6}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit p4

    return p1

    .line 2925
    :cond_ce
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 2926
    monitor-exit p4

    return v1

    .line 2928
    :catchall_d5
    move-exception v0

    move-object p1, v0

    monitor-exit p4
    :try_end_d8
    .catchall {:try_start_2a .. :try_end_d8} :catchall_d5

    throw p1
.end method

.method static blacklist tearDownEditMode()V
    .registers 2

    .line 1585
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1589
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    const/4 v1, 0x0

    :try_start_a
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1591
    monitor-exit v0

    .line 1592
    return-void

    .line 1591
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    .line 1586
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 3

    .line 2159
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2160
    return-void

    .line 2166
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_18

    .line 2167
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 2168
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 2169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 2172
    :cond_18
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_21

    .line 2173
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2175
    :cond_21
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 2176
    return-void
.end method


# virtual methods
.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3254
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    .line 3261
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3215
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    nop

    .line 3217
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->homeScreenHandwritingDelegator()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3218
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    move v4, v0

    goto :goto_12

    .line 3217
    :cond_10
    const/4 v0, 0x0

    move v4, v0

    .line 3220
    :goto_12
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3222
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .registers 4

    .line 3150
    nop

    .line 3151
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3152
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v1

    .line 3150
    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z
    .registers 4

    .line 3181
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    nop

    .line 3183
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    .line 3182
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist addVirtualStylusIdForTestSession()V
    .registers 3

    .line 3721
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3722
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 3723
    monitor-exit v0

    .line 3724
    return-void

    .line 3723
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist checkFocus()V
    .registers 9

    .line 3804
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3805
    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_9

    .line 3806
    monitor-exit v1

    return-void

    .line 3808
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3809
    monitor-exit v1

    return-void

    .line 3811
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    .line 3812
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    .line 3815
    return-void

    .line 3811
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method greylist closeCurrentInput()V
    .registers 7

    .line 3902
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 3904
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3908
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3909
    :try_start_1c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    .line 3910
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3911
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3913
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3914
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "No current root view, ignoring closeCurrentInput()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    .line 3917
    :cond_44
    const-string v0, "InputMethodManager"

    const-string v2, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    :goto_4b
    monitor-exit v1

    return-void

    .line 3921
    :cond_4d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3922
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4, v0}, Landroid/view/inputmethod/InputMethodManager;->setImeVisibilityOnInsetsController(Landroid/view/ViewRootImpl;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3923
    monitor-exit v1

    .line 3924
    return-void

    .line 3923
    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 14

    .line 4353
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4354
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 4355
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    .line 4356
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 4357
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2a

    .line 4358
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_2a

    .line 4359
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2a

    .line 4360
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4361
    monitor-exit v1

    return v2

    .line 4365
    :cond_2a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 4366
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v3, "DISPATCH INPUT EVENT: %s"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4372
    :cond_3f
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v6, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object p1

    .line 4374
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 4376
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result p1

    monitor-exit v1

    return p1

    .line 4380
    :cond_5a
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4381
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4382
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 4383
    monitor-exit v1

    const/4 p1, -0x1

    return p1

    .line 4385
    :cond_6c
    monitor-exit v1

    .line 4386
    const/4 p1, 0x0

    return p1

    .line 4385
    :catchall_6f
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_6f

    throw p1
.end method

.method public whitelist dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 5

    .line 4405
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4406
    if-eqz v0, :cond_a

    .line 4407
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 4408
    return-void

    .line 4411
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4412
    if-eqz p1, :cond_16

    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_17

    .line 4422
    :catchall_14
    move-exception p1

    goto :goto_2a

    .line 4412
    :cond_16
    const/4 p1, 0x0

    .line 4413
    :goto_17
    if-nez p1, :cond_23

    .line 4414
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 4415
    if-eqz v1, :cond_23

    .line 4416
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    .line 4419
    :cond_23
    if-eqz p1, :cond_28

    .line 4420
    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4422
    :cond_28
    monitor-exit v0

    .line 4423
    return-void

    .line 4422
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_14

    throw p1
.end method

.method public whitelist displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4

    .line 2259
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2260
    if-eqz v0, :cond_a

    .line 2261
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 2262
    return-void

    .line 2265
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2266
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2267
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 2268
    monitor-exit v0

    return-void

    .line 2271
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2272
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2273
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 2275
    :cond_29
    monitor-exit v0

    .line 2276
    return-void

    .line 2275
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public blacklist doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .registers 7

    .line 3367
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3368
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_5e

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez p1, :cond_d

    goto :goto_5e

    .line 3372
    :cond_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_16

    .line 3374
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 3376
    :cond_16
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    .line 3377
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 3378
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 3379
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3380
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3381
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 3382
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 3383
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p2, p2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p2, p1, v1, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 3385
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3386
    invoke-virtual {p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object p2

    .line 3387
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 3389
    monitor-exit v0

    return v2

    .line 3370
    :cond_5e
    :goto_5e
    monitor-exit v0

    return v2

    .line 3390
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .registers 9

    .line 5220
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 5221
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5222
    monitor-exit v0

    return-void

    .line 5225
    :cond_b
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5226
    const-wide v1, 0x10b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 5227
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5228
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5229
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5230
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5231
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5232
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5233
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5234
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_75

    .line 5235
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5237
    :cond_75
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_83

    .line 5238
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5240
    :cond_83
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_91

    .line 5241
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5243
    :cond_91
    if-eqz p2, :cond_9b

    .line 5244
    const-wide v1, 0x10b00000009L

    invoke-virtual {p1, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5246
    :cond_9b
    monitor-exit v0

    .line 5247
    return-void

    .line 5246
    :catchall_9d
    move-exception p1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method greylist finishInputLocked()V
    .registers 5

    .line 2210
    nop

    .line 2211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2212
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_24

    .line 2213
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2214
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2215
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 2216
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v2

    .line 2217
    invoke-virtual {v2, v1}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    goto :goto_25

    .line 2212
    :cond_24
    move-object v1, v0

    .line 2220
    :cond_25
    :goto_25
    if-eqz v1, :cond_47

    .line 2221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2222
    sget-object v2, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2223
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2222
    const-string v3, "FINISH INPUT: mServedView=%s"

    invoke-static {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2229
    :cond_3c
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2230
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2231
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    .line 2232
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2234
    :cond_47
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 2236
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    invoke-virtual {v0}, Landroid/window/ImeBackCallbackProxy;->clear()V

    .line 2237
    return-void
.end method

.method public blacklist finishTrackingPendingRequests()V
    .registers 1

    .line 4664
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->finishTrackingPendingRequests()V

    .line 4665
    return-void
.end method

.method public whitelist getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    .line 1896
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1895
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentInputMethodInfoAsUser(Landroid/os/UserHandle;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1910
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    nop

    .line 1912
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1911
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 4703
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .registers 2

    .line 1047
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 4979
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public whitelist getEnabledInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1927
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1946
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1964
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1966
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1963
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1989
    nop

    .line 1990
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1991
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 1989
    invoke-static {p1, p2, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method blacklist getFallbackContextFromServedView()Landroid/content/Context;
    .registers 4

    .line 817
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 819
    monitor-exit v0

    return-object v2

    .line 821
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    .line 822
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist getImeBackCallbackProxy()Landroid/window/ImeBackCallbackProxy;
    .registers 2

    .line 3822
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeBackCallbackProxy:Landroid/window/ImeBackCallbackProxy;

    return-object v0
.end method

.method public whitelist getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1768
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1861
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getInputMethodListAsUser(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1881
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist getInputMethodWindowVisibleHeight()I
    .registers 2

    .line 4814
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    return v0
.end method

.method public whitelist getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 4969
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 4780
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 4783
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4785
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4786
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_49

    .line 4787
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4788
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 4790
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 4791
    move v6, v2

    :goto_28
    if-ge v6, v5, :cond_46

    .line 4792
    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 4793
    const-string v8, "voice"

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 4794
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4791
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 4786
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 4798
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasActiveInputConnection(Landroid/view/View;)Z
    .registers 4

    .line 1064
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1065
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1069
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1070
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    monitor-exit v0

    .line 1065
    return p1

    .line 1071
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public whitelist hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4313
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 4315
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v4}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4317
    return-void
.end method

.method public blacklist hideSoftInputFromServerForTest()V
    .registers 1

    .line 2754
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInputFromServerForTest()V

    .line 2755
    return-void
.end method

.method public blacklist hideSoftInputFromView(Landroid/view/View;I)Z
    .registers 13

    .line 2705
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2706
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    .line 2707
    :goto_14
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v6

    .line 2708
    :try_start_17
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v4

    .line 2709
    if-nez v1, :cond_21

    if-nez v4, :cond_21

    .line 2712
    monitor-exit v6

    return v2

    .line 2716
    :cond_21
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    .line 2717
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v5

    .line 2716
    const/16 v7, 0x27

    const/4 v8, 0x5

    const/4 v9, 0x2

    invoke-interface {v1, v9, v8, v7, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    .line 2718
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v1

    new-instance v9, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v5, v8, v7, v9}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2720
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v7, "InputMethodManager#hideSoftInputFromView"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2723
    if-nez v4, :cond_8e

    .line 2724
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2725
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v5, v3, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2727
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2728
    sget-object v0, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "Ignoring hideSoftInputFromView() as view=%s is not served."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8c

    .line 2731
    :cond_6e
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring hideSoftInputFromView() as view="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not served."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :goto_8c
    monitor-exit v6

    return v2

    .line 2737
    :cond_8e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2739
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x27

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v0

    monitor-exit v6

    return v0

    .line 2741
    :catchall_a4
    move-exception v0

    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_17 .. :try_end_a6} :catchall_a4

    throw v0
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4

    .line 2586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 10

    .line 2625
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    return p1
.end method

.method public whitelist hideStatusIcon(Landroid/os/IBinder;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2012
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2013
    return-void
.end method

.method public whitelist invalidateInput(Landroid/view/View;)V
    .registers 5

    .line 3412
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3418
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3419
    if-eqz v0, :cond_d

    .line 3420
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 3421
    return-void

    .line 3424
    :cond_d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3425
    :try_start_10
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_1b

    goto :goto_2a

    .line 3428
    :cond_1b
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastPendingStartSeqId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput(Z)V

    .line 3430
    monitor-exit v0

    .line 3431
    return-void

    .line 3426
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 3430
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist isAcceptingText()Z
    .registers 3

    .line 2097
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2098
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2099
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return v1

    .line 2100
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist isActive()Z
    .registers 3

    .line 2072
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2073
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2074
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 2075
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist isActive(Landroid/view/View;)Z
    .registers 3

    .line 2057
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2058
    if-eqz v0, :cond_b

    .line 2059
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 2062
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2063
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2064
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    monitor-exit v0

    return p1

    .line 2065
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public whitelist isConnectionlessStylusHandwritingAvailable()Z
    .registers 5

    .line 1829
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1830
    const/4 v0, 0x0

    return v0

    .line 1832
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1833
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v1, :cond_19

    .line 1834
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$4;

    const-string v2, "cache_key.system_server.connectionless_stylus_handwriting"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Landroid/view/inputmethod/InputMethodManager$4;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1843
    :cond_19
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1844
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist isCurrentRootView(Landroid/view/View;)Z
    .registers 4

    .line 2087
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2088
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-ne v1, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 2089
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public greylist-max-r isCursorAnchorInfoEnabled()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4055
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4056
    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    .line 4058
    :goto_d
    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    .line 4060
    :goto_16
    if-nez v1, :cond_1c

    if-eqz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :cond_1c
    :goto_1c
    monitor-exit v0

    return v2

    .line 4061
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist isFullscreenMode()Z
    .registers 3

    .line 2047
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2048
    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 2049
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isInputMethodPickerShown()Z
    .registers 2

    .line 4608
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isInputMethodPickerShownForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputMethodSuppressingSpellChecker()Z
    .registers 3

    .line 2107
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2108
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mIsInputMethodSuppressingSpellChecker:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2110
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist isStylusHandwritingAvailable()Z
    .registers 2

    .line 1780
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z
    .registers 6

    .line 1802
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1803
    if-nez v0, :cond_8

    .line 1804
    const/4 p1, 0x0

    return p1

    .line 1807
    :cond_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1808
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v1, :cond_19

    .line 1809
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$3;

    const-string v2, "cache_key.system_server.stylus_handwriting"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Landroid/view/inputmethod/InputMethodManager$3;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1818
    :cond_19
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1819
    monitor-exit v0

    .line 1820
    return p1

    .line 1819
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public whitelist isWatchingCursor(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4042
    const/4 p1, 0x0

    return p1
.end method

.method public greylist notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2038
    const-string p1, "InputMethodManager"

    const-string p2, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return-void
.end method

.method public greylist-max-p notifyUserAction()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4771
    const-string v0, "InputMethodManager"

    const-string v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    return-void
.end method

.method public blacklist onImeSwitchButtonClickFromSystem(I)V
    .registers 2

    .line 4622
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onImeSwitchButtonClickFromSystem(I)V

    .line 4623
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;)V
    .registers 3

    .line 3081
    nop

    .line 3082
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3081
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3083
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 3111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    nop

    .line 3116
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3117
    if-eqz v0, :cond_10

    .line 3118
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3121
    :cond_10
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 3125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3121
    invoke-static {v0, v1, p2, p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 3126
    return-void
.end method

.method public greylist registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2026
    const-string p1, "InputMethodManager"

    const-string v0, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-void
.end method

.method public blacklist removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .registers 3

    .line 3933
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3934
    :try_start_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    .line 3935
    monitor-exit v0

    .line 3936
    return-void

    .line 3935
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 3

    .line 841
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 842
    return-void
.end method

.method public whitelist restartInput(Landroid/view/View;)V
    .registers 10

    .line 3337
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3338
    if-eqz v0, :cond_a

    .line 3339
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3340
    return-void

    .line 3343
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3344
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3345
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 3346
    monitor-exit v1

    return-void

    .line 3349
    :cond_18
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3350
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    .line 3352
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 3353
    return-void

    .line 3350
    :catchall_26
    move-exception v0

    move-object p1, v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_26

    throw p1
.end method

.method public whitelist sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 4167
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4168
    if-eqz v0, :cond_a

    .line 4169
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4170
    return-void

    .line 4173
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4174
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4175
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_3b

    .line 4176
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_3b

    .line 4179
    :cond_21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 4180
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "APP PRIVATE COMMAND %s: %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4184
    :cond_32
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4185
    monitor-exit v0

    .line 4186
    return-void

    .line 4177
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    .line 4185
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public whitelist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4908
    nop

    .line 4909
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4908
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 4910
    return-void
.end method

.method public blacklist setAllowedImesByPolicyForTest(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3751
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3752
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V

    .line 3754
    monitor-exit v0

    .line 3755
    return-void

    .line 3754
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4721
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 4722
    const-string p1, "InputMethodManager"

    const-string v0, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    return v2

    .line 4728
    :cond_11
    if-nez p1, :cond_14

    .line 4730
    return v2

    .line 4732
    :cond_14
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4733
    if-nez v0, :cond_1b

    .line 4734
    return v2

    .line 4736
    :cond_1b
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 4738
    return v2

    .line 4740
    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4741
    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4743
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_35

    .line 4745
    return v2

    .line 4747
    :cond_35
    nop

    .line 4749
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 4748
    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    .line 4750
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4751
    move v5, v2

    :goto_44
    if-ge v5, v3, :cond_60

    .line 4752
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4753
    invoke-virtual {v6, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 4754
    nop

    .line 4755
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    .line 4754
    const-string v1, "selected_input_method_subtype"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4756
    return v4

    .line 4751
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 4759
    :cond_60
    return v2
.end method

.method public whitelist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[I)V
    .registers 4

    .line 4958
    nop

    .line 4959
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4958
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 4960
    return-void
.end method

.method public whitelist setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4210
    if-nez p1, :cond_8e

    .line 4214
    if-nez p2, :cond_5

    .line 4215
    return-void

    .line 4217
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v0, 0x3e8

    const-string v1, "InputMethodManager"

    if-ne p1, v0, :cond_15

    .line 4218
    const-string p1, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    return-void

    .line 4224
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    .line 4225
    if-nez p1, :cond_1c

    .line 4226
    return-void

    .line 4228
    :cond_1c
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    .line 4230
    return-void

    .line 4232
    :cond_25
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 4233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 4234
    nop

    .line 4235
    const/4 v3, 0x0

    move v4, v3

    :goto_30
    if-ge v4, v2, :cond_48

    .line 4236
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 4237
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 4238
    nop

    .line 4239
    const/4 v3, 0x1

    goto :goto_48

    .line 4235
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 4242
    :cond_48
    :goto_48
    if-nez v3, :cond_79

    .line 4243
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 4244
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v0, "Ignoring setInputMethod(null, %s) because the specified id not found in enabled IMEs."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/android/internal/protolog/ProtoLog;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_78

    .line 4248
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring setInputMethod(null, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") because the specified id not found in enabled IMEs."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    :goto_78
    return-void

    .line 4253
    :cond_79
    const-string v0, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 4258
    const-string v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4260
    const-string v0, "default_input_method"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4261
    return-void

    .line 4263
    :cond_8e
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 4264
    return-void
.end method

.method public whitelist setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4290
    if-nez p1, :cond_a

    .line 4291
    const-string p1, "InputMethodManager"

    const-string p2, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    return-void

    .line 4295
    :cond_a
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4296
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 5

    .line 3735
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3736
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 3737
    monitor-exit v0

    .line 3738
    return-void

    .line 3737
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public greylist-max-r setUpdateCursorAnchorInfoMode(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4073
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4074
    :try_start_3
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 4075
    monitor-exit v0

    .line 4076
    return-void

    .line 4075
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4869
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    .line 4870
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result p1

    .line 4869
    return p1
.end method

.method public blacklist shouldShowImeSwitcherButtonForTest()Z
    .registers 2

    .line 4635
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 5

    .line 4674
    nop

    .line 4675
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4676
    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_d

    .line 4677
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    goto :goto_e

    .line 4676
    :cond_d
    const/4 v1, 0x0

    .line 4679
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_42

    .line 4680
    if-nez v1, :cond_27

    .line 4681
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4682
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 4683
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 4686
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4687
    const/high16 v2, 0x14200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4690
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 4691
    const-string v2, "input_method_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4693
    :cond_3e
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4694
    return-void

    .line 4679
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public whitelist showInputMethodPicker()V
    .registers 3

    .line 4568
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4569
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4570
    monitor-exit v0

    .line 4571
    return-void

    .line 4570
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist showInputMethodPickerFromSystem(ZI)V
    .registers 3

    .line 4582
    if-eqz p1, :cond_4

    .line 4583
    const/4 p1, 0x1

    goto :goto_5

    .line 4584
    :cond_4
    const/4 p1, 0x2

    .line 4585
    :goto_5
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromSystem(II)V

    .line 4586
    return-void
.end method

.method public whitelist showSoftInput(Landroid/view/View;I)Z
    .registers 4

    .line 2352
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_b

    .line 2354
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2357
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public whitelist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 5

    .line 2429
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    move-result p1

    return p1
.end method

.method public whitelist showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4335
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/16 v4, 0x36

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 4337
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v4}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4339
    return-void
.end method

.method public greylist-max-p showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2509
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2511
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v7

    .line 2514
    const-string v0, "InputMethodManager"

    const-string v2, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move-object v6, v0

    .line 2518
    if-nez v6, :cond_44

    .line 2519
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v7, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2520
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2521
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_WITH_LOGCAT:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p2, "No current root view, ignoring showSoftInputUnchecked()"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/internal/protolog/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    .line 2524
    :cond_3b
    const-string p1, "InputMethodManager"

    const-string p2, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :goto_42
    monitor-exit v1

    return-void

    .line 2529
    :cond_44
    const/4 v10, 0x1

    move-object v5, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 2530
    monitor-exit v1

    .line 2531
    return-void

    .line 2530
    :catchall_4d
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4d

    throw p1
.end method

.method public whitelist showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2001
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    .line 2002
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2003
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwriting(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 12

    .line 2954
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2956
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 14

    .line 3016
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3017
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3018
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 3020
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .registers 13

    .line 2984
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2985
    move-object v5, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2987
    return-void
.end method

.method public whitelist startStylusHandwriting(Landroid/view/View;)V
    .registers 4

    .line 2776
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    .line 2778
    return-void
.end method

.method public whitelist switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4831
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result p1

    return p1
.end method

.method public whitelist switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4849
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p1

    .line 4850
    invoke-virtual {p1, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result p1

    .line 4849
    return p1
.end method

.method public whitelist toggleSoftInput(II)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3305
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3308
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3309
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 3310
    if-eqz v0, :cond_37

    .line 3311
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 3312
    if-eqz v3, :cond_31

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3313
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/16 v8, 0x19

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_37

    .line 3312
    :cond_31
    move-object v4, p0

    .line 3317
    const/16 p2, 0x18

    invoke-direct {p0, v0, p1, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    .line 3321
    :cond_37
    :goto_37
    monitor-exit v1

    .line 3322
    return-void

    .line 3321
    :catchall_39
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_39

    throw p1
.end method

.method public whitelist toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3279
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3282
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3283
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 3284
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1a

    goto :goto_1f

    .line 3287
    :cond_1a
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3288
    monitor-exit v0

    .line 3289
    return-void

    .line 3285
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    .line 3288
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist updateCursor(Landroid/view/View;IIII)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4086
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4087
    if-eqz v0, :cond_b

    .line 4088
    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4089
    return-void

    .line 4092
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4093
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4094
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_58

    .line 4095
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_58

    .line 4099
    :cond_22
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4100
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 4101
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 4102
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string p2, "updateCursor: %s"

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p3, p3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4108
    :cond_46
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursor(Landroid/graphics/Rect;)V

    .line 4109
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4111
    :cond_56
    monitor-exit v1

    .line 4112
    return-void

    .line 4096
    :cond_58
    :goto_58
    monitor-exit v1

    return-void

    .line 4111
    :catchall_5a
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_5a

    throw p1
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 4

    .line 4119
    if-eqz p1, :cond_51

    if-nez p2, :cond_5

    goto :goto_51

    .line 4123
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4124
    if-eqz v0, :cond_f

    .line 4125
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4126
    return-void

    .line 4129
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4130
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4131
    :try_start_15
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_4c

    .line 4132
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_4c

    .line 4137
    :cond_26
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz p1, :cond_34

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 4138
    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->resetHasPendingImmediateCursorAnchorInfoUpdate()Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    .line 4139
    :goto_35
    if-nez p1, :cond_41

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 4146
    monitor-exit v0

    return-void

    .line 4149
    :cond_41
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4150
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4151
    monitor-exit v0

    .line 4152
    return-void

    .line 4133
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-void

    .line 4151
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_15 .. :try_end_50} :catchall_4e

    throw p1

    .line 4120
    :cond_51
    :goto_51
    return-void
.end method

.method public whitelist updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 5

    .line 2280
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2281
    if-eqz v0, :cond_a

    .line 2282
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2283
    return-void

    .line 2286
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2287
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2288
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 2289
    monitor-exit v0

    return-void

    .line 2292
    :cond_18
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2293
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 2295
    :cond_25
    monitor-exit v0

    .line 2296
    return-void

    .line 2295
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist updateSelection(Landroid/view/View;IIII)V
    .registers 14

    .line 3952
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3953
    if-eqz v0, :cond_b

    .line 3954
    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 3955
    return-void

    .line 3958
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3959
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 3960
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_95

    .line 3961
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_95

    .line 3965
    :cond_23
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz p1, :cond_31

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 3966
    monitor-exit v7

    return-void

    .line 3969
    :cond_31
    iget p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne p1, p2, :cond_41

    iget p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne p1, p3, :cond_41

    iget p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne p1, p4, :cond_41

    iget p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq p1, p5, :cond_93

    .line 3972
    :cond_41
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 3973
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v0, "updateSelection"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3975
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECTION CHANGE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3981
    :cond_6f
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 3983
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/InputMethodManager;IIII)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 3985
    iput p2, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 3986
    iput p3, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 3987
    iput p4, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3988
    iput p5, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3990
    :cond_93
    monitor-exit v7

    .line 3991
    return-void

    .line 3962
    :cond_95
    :goto_95
    monitor-exit v7

    return-void

    .line 3990
    :catchall_97
    move-exception v0

    move-object p1, v0

    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_11 .. :try_end_9a} :catchall_97

    throw p1
.end method

.method public whitelist viewClicked(Landroid/view/View;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4006
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4007
    if-eqz v0, :cond_a

    .line 4008
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 4009
    return-void

    .line 4014
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4015
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 4016
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 4017
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_55

    .line 4018
    if-eq v1, v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 4019
    :goto_1b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4020
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4021
    :try_start_21
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_50

    .line 4022
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_50

    .line 4025
    :cond_32
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 4026
    sget-object p1, Landroid/view/ViewProtoLogGroups;->INPUT_METHOD_MANAGER_DEBUG:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v2, "onViewClicked: %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4030
    :cond_47
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p1, p1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClicked(Z)V

    .line 4031
    monitor-exit v1

    .line 4032
    return-void

    .line 4023
    :cond_50
    :goto_50
    monitor-exit v1

    return-void

    .line 4031
    :catchall_52
    move-exception p1

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_52

    throw p1

    .line 4017
    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method

.method public blacklist waitUntilNoPendingRequests(J)V
    .registers 3

    .line 4651
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->waitUntilNoPendingRequests(J)V

    .line 4652
    return-void
.end method

.method public greylist-max-q windowDismissed(Landroid/os/IBinder;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3787
    return-void
.end method
