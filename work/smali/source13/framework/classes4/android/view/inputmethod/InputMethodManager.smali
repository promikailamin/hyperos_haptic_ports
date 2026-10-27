.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    }
.end annotation


# static fields
.field public static final blacklist CLEAR_SHOW_FORCED_FLAG_WHEN_LEAVING:J = 0xcc1a029L

.field static greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field public static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field public static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field public static final blacklist HAND_WRITING_KEYBOARD_TYPE:Ljava/lang/String; = "hand_writing_keyboard_type"

.field public static final whitelist HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final whitelist HIDE_NOT_ALWAYS:I = 0x2

.field static blacklist IME_BOOST_ENABLED:Z = false

.field static final greylist-max-o INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final greylist-max-o MSG_BIND:I = 0x2

.field static final blacklist MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field static final greylist-max-o MSG_DUMP:I = 0x1

.field static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final blacklist MSG_ON_SHOW_REQUESTED:I = 0x1f

.field static final greylist-max-o MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x5

.field static final greylist-max-o MSG_SET_ACTIVE:I = 0x4

.field static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final greylist-max-o MSG_UNBIND:I = 0x3

.field static final blacklist MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field static final blacklist MSG_UPDATE_VIRTUAL_DISPLAY_TO_SCREEN_MATRIX:I = 0x1e

.field private static final blacklist NOT_A_SUBTYPE_ID:I = -0x1

.field static final greylist-max-o PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

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

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final blacklist SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodManager"

.field static blacklist isImeBoostPropertyRead:Z

.field static blacklist mPerfBoost:Landroid/util/BoostFramework;

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

.field greylist-max-o mActive:Z

.field greylist-max-o mBindSequence:I

.field final greylist-max-o mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field greylist-max-o mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field greylist-max-o mCurChannel:Landroid/view/InputChannel;

.field greylist mCurId:Ljava/lang/String;

.field greylist mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field greylist-max-o mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private blacklist mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

.field greylist-max-o mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field greylist-max-o mCursorCandEnd:I

.field greylist-max-o mCursorCandStart:I

.field greylist mCursorRect:Landroid/graphics/Rect;

.field greylist-max-o mCursorSelEnd:I

.field greylist-max-o mCursorSelStart:I

.field final blacklist mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final blacklist mDisplayId:I

.field private final blacklist mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field greylist-max-o mFullscreenMode:Z

.field final greylist-max-p mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

.field blacklist mInitialSelEnd:I

.field blacklist mInitialSelStart:I

.field private blacklist mIsInputMethodSuppressingSpellChecker:Z

.field final greylist-max-o mMainLooper:Landroid/os/Looper;

.field final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRequestUpdateCursorAnchorInfoMonitorMode:I

.field private greylist-max-o mRestartOnNextWindowFocus:Z

.field greylist-max-o mServedConnecting:Z

.field blacklist mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

.field private blacklist mServedInputConnectionHandler:Landroid/os/Handler;

.field final greylist mService:Lcom/android/internal/view/IInputMethodManager;

.field greylist mTmpCursorRect:Landroid/graphics/Rect;

.field private blacklist mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodSessionWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInputMethodSuppressingSpellChecker(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

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

.method static bridge synthetic blacklist -$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getFocusController()Landroid/view/ImeFocusController;

    move-result-object p0

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$mhasServedByInputMethodLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 289
    const/4 v1, 0x0

    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 290
    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->IME_BOOST_ENABLED:Z

    .line 291
    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->isImeBoostPropertyRead:Z

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 368
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .registers 8
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "displayId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 299
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 469
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 471
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 488
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 499
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 506
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 514
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 535
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 541
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 554
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 561
    new-instance v2, Landroid/util/Pools$SimplePool;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 562
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 564
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v2, p0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 1187
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v2, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 1353
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1354
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1355
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v2, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1356
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1357
    new-instance v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    new-instance v3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v3, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {v2, p3, v3, p0, v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 1359
    return-void
.end method

.method private static greylist-max-o canStartInput(Landroid/view/View;)Z
    .registers 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

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

.method private static blacklist createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1289
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    goto :goto_f

    .line 1290
    :cond_b
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1289
    :goto_f
    return-object v0
.end method

.method private static blacklist createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 8
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1297
    :try_start_0
    const-string v0, "input_method"

    .line 1298
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1297
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_a} :catch_2c

    .line 1301
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    nop

    .line 1302
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1310
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1312
    .local v2, "identity":J
    :try_start_14
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-interface {v0, v4, v5, p0}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    .line 1316
    goto :goto_23

    :catchall_1c
    move-exception v4

    goto :goto_28

    .line 1313
    :catch_1e
    move-exception v4

    .line 1314
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1f
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 1316
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1317
    nop

    .line 1318
    return-object v1

    .line 1316
    :goto_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1317
    throw v4

    .line 1299
    .end local v0    # "service":Lcom/android/internal/view/IInputMethodManager;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "identity":J
    :catch_2c
    move-exception v0

    .line 1300
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1324
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1325
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/view/IInputMethodManager;>;"
    nop

    .line 1326
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    .line 1349
    .local v1, "stubInterface":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v2
.end method

.method private static greylist-max-o dumpViewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 3723
    if-nez p0, :cond_6

    .line 3724
    const-string/jumbo v0, "null"

    return-object v0

    .line 3726
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3727
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",windowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",autofillUiShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",temporaryDetach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",hasImeFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .registers 2

    .line 346
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 347
    return-void
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .registers 7

    .line 3211
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 3213
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3214
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 3215
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3216
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3217
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3218
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 3214
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3220
    .end local v2    # "i":I
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

    .line 3803
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 3804
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3806
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static blacklist forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1370
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1373
    .local v0, "displayId":I
    if-nez v0, :cond_b

    .line 1374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1375
    .local v1, "looper":Landroid/os/Looper;
    :goto_f
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .registers 7
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1380
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1381
    .local v0, "isDefaultDisplay":Z
    :goto_5
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1382
    :try_start_8
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1383
    .local v3, "instance":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_14

    .line 1384
    monitor-exit v1

    return-object v3

    .line 1386
    :cond_14
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    move-object v3, v4

    .line 1388
    sget-object v4, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_21

    if-eqz v0, :cond_21

    .line 1389
    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1391
    :cond_21
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1392
    monitor-exit v1

    return-object v3

    .line 1393
    .end local v3    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private blacklist getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 603
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 604
    return-object v0

    .line 612
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 613
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_b

    .line 614
    return-object v0

    .line 616
    :cond_b
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 617
    .local v2, "viewRootDisplayId":I
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_14

    .line 619
    return-object v0

    .line 621
    :cond_14
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    .line 622
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 623
    .local v3, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "InputMethodManager"

    if-nez v3, :cond_39

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-object v0

    .line 627
    :cond_39
    iget v5, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v5, v2, :cond_6a

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual IMM#displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-object v0

    .line 633
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " InputMethodManager displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    return-object v3
.end method

.method private blacklist getFocusController()Landroid/view/ImeFocusController;
    .registers 3

    .line 903
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 904
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_d

    .line 905
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 907
    :cond_d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 908
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static greylist getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1407
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1412
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNextServedViewLocked()Landroid/view/View;
    .registers 2

    .line 886
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getNextServedView()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 887
    :cond_d
    const/4 v0, 0x0

    .line 886
    :goto_e
    return-object v0
.end method

.method private blacklist getServedViewLocked()Landroid/view/View;
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private blacklist getStartInputFlags(Landroid/view/View;I)I
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "startInputFlags"    # I

    .line 2522
    or-int/lit8 p2, p2, 0x1

    .line 2523
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2524
    or-int/lit8 p2, p2, 0x2

    .line 2526
    :cond_a
    return p2
.end method

.method private blacklist hasServedByInputMethodLocked(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 915
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, "servedView":Landroid/view/View;
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_f

    .line 917
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 916
    :goto_12
    return v1
.end method

.method private blacklist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 14
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 2018
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#hideSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2020
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2021
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2022
    :try_start_10
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2023
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_34

    if-eq v2, p1, :cond_1d

    goto :goto_31

    .line 2028
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2b
    .catchall {:try_start_1d .. :try_end_29} :catchall_34

    :try_start_29
    monitor-exit v0

    return v2

    .line 2029
    :catch_2b
    move-exception v2

    .line 2030
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    throw v3

    .line 2024
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p4    # "reason":I
    :cond_31
    :goto_31
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2032
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private static greylist-max-o isAutofillUIShowing(Landroid/view/View;)Z
    .registers 3
    .param p0, "servedView"    # Landroid/view/View;

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 588
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private static blacklist isInEditMode()Z
    .registers 1

    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1328
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1329
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1329
    if-ne v0, v1, :cond_12

    .line 1330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1331
    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_17

    .line 1332
    return-object v3

    .line 1333
    :cond_17
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_22

    .line 1334
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1335
    :cond_22
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 1336
    return-object v3

    .line 1337
    :cond_27
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    .line 1338
    return-object v3

    .line 1339
    :cond_2c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_31

    .line 1340
    return-object v3

    .line 1341
    :cond_31
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3b

    .line 1342
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1343
    :cond_3b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_46

    .line 1344
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1346
    :cond_46
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$doInvalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 4
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "accessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I
    .param p3, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 2225
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$getShortcutInputMethodsAndSubtypes$4(Landroid/view/inputmethod/InputMethodInfo;)I
    .registers 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 3407
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$updateSelection$3(IIIIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .registers 14
    .param p0, "oldSelStart"    # I
    .param p1, "oldSelEnd"    # I
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I
    .param p6, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 2706
    move-object v0, p6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 3224
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3225
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_11

    .line 3226
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent-IA;)V

    move-object v0, v1

    .line 3228
    :cond_11
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3229
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 3230
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 3231
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 3232
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 3233
    return-object v0
.end method

.method public static greylist peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1426
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_f
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1432
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 3746
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 3747
    return v0

    .line 3750
    :cond_4
    array-length v1, p2

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, p2, v2

    .line 3751
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3752
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3753
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 3754
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3755
    const/4 v1, 0x1

    return v1

    .line 3750
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3758
    :cond_23
    return v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3237
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 3238
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3239
    return-void
.end method

.method private blacklist reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "tba"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "icHandler"    # Landroid/os/Handler;
    .param p4, "view"    # Landroid/view/View;

    .line 2482
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 2483
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2484
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 2485
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 2487
    :cond_10
    return-void
.end method

.method private blacklist setNextServedViewLocked(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 897
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_b

    .line 898
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ImeFocusController;->setNextServedView(Landroid/view/View;)V

    .line 900
    :cond_b
    return-void
.end method

.method private blacklist setServedViewLocked(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 891
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_b

    .line 892
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ImeFocusController;->setServedView(Landroid/view/View;)V

    .line 894
    :cond_b
    return-void
.end method

.method private greylist-max-o showInputMethodPickerLocked()V
    .registers 4

    .line 3274
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 3277
    nop

    .line 3278
    return-void

    .line 3275
    :catch_a
    move-exception v0

    .line 3276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 1888
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#showSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1891
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1892
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_15

    .line 1893
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1

    .line 1896
    :cond_15
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1897
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1898
    :try_start_1b
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1899
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showSoftInput() as view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not served."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 1905
    :cond_42
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_95

    .line 1907
    :try_start_4d
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSoftInput() view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1908
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1907
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 1911
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1909
    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_8d} :catch_8f
    .catchall {:try_start_4d .. :try_end_8d} :catchall_95

    :try_start_8d
    monitor-exit v1

    return v2

    .line 1915
    :catch_8f
    move-exception v2

    .line 1916
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    throw v3

    .line 1918
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "flags":I
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p4    # "reason":I
    :catchall_95
    move-exception v2

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_95

    throw v2
.end method

.method static blacklist tearDownEditMode()V
    .registers 2

    .line 1268
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1272
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    const/4 v1, 0x0

    :try_start_a
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1274
    monitor-exit v0

    .line 1275
    return-void

    .line 1274
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    .line 1269
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist checkFocus()V
    .registers 4

    .line 2537
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    .line 2538
    .local v0, "controller":Landroid/view/ImeFocusController;
    if-eqz v0, :cond_b

    .line 2539
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    .line 2541
    :cond_b
    return-void
.end method

.method blacklist clearAccessibilityBindingLocked(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1671
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing accessibility binding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_1c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1673
    return-void
.end method

.method blacklist clearAllAccessibilityBindingLocked()V
    .registers 3

    .line 1680
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "InputMethodManager"

    const-string v1, "Clearing all accessibility bindings"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1682
    return-void
.end method

.method greylist-max-o clearBindingLocked()V
    .registers 3

    .line 1656
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "InputMethodManager"

    const-string v1, "Clearing binding!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 1658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 1660
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1661
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1662
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1663
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 1664
    return-void
.end method

.method greylist-max-o clearConnectionLocked()V
    .registers 3

    .line 1711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1712
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_e

    .line 1713
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 1714
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 1715
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 1717
    :cond_e
    return-void
.end method

.method greylist closeCurrentInput()V
    .registers 9

    .line 2545
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2546
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_34

    if-nez v1, :cond_e

    goto :goto_2b

    .line 2551
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2553
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 2551
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_22} :catch_25
    .catchall {:try_start_e .. :try_end_22} :catchall_34

    .line 2559
    nop

    .line 2560
    :try_start_23
    monitor-exit v0

    .line 2561
    return-void

    .line 2557
    :catch_25
    move-exception v1

    .line 2558
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    throw v2

    .line 2547
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :cond_2b
    :goto_2b
    const-string v1, "InputMethodManager"

    const-string v2, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    monitor-exit v0

    return-void

    .line 2560
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3062
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3063
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_71

    .line 3064
    instance-of v1, p1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 3065
    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 3066
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_28

    .line 3067
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_28

    .line 3068
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_28

    .line 3069
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 3070
    monitor-exit v0

    return v2

    .line 3074
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_28
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_46

    .line 3075
    const-string v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISPATCH INPUT EVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :cond_46
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v1

    .line 3080
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 3082
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3086
    :cond_5f
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3087
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3088
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 3089
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 3091
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_71
    monitor-exit v0

    .line 3092
    const/4 v0, 0x0

    return v0

    .line 3091
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public whitelist dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3111
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3112
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 3113
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 3114
    return-void

    .line 3117
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3118
    if-eqz p1, :cond_16

    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_17

    .line 3128
    :catchall_14
    move-exception v2

    goto :goto_2b

    .line 3118
    :cond_16
    const/4 v2, 0x0

    .line 3119
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_17
    if-nez v2, :cond_24

    .line 3120
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 3121
    .local v3, "servedView":Landroid/view/View;
    if-eqz v3, :cond_24

    .line 3122
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object v2, v4

    .line 3125
    .end local v3    # "servedView":Landroid/view/View;
    :cond_24
    if-eqz v2, :cond_29

    .line 3126
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 3128
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_29
    monitor-exit v1

    .line 3129
    return-void

    .line 3128
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_14

    throw v2
.end method

.method public whitelist displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 1744
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1745
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 1746
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1747
    return-void

    .line 1750
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1751
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1752
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1753
    monitor-exit v1

    return-void

    .line 1756
    :cond_18
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1757
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v2, :cond_21

    .line 1758
    invoke-virtual {v2, p2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1760
    :cond_21
    monitor-exit v1

    .line 1761
    return-void

    .line 1760
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v2
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3597
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3598
    .local v0, "p":Landroid/util/Printer;
    if-eqz p3, :cond_aa

    array-length v1, p3

    if-lez v1, :cond_aa

    .line 3599
    array-length v1, p3

    const-string v2, "logging"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_33

    aget-object v1, p3, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current IMM state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 3601
    :cond_33
    aget-object v1, p3, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    array-length v1, p3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a9

    .line 3602
    aget-object v1, p3, v4

    const-string v2, "enable-text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "all"

    const-string v5, "IMM"

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_78

    aget-object v1, p3, v7

    if-eqz v1, :cond_78

    .line 3603
    aget-object v1, p3, v7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2de

    :cond_5c
    goto :goto_6c

    :sswitch_5d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move v3, v4

    goto :goto_6d

    :sswitch_65
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_6d

    :goto_6c
    move v3, v6

    :goto_6d
    packed-switch v3, :pswitch_data_2e8

    goto :goto_77

    .line 3608
    :pswitch_71
    sput-boolean v4, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 3609
    goto :goto_77

    .line 3605
    :pswitch_74
    sput-boolean v4, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 3606
    nop

    .line 3611
    :goto_77
    goto :goto_a9

    .line 3613
    :cond_78
    aget-object v1, p3, v4

    const-string v8, "disable-text"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    aget-object v1, p3, v7

    if-eqz v1, :cond_a9

    .line 3614
    aget-object v1, p3, v7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2f0

    :cond_8f
    goto :goto_9f

    :sswitch_90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    goto :goto_a0

    :sswitch_97
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    move v4, v3

    goto :goto_a0

    :goto_9f
    move v4, v6

    :goto_a0
    packed-switch v4, :pswitch_data_2fa

    goto :goto_a9

    .line 3619
    :pswitch_a4
    sput-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 3620
    goto :goto_a9

    .line 3616
    :pswitch_a7
    sput-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    .line 3626
    :cond_a9
    :goto_a9
    return-void

    .line 3629
    :cond_aa
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 3630
    return-void

    .line 3635
    :cond_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFallbackInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3645
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_186

    .line 3646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_18b

    .line 3648
    :cond_186
    const-string v1, "  mCurMethod= null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3650
    :goto_18b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c3

    .line 3651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAccessibilityInputMethodSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 3652
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 3653
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3651
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3650
    add-int/lit8 v1, v1, 0x1

    goto :goto_18c

    .line 3655
    .end local v1    # "i":I
    :cond_1c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3659
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_238

    .line 3660
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3661
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_23d

    .line 3663
    :cond_238
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3665
    :goto_23d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnectionHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3673
    return-void

    :sswitch_data_2de
    .sparse-switch
        0x11ba9 -> :sswitch_65
        0x179a1 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_74
        :pswitch_71
    .end packed-switch

    :sswitch_data_2f0
    .sparse-switch
        0x11ba9 -> :sswitch_97
        0x179a1 -> :sswitch_90
    .end sparse-switch

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a4
    .end packed-switch
.end method

.method public blacklist doInvalidateInput(Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .registers 9
    .param p1, "inputConnection"    # Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .param p2, "textSnapshot"    # Landroid/view/inputmethod/TextSnapshot;
    .param p3, "sessionId"    # I

    .line 2205
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2206
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_58

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_d

    goto :goto_58

    .line 2210
    :cond_d
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v3, :cond_14

    .line 2212
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2214
    :cond_14
    invoke-virtual {v1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2215
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2216
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2217
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2218
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2219
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v3

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 2220
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 2221
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 2223
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2224
    invoke-virtual {v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 2225
    .local v3, "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v3, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 2227
    monitor-exit v0

    return v2

    .line 2208
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    :cond_58
    :goto_58
    monitor-exit v0

    return v2

    .line 2228
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 3771
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v0, :cond_5

    .line 3772
    return-void

    .line 3775
    :cond_5
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3776
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3777
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3778
    const-wide v3, 0x10900000001L

    :try_start_20
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3779
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3780
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3781
    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3782
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3783
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_52

    .line 3784
    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3786
    :cond_52
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_5e

    .line 3787
    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3789
    :cond_5e
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_6a

    .line 3790
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ImeInsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3792
    :cond_6a
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v3, :cond_76

    .line 3793
    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3795
    :cond_76
    if-eqz p2, :cond_80

    .line 3796
    const-wide v3, 0x10b00000009L

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 3798
    :cond_80
    monitor-exit v2

    .line 3799
    return-void

    .line 3798
    :catchall_82
    move-exception v3

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_20 .. :try_end_84} :catchall_82

    throw v3
.end method

.method greylist finishInputLocked()V
    .registers 5

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 1726
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 1727
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setNextServedViewLocked(Landroid/view/View;)V

    .line 1728
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1729
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 1730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FINISH INPUT: mServedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1731
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1730
    const-string v3, "InputMethodManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_33
    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->setServedViewLocked(Landroid/view/View;)V

    .line 1734
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1735
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1736
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 1739
    :cond_3d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 1740
    return-void
.end method

.method greylist-max-o finishedInputEvent(IZZ)V
    .registers 11
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3173
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3174
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3175
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 3176
    monitor-exit v0

    return-void

    .line 3179
    :cond_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3180
    .local v2, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3181
    const-wide/16 v3, 0x4

    const-string v5, "aq:imm"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3183
    if-eqz p3, :cond_44

    .line 3184
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 3187
    :cond_44
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 3189
    .end local v1    # "index":I
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4f

    .line 3191
    invoke-virtual {p0, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 3192
    return-void

    .line 3189
    .end local v2    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public whitelist getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 3321
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3322
    :catch_7
    move-exception v0

    .line 3323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .registers 2

    .line 867
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 3592
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public whitelist getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1503
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1504
    :catch_b
    move-exception v0

    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1519
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1520
    :catch_7
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
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

    .line 1538
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1539
    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1538
    :goto_a
    invoke-interface {v0, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 1541
    :catch_f
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 1447
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1448
    :catch_b
    move-exception v0

    .line 1449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1465
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1466
    :catch_7
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodListAsUser(II)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1485
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getAwareLockedInputMethodList(II)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1486
    :catch_7
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getInputMethodWindowVisibleHeight()I
    .registers 3

    .line 3439
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3440
    :catch_9
    move-exception v0

    .line 3441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 3579
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3580
    :catch_7
    move-exception v0

    .line 3581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
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

    .line 3404
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 3407
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3409
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3410
    .local v1, "numEnabledImes":I
    const/4 v2, 0x0

    .local v2, "imiIndex":I
    :goto_15
    if-ge v2, v1, :cond_49

    .line 3411
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3412
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 3414
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3415
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "subtypeIndex":I
    :goto_27
    if-ge v6, v5, :cond_46

    .line 3416
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 3417
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "voice"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 3418
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 3415
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 3410
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "subtypeCount":I
    .end local v6    # "subtypeIndex":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3422
    .end local v2    # "imiIndex":I
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getUpdateCursorAnchorInfoMode()I
    .registers 3

    .line 2795
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2796
    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    monitor-exit v0

    return v1

    .line 2797
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist hasActiveInputConnection(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 878
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasVirtualDisplayToScreenMatrix()Z
    .registers 3

    .line 3477
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3478
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 3479
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3026
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(I)V

    .line 3027
    return-void
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 1981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2012
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hideStatusIcon(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1564
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1565
    return-void
.end method

.method public whitelist invalidateInput(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 2250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2254
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_d

    .line 2255
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 2256
    return-void

    .line 2259
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2260
    :try_start_10
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_22

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_1b

    goto :goto_22

    .line 2263
    :cond_1b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput()V

    .line 2264
    monitor-exit v1

    .line 2265
    return-void

    .line 2261
    :cond_22
    :goto_22
    monitor-exit v1

    return-void

    .line 2264
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v2
.end method

.method greylist-max-o invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .line 3196
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 3197
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3200
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_1f

    .line 3204
    :cond_12
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3205
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3208
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method public whitelist isAcceptingText()Z
    .registers 3

    .line 1636
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1637
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1638
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 1639
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist isActive()Z
    .registers 3

    .line 1625
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1626
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1627
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 1628
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist isActive(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1610
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1611
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1612
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1615
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1616
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1617
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    monitor-exit v1

    return v2

    .line 1618
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public greylist-max-r isCursorAnchorInfoEnabled()Z
    .registers 6

    .line 2768
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2769
    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_e

    :cond_d
    move v2, v3

    .line 2771
    .local v2, "isImmediate":Z
    :goto_e
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v3

    .line 2773
    .local v1, "isMonitoring":Z
    :goto_15
    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    move v3, v4

    :cond_1a
    monitor-exit v0

    return v3

    .line 2774
    .end local v1    # "isMonitoring":Z
    .end local v2    # "isImmediate":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist isFullscreenMode()Z
    .registers 3

    .line 1599
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1600
    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 1601
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isInputMethodPickerShown()Z
    .registers 3

    .line 3294
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3295
    :catch_7
    move-exception v0

    .line 3296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isInputMethodSuppressingSpellChecker()Z
    .registers 3

    .line 1646
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1647
    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    monitor-exit v0

    return v1

    .line 1648
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2757
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$startInputInner$2$android-view-inputmethod-InputMethodManager(I)V
    .registers 8
    .param p1, "startInputReason"    # I

    .line 2320
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    return-void
.end method

.method public blacklist notifyImeHidden(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2625
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#notifyImeHidden"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2627
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2628
    :try_start_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_2d

    .line 2629
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_2f

    if-ne v1, p1, :cond_2d

    .line 2631
    :try_start_1b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_27
    .catchall {:try_start_1b .. :try_end_26} :catchall_2f

    .line 2636
    goto :goto_2d

    .line 2634
    :catch_27
    move-exception v1

    .line 2635
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    throw v2

    .line 2638
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 2639
    return-void

    .line 2638
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public greylist notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return-void
.end method

.method public greylist-max-p notifyUserAction()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3395
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    return-void
.end method

.method public blacklist registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 2569
    if-eqz p1, :cond_c

    .line 2573
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2574
    :try_start_5
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 2575
    monitor-exit v0

    .line 2576
    return-void

    .line 2575
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1

    .line 2570
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1578
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return-void
.end method

.method public blacklist removeImeSurface(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2647
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2649
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 2652
    nop

    .line 2653
    :try_start_9
    monitor-exit v0

    .line 2654
    return-void

    .line 2653
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 2650
    :catch_d
    move-exception v1

    .line 2651
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    throw v2

    .line 2653
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 657
    nop

    .line 658
    return-void

    .line 655
    :catch_7
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportVirtualDisplayGeometry(ILandroid/graphics/Matrix;)V
    .registers 6
    .param p1, "childDisplayId"    # I
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 3457
    if-nez p2, :cond_4

    .line 3458
    const/4 v0, 0x0

    .local v0, "matrixValues":[F
    goto :goto_b

    .line 3460
    .end local v0    # "matrixValues":[F
    :cond_4
    const/16 v0, 0x9

    :try_start_6
    new-array v0, v0, [F

    .line 3461
    .restart local v0    # "matrixValues":[F
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3463
    :goto_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/view/IInputMethodManager;->reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_14

    .line 3466
    .end local v0    # "matrixValues":[F
    nop

    .line 3467
    return-void

    .line 3464
    :catch_14
    move-exception v0

    .line 3465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestImeShow(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2605
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2606
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2607
    :try_start_6
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2608
    .local v1, "servedView":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v3, p1, :cond_14

    goto :goto_1d

    .line 2611
    :cond_14
    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    .line 2613
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 2609
    :cond_1d
    :goto_1d
    monitor-exit v0

    return v2

    .line 2614
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist restartInput(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 2175
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2176
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2177
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2178
    return-void

    .line 2181
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2182
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2183
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2184
    monitor-exit v1

    return-void

    .line 2187
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2188
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_26

    .line 2190
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 2191
    return-void

    .line 2188
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public whitelist sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 2892
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2893
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2894
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2895
    return-void

    .line 2898
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2899
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2900
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v2, :cond_1f

    goto :goto_4c

    .line 2904
    :cond_1f
    sget-boolean v2, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v2, :cond_45

    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP PRIVATE COMMAND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_45
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2906
    monitor-exit v1

    .line 2907
    return-void

    .line 2902
    :cond_4c
    :goto_4c
    monitor-exit v1

    return-void

    .line 2906
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_4e

    throw v2
.end method

.method greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3134
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3135
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 3136
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 3137
    monitor-exit v0

    return-void

    .line 3140
    :cond_c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    move v1, v2

    .line 3141
    .local v1, "handled":Z
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 3143
    invoke-virtual {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 3144
    return-void

    .line 3141
    .end local v1    # "handled":Z
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method greylist-max-o sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 9
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 3148
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 3149
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v2, :cond_16

    .line 3150
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 3153
    :cond_16
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3154
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 3155
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 3156
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3157
    const-wide/16 v3, 0x4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 3158
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 3157
    const-string v6, "aq:imm"

    invoke-static {v3, v4, v6, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3160
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3161
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3162
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3163
    const/4 v3, -0x1

    return v3

    .line 3166
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send input event to IME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_6e
    return v1
.end method

.method public whitelist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3571
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3574
    nop

    .line 3575
    return-void

    .line 3572
    :catch_7
    move-exception v0

    .line 3573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 12
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3342
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_11

    .line 3343
    const-string v0, "InputMethodManager"

    const-string v2, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    return v1

    .line 3349
    :cond_11
    if-nez p1, :cond_14

    .line 3351
    return v1

    .line 3353
    :cond_14
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3354
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_1b

    .line 3355
    return v1

    .line 3357
    :cond_1b
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    .line 3359
    return v1

    .line 3361
    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3362
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3364
    .local v3, "imeId":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_35

    .line 3366
    return v1

    .line 3370
    :cond_35
    :try_start_35
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_60

    .line 3373
    .local v4, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    nop

    .line 3374
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 3375
    .local v6, "numSubtypes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_42
    if-ge v7, v6, :cond_5f

    .line 3376
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3377
    .local v8, "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 3378
    nop

    .line 3379
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    .line 3378
    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v2, v9, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3380
    return v5

    .line 3375
    .end local v8    # "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 3383
    .end local v7    # "i":I
    :cond_5f
    return v1

    .line 3371
    .end local v4    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "numSubtypes":I
    :catch_60
    move-exception v4

    .line 3372
    .local v4, "e":Landroid/os/RemoteException;
    return v1
.end method

.method greylist-max-o setInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 1685
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-ne v0, p1, :cond_5

    .line 1686
    return-void

    .line 1688
    :cond_5
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 1689
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 1693
    return-void

    .line 1695
    :cond_14
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_23

    .line 1696
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 1697
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 1698
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 1700
    :cond_23
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2a

    .line 1701
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1703
    :cond_2a
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 1704
    return-void
.end method

.method public whitelist setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2929
    if-nez p1, :cond_7b

    .line 2933
    if-nez p2, :cond_5

    .line 2934
    return-void

    .line 2936
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "InputMethodManager"

    if-ne v0, v1, :cond_15

    .line 2937
    const-string v0, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-void

    .line 2943
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 2944
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_1c

    .line 2945
    return-void

    .line 2947
    :cond_1c
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 2949
    return-void

    .line 2951
    :cond_25
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 2952
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2953
    .local v3, "numImis":I
    const/4 v4, 0x0

    .line 2954
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    if-ge v5, v3, :cond_46

    .line 2955
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2956
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 2957
    const/4 v4, 0x1

    .line 2958
    goto :goto_46

    .line 2954
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 2961
    .end local v5    # "i":I
    :cond_46
    :goto_46
    if-nez v4, :cond_65

    .line 2962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setInputMethod(null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because the specified id not found in enabled IMEs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return-void

    .line 2966
    :cond_65
    const-string v5, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2971
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v5, -0x1

    const-string/jumbo v6, "selected_input_method_subtype"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2973
    const-string v5, "default_input_method"

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2974
    return-void

    .line 2976
    .end local v0    # "fallbackContext":Landroid/content/Context;
    .end local v1    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "numImis":I
    .end local v4    # "found":Z
    :cond_7b
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 2977
    return-void
.end method

.method public whitelist setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3001
    if-nez p1, :cond_b

    .line 3002
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    return-void

    .line 3006
    :cond_b
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3007
    return-void
.end method

.method public greylist-max-r setUpdateCursorAnchorInfoMode(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 2784
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2785
    :try_start_3
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 2786
    monitor-exit v0

    .line 2787
    return-void

    .line 2786
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3534
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 3535
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    .line 3534
    return v0
.end method

.method public whitelist showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 4
    .param p1, "imiId"    # Ljava/lang/String;

    .line 3308
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3311
    nop

    .line 3312
    return-void

    .line 3309
    :catch_9
    move-exception v0

    .line 3310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist showInputMethodPicker()V
    .registers 3

    .line 3248
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3249
    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 3250
    monitor-exit v0

    .line 3251
    return-void

    .line 3250
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist showInputMethodPickerFromSystem(ZI)V
    .registers 6
    .param p1, "showAuxiliarySubtypes"    # Z
    .param p2, "displayId"    # I

    .line 3262
    if-eqz p1, :cond_4

    .line 3263
    const/4 v0, 0x1

    goto :goto_5

    .line 3264
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 3266
    .local v0, "mode":I
    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, v0, p2}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 3269
    nop

    .line 3270
    return-void

    .line 3267
    :catch_f
    move-exception v1

    .line 3268
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist showSoftInput(Landroid/view/View;I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 1816
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1817
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1818
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 1821
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1
.end method

.method public whitelist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1883
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3047
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(I)V

    .line 3048
    return-void
.end method

.method public greylist-max-p showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1932
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1934
    :try_start_3
    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_38

    .line 1943
    :cond_16
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 1944
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1946
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v8, 0x0

    .line 1944
    move v6, p1

    move-object v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_35} :catch_43
    .catchall {:try_start_3 .. :try_end_35} :catchall_41

    .line 1952
    nop

    .line 1953
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_41

    .line 1954
    return-void

    .line 1938
    :cond_38
    :goto_38
    :try_start_38
    const-string v1, "InputMethodManager"

    const-string v2, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_43
    .catchall {:try_start_38 .. :try_end_3f} :catchall_41

    .line 1939
    :try_start_3f
    monitor-exit v0

    return-void

    .line 1953
    :catchall_41
    move-exception v1

    goto :goto_49

    .line 1950
    :catch_43
    move-exception v1

    .line 1951
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "flags":I
    .end local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 1953
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "flags":I
    .restart local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_41

    throw v1
.end method

.method public whitelist showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1553
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 1554
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1555
    return-void
.end method

.method greylist-max-o startInputInner(ILandroid/os/IBinder;III)Z
    .registers 33
    .param p1, "startInputReason"    # I
    .param p2, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 2277
    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2278
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    .line 2281
    .local v15, "view":Landroid/view/View;
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 2282
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2283
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2282
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_3a
    const/4 v13, 0x0

    if-nez v15, :cond_4a

    .line 2286
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_48

    const-string v0, "InputMethodManager"

    const-string v3, "ABORT input: no served view!"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_48
    monitor-exit v2

    return v13

    .line 2289
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_414

    .line 2291
    if-nez p2, :cond_78

    .line 2292
    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2293
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local v0, "windowGainingFocus":Landroid/os/IBinder;
    if-nez v0, :cond_5b

    .line 2294
    const-string v2, "InputMethodManager"

    const-string v3, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    return v13

    .line 2297
    :cond_5b
    move/from16 v3, p3

    invoke-direct {v1, v15, v3}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v2

    .line 2298
    .end local p3    # "startInputFlags":I
    .local v2, "startInputFlags":I
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2299
    .end local p4    # "softInputMode":I
    .local v3, "softInputMode":I
    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    .end local p5    # "windowFlags":I
    .local v4, "windowFlags":I
    goto :goto_81

    .line 2291
    .end local v0    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v2    # "startInputFlags":I
    .end local v3    # "softInputMode":I
    .end local v4    # "windowFlags":I
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_78
    move/from16 v3, p3

    move-object/from16 v16, p2

    move/from16 v17, p4

    move/from16 v18, p5

    move v2, v3

    .line 2306
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v16, "windowGainingFocus":Landroid/os/IBinder;
    .local v17, "softInputMode":I
    .local v18, "windowFlags":I
    :goto_81
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 2307
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_96

    .line 2312
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_92

    const-string v0, "InputMethodManager"

    const-string v3, "ABORT input: no handler for view! Close current input."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_92
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 2314
    return v13

    .line 2316
    :cond_96
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_b4

    .line 2319
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_ab

    const-string v0, "InputMethodManager"

    const-string v3, "Starting input: reschedule to view thread"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_ab
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v14}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2321
    return v13

    .line 2327
    :cond_b4
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object v11, v0

    .line 2331
    .local v11, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 2332
    invoke-virtual {v15}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 2333
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v11, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 2334
    invoke-virtual {v15, v11}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 2336
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v0, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_df

    .line 2337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2339
    :cond_df
    iget-object v0, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "hand_writing_keyboard_type"

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getHandWritingCurrentKeyboardType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2341
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_112

    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: tba="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_112
    const/16 v19, 0x0

    .line 2345
    .local v19, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v9, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 2348
    :try_start_117
    invoke-direct/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_407

    move-object v8, v0

    .line 2349
    .local v8, "servedView":Landroid/view/View;
    if-ne v8, v15, :cond_3a4

    :try_start_11e
    iget-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v0, :cond_12f

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object v5, v15

    move-object v15, v11

    goto/16 :goto_3af

    .line 2367
    :cond_12f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_131
    .catchall {:try_start_11e .. :try_end_131} :catchall_398

    if-nez v0, :cond_138

    .line 2368
    or-int/lit8 v2, v2, 0x4

    move/from16 v20, v2

    goto :goto_13a

    .line 2367
    :cond_138
    move/from16 v20, v2

    .line 2372
    .end local v2    # "startInputFlags":I
    .local v20, "startInputFlags":I
    :goto_13a
    :try_start_13a
    invoke-virtual {v11}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2374
    iput-boolean v13, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2375
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :try_end_144
    .catchall {:try_start_13a .. :try_end_144} :catchall_38a

    const/4 v2, 0x0

    if-eqz v0, :cond_14e

    .line 2376
    :try_start_147
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2377
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2378
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2381
    :cond_14e
    if-eqz v10, :cond_196

    .line 2382
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2383
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2384
    iget v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 2385
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 2386
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2387
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2388
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2389
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_16a
    .catchall {:try_start_147 .. :try_end_16a} :catchall_189

    .line 2390
    const/4 v3, 0x0

    .line 2392
    .local v3, "handler":Landroid/os/Handler;
    :try_start_16b
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_16f
    .catch Ljava/lang/AbstractMethodError; {:try_start_16b .. :try_end_16f} :catch_171
    .catchall {:try_start_16b .. :try_end_16f} :catchall_189

    move-object v3, v0

    .line 2395
    goto :goto_172

    .line 2393
    :catch_171
    move-exception v0

    .line 2396
    :goto_172
    move-object v0, v3

    .line 2397
    .local v0, "icHandler":Landroid/os/Handler;
    :try_start_173
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2398
    new-instance v4, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2399
    if-eqz v0, :cond_17e

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    goto :goto_182

    :cond_17e
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    :goto_182
    invoke-direct {v4, v5, v10, v1, v15}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    :try_end_185
    .catchall {:try_start_173 .. :try_end_185} :catchall_189

    move-object v3, v4

    .line 2400
    .local v3, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    move-object v7, v0

    move-object v6, v3

    goto :goto_19c

    .line 2466
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v8    # "servedView":Landroid/view/View;
    :catchall_189
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v21, v12

    move v4, v14

    move-object v5, v15

    move/from16 v2, v20

    move-object v14, v10

    move-object v15, v11

    goto/16 :goto_410

    .line 2401
    .restart local v8    # "servedView":Landroid/view/View;
    :cond_196
    const/4 v3, 0x0

    .line 2402
    .restart local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    const/4 v0, 0x0

    .line 2403
    .restart local v0    # "icHandler":Landroid/os/Handler;
    :try_start_198
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object v6, v3

    .line 2405
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v3    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v6, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v7, "icHandler":Landroid/os/Handler;
    :goto_19c
    iput-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    .line 2407
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z
    :try_end_1a0
    .catchall {:try_start_198 .. :try_end_1a0} :catchall_38a

    if-eqz v0, :cond_1e0

    .line 2408
    :try_start_1a2
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START INPUT: view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tba="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startInputFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2410
    invoke-static/range {v20 .. v20}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2408
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catchall {:try_start_1a2 .. :try_end_1e0} :catchall_189

    .line 2413
    :cond_1e0
    :try_start_1e0
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 2416
    if-nez v6, :cond_1e9

    move-object/from16 v21, v2

    goto :goto_1ef

    .line 2417
    :cond_1e9
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v2

    move-object/from16 v21, v2

    .line 2418
    :goto_1ef
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_1fb} :catch_371
    .catchall {:try_start_1e0 .. :try_end_1fb} :catchall_38a

    .line 2413
    move-object v2, v0

    move-object v0, v3

    move/from16 v3, p1

    move/from16 v22, v5

    move-object/from16 v5, v16

    move-object/from16 v23, v6

    .end local v6    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .local v23, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    move/from16 v6, v20

    move-object v14, v7

    .end local v7    # "icHandler":Landroid/os/Handler;
    .local v14, "icHandler":Landroid/os/Handler;
    move/from16 v7, v17

    move-object/from16 v24, v8

    .end local v8    # "servedView":Landroid/view/View;
    .local v24, "servedView":Landroid/view/View;
    move/from16 v8, v18

    move-object/from16 v25, v9

    move-object v9, v11

    move-object/from16 p2, v14

    move-object v14, v10

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v14, "ic":Landroid/view/inputmethod/InputConnection;
    .local p2, "icHandler":Landroid/os/Handler;
    move-object/from16 v10, v23

    move-object/from16 v26, v15

    move-object v15, v11

    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .local v26, "view":Landroid/view/View;
    move-object/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "vh":Landroid/os/Handler;
    .local v21, "vh":Landroid/os/Handler;
    move/from16 v12, v22

    move/from16 v22, v13

    move-object v13, v0

    :try_start_222
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_226
    .catch Landroid/os/RemoteException; {:try_start_222 .. :try_end_226} :catch_36b
    .catchall {:try_start_222 .. :try_end_226} :catchall_362

    move-object v2, v0

    .line 2422
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v2, "res":Lcom/android/internal/inputmethod/InputBindResult;
    nop

    .line 2423
    :try_start_228
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z
    :try_end_22a
    .catchall {:try_start_228 .. :try_end_22a} :catchall_357

    if-eqz v0, :cond_250

    :try_start_22c
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: Bind result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_250

    .line 2466
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    :catchall_245
    move-exception v0

    move/from16 v4, p1

    move-object/from16 v19, v2

    move/from16 v2, v20

    move-object/from16 v5, v26

    goto/16 :goto_410

    .line 2424
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :cond_250
    :goto_250
    if-nez v2, :cond_289

    .line 2425
    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2427
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " editorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startInputFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2430
    invoke-static/range {v20 .. v20}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2425
    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    monitor-exit v25
    :try_end_288
    .catchall {:try_start_22c .. :try_end_288} :catchall_245

    return v22

    .line 2433
    :cond_289
    :try_start_289
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2434
    iget-boolean v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mIsInputMethodSuppressingSpellChecker:Z

    .line 2435
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;
    :try_end_295
    .catchall {:try_start_289 .. :try_end_295} :catchall_357

    if-eqz v0, :cond_2df

    .line 2436
    :try_start_297
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 2437
    iget v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 2438
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 2439
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSessionWrapper;->createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 2440
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2441
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_2da

    .line 2442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b6
    iget-object v3, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2da

    .line 2443
    iget-object v3, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 2445
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2444
    invoke-static {v3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v3

    .line 2446
    .local v3, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v3, :cond_2d7

    .line 2447
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 2448
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2447
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2442
    .end local v3    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_2d7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b6

    .line 2452
    .end local v0    # "i":I
    :cond_2da
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;
    :try_end_2de
    .catchall {:try_start_297 .. :try_end_2de} :catchall_245

    goto :goto_2ee

    .line 2453
    :cond_2df
    :try_start_2df
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;
    :try_end_2e1
    .catchall {:try_start_2df .. :try_end_2e1} :catchall_357

    if-eqz v0, :cond_2ee

    :try_start_2e3
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v3, :cond_2ee

    .line 2454
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_2ee
    .catchall {:try_start_2e3 .. :try_end_2ee} :catchall_245

    .line 2456
    :cond_2ee
    :goto_2ee
    :try_start_2ee
    iget v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->result:I
    :try_end_2f0
    .catchall {:try_start_2ee .. :try_end_2f0} :catchall_357

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_41c

    goto :goto_2f7

    .line 2458
    :pswitch_2f5
    :try_start_2f5
    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    :try_end_2f7
    .catchall {:try_start_2f5 .. :try_end_2f7} :catchall_245

    .line 2461
    :goto_2f7
    :try_start_2f7
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_2f9
    .catchall {:try_start_2f7 .. :try_end_2f9} :catchall_357

    if-eqz v0, :cond_302

    .line 2462
    :try_start_2fb
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v4, :cond_302

    .line 2463
    invoke-virtual {v4, v0}, Landroid/view/inputmethod/InputMethodSessionWrapper;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_302
    .catchall {:try_start_2fb .. :try_end_302} :catchall_245

    .line 2466
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    :cond_302
    :try_start_302
    monitor-exit v25
    :try_end_303
    .catchall {:try_start_302 .. :try_end_303} :catchall_357

    .line 2469
    if-eqz v14, :cond_352

    if-eqz v2, :cond_352

    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_352

    .line 2470
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_34a

    .line 2471
    const-string v0, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling View.onInputConnectionOpened: view= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v26

    .end local v26    # "view":Landroid/view/View;
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ic="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", tba="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", handler="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p2

    .end local p2    # "icHandler":Landroid/os/Handler;
    .local v6, "icHandler":Landroid/os/Handler;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34e

    .line 2470
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .restart local v26    # "view":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :cond_34a
    move-object/from16 v6, p2

    move-object/from16 v5, v26

    .line 2474
    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    :goto_34e
    invoke-direct {v1, v14, v15, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_356

    .line 2469
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .restart local v26    # "view":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :cond_352
    move-object/from16 v6, p2

    move-object/from16 v5, v26

    .line 2477
    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    :goto_356
    return v3

    .line 2466
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .restart local v26    # "view":Landroid/view/View;
    :catchall_357
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, p1

    move-object/from16 v19, v2

    move/from16 v2, v20

    .end local v26    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    goto/16 :goto_410

    .end local v2    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v5    # "view":Landroid/view/View;
    .restart local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v26    # "view":Landroid/view/View;
    :catchall_362
    move-exception v0

    move-object/from16 v5, v26

    move/from16 v4, p1

    move/from16 v2, v20

    .end local v26    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    goto/16 :goto_410

    .line 2420
    .end local v5    # "view":Landroid/view/View;
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    .restart local v26    # "view":Landroid/view/View;
    .restart local p2    # "icHandler":Landroid/os/Handler;
    :catch_36b
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v5, v26

    .end local v26    # "view":Landroid/view/View;
    .end local p2    # "icHandler":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    goto :goto_37e

    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .local v6, "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v7    # "icHandler":Landroid/os/Handler;
    .restart local v8    # "servedView":Landroid/view/View;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catch_371
    move-exception v0

    move-object/from16 v23, v6

    move-object v6, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v5, v15

    move-object v15, v11

    .line 2421
    .end local v7    # "icHandler":Landroid/os/Handler;
    .end local v8    # "servedView":Landroid/view/View;
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "view":Landroid/view/View;
    .local v6, "icHandler":Landroid/os/Handler;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .restart local v24    # "servedView":Landroid/view/View;
    :goto_37e
    :try_start_37e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v17    # "softInputMode":I
    .end local v18    # "windowFlags":I
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "startInputFlags":I
    .end local v21    # "vh":Landroid/os/Handler;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "startInputReason":I
    throw v2
    :try_end_383
    .catchall {:try_start_37e .. :try_end_383} :catchall_383

    .line 2466
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v23    # "servedInputConnection":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    .end local v24    # "servedView":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v17    # "softInputMode":I
    .restart local v18    # "windowFlags":I
    .restart local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "startInputFlags":I
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "startInputReason":I
    :catchall_383
    move-exception v0

    move/from16 v4, p1

    move/from16 v2, v20

    goto/16 :goto_410

    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_38a
    move-exception v0

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v5, v15

    move-object v15, v11

    move/from16 v4, p1

    move/from16 v2, v20

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    goto/16 :goto_410

    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v20    # "startInputFlags":I
    .end local v21    # "vh":Landroid/os/Handler;
    .local v2, "startInputFlags":I
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_398
    move-exception v0

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move-object v5, v15

    move-object v15, v11

    move/from16 v4, p1

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    goto/16 :goto_410

    .line 2349
    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v8    # "servedView":Landroid/view/View;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :cond_3a4
    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v14, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object v5, v15

    move-object v15, v11

    .line 2351
    .end local v8    # "servedView":Landroid/view/View;
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    .restart local v24    # "servedView":Landroid/view/View;
    :goto_3af
    :try_start_3af
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_3e9

    const-string v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting input: finished by someone else. view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2352
    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " servedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2353
    invoke-static/range {v24 .. v24}, Landroid/view/inputmethod/InputMethodManager;->dumpViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mServedConnecting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2351
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_3e9
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :try_end_3eb
    .catchall {:try_start_3af .. :try_end_3eb} :catchall_403

    if-eqz v0, :cond_3ff

    const/4 v3, 0x6

    move/from16 v4, p1

    if-ne v4, v3, :cond_401

    .line 2358
    nop

    .line 2359
    :try_start_3f3
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2358
    invoke-direct {v1, v0, v3, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    goto :goto_401

    .line 2355
    :cond_3ff
    move/from16 v4, p1

    .line 2362
    :cond_401
    :goto_401
    monitor-exit v25

    return v22

    .line 2466
    .end local v24    # "servedView":Landroid/view/View;
    :catchall_403
    move-exception v0

    move/from16 v4, p1

    goto :goto_410

    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v21    # "vh":Landroid/os/Handler;
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "vh":Landroid/os/Handler;
    .local v15, "view":Landroid/view/View;
    :catchall_407
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v21, v12

    move v4, v14

    move-object v5, v15

    move-object v14, v10

    move-object v15, v11

    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "vh":Landroid/os/Handler;
    .restart local v5    # "view":Landroid/view/View;
    .restart local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v15, "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v21    # "vh":Landroid/os/Handler;
    :goto_410
    monitor-exit v25
    :try_end_411
    .catchall {:try_start_3f3 .. :try_end_411} :catchall_412

    throw v0

    :catchall_412
    move-exception v0

    goto :goto_410

    .line 2289
    .end local v2    # "startInputFlags":I
    .end local v5    # "view":Landroid/view/View;
    .end local v14    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v15    # "tba":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v17    # "softInputMode":I
    .end local v18    # "windowFlags":I
    .end local v19    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v21    # "vh":Landroid/os/Handler;
    .local p2, "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_414
    move-exception v0

    move/from16 v3, p3

    move v4, v14

    :goto_418
    :try_start_418
    monitor-exit v2
    :try_end_419
    .catchall {:try_start_418 .. :try_end_419} :catchall_41a

    throw v0

    :catchall_41a
    move-exception v0

    goto :goto_418

    :pswitch_data_41c
    .packed-switch 0xc
        :pswitch_2f5
    .end packed-switch
.end method

.method public whitelist startStylusHandwriting(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 2052
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2053
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_9

    .line 2054
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    .line 2056
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "stylus_handwriting_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_26

    .line 2060
    const-string v1, "InputMethodManager"

    const-string v2, "Ignoring startStylusHandwriting(view) as stylus handwriting is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return-void

    .line 2064
    :cond_26
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2065
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2066
    :try_start_2c
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 2067
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring startStylusHandwriting() as view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not served."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    monitor-exit v1

    return-void

    .line 2071
    :cond_52
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v3, :cond_63

    .line 2072
    const-string v2, "InputMethodManager"

    const-string v3, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    monitor-exit v1

    return-void

    .line 2075
    :cond_63
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_7a

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->hasActiveConnection(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2079
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    const/4 v3, 0x3

    const/4 v4, 0x4

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesFromImm(III)V
    :try_end_7a
    .catchall {:try_start_2c .. :try_end_7a} :catchall_8a

    .line 2086
    :cond_7a
    :try_start_7a
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_81} :catch_84
    .catchall {:try_start_7a .. :try_end_81} :catchall_8a

    .line 2091
    nop

    .line 2092
    :try_start_82
    monitor-exit v1

    .line 2093
    return-void

    .line 2089
    :catch_84
    move-exception v2

    .line 2090
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .end local p1    # "view":Landroid/view/View;
    throw v3

    .line 2092
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_8a
    move-exception v2

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_8a

    throw v2
.end method

.method public whitelist switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3496
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3514
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 3515
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    .line 3514
    return v0
.end method

.method public whitelist toggleSoftInput(II)V
    .registers 8
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2148
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2151
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2152
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2153
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_2c

    if-eqz v1, :cond_2c

    .line 2154
    invoke-virtual {v3}, Landroid/view/ImeInsetsSourceConsumer;->isRequestedVisible()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2155
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {p0, v3, p2, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_2c

    .line 2158
    :cond_27
    const/16 v3, 0x17

    invoke-direct {p0, v1, p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    .line 2162
    .end local v1    # "view":Landroid/view/View;
    :cond_2c
    :goto_2c
    monitor-exit v0

    .line 2163
    return-void

    .line 2162
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2116
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2119
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2120
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 2121
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_1a

    goto :goto_1f

    .line 2124
    :cond_1a
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2125
    .end local v1    # "servedView":Landroid/view/View;
    monitor-exit v0

    .line 2126
    return-void

    .line 2122
    .restart local v1    # "servedView":Landroid/view/View;
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    .line 2125
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .registers 4
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 2584
    if-eqz p1, :cond_11

    .line 2588
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2589
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-ne v1, p1, :cond_c

    .line 2590
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 2592
    :cond_c
    monitor-exit v0

    .line 2593
    return-void

    .line 2592
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1

    .line 2585
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateCursor(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2808
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 2809
    .local v6, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_10

    .line 2810
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 2811
    return-void

    .line 2814
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2815
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2816
    :try_start_16
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v1, :cond_25

    goto :goto_63

    .line 2821
    :cond_25
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2822
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 2823
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_53

    const-string v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :cond_53
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursor(Landroid/graphics/Rect;)V

    .line 2826
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2828
    :cond_61
    monitor-exit v0

    .line 2829
    return-void

    .line 2818
    :cond_63
    :goto_63
    monitor-exit v0

    return-void

    .line 2828
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_16 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 2836
    if-eqz p1, :cond_95

    if-nez p2, :cond_6

    goto/16 :goto_95

    .line 2840
    :cond_6
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2841
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    .line 2842
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 2843
    return-void

    .line 2846
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2847
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2848
    :try_start_16
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_90

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v2, :cond_25

    goto :goto_90

    .line 2854
    :cond_25
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    move v2, v3

    .line 2856
    .local v2, "isImmediate":Z
    if-nez v2, :cond_56

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2859
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v3, :cond_54

    .line 2860
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring redundant updateCursorAnchorInfo: info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_54
    monitor-exit v1

    return-void

    .line 2865
    :cond_56
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v3, :cond_73

    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCursorAnchorInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_73
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_81

    .line 2867
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    .line 2868
    invoke-static {p2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    .line 2867
    invoke-virtual {v4, v3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto :goto_86

    .line 2871
    :cond_81
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v3, p2}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 2873
    :goto_86
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 2875
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 2876
    .end local v2    # "isImmediate":Z
    monitor-exit v1

    .line 2877
    return-void

    .line 2850
    :cond_90
    :goto_90
    monitor-exit v1

    return-void

    .line 2876
    :catchall_92
    move-exception v2

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_16 .. :try_end_94} :catchall_92

    throw v2

    .line 2837
    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_95
    :goto_95
    return-void
.end method

.method public whitelist updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 1765
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1766
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 1767
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1768
    return-void

    .line 1771
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1772
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1773
    :try_start_10
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1774
    monitor-exit v1

    return-void

    .line 1777
    :cond_18
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-eqz v2, :cond_1f

    .line 1778
    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1780
    :cond_1f
    monitor-exit v1

    .line 1781
    return-void

    .line 1780
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public whitelist updateSelection(Landroid/view/View;IIII)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .line 2670
    move-object/from16 v1, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 2671
    .local v16, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_20

    .line 2672
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2673
    return-void

    .line 2676
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2677
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v11

    .line 2678
    :try_start_26
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_af

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v0, :cond_37

    move-object v2, v11

    goto/16 :goto_b0

    .line 2683
    :cond_37
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2684
    monitor-exit v11

    return-void

    .line 2687
    :cond_43
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, v12, :cond_56

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, v13, :cond_56

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, v14, :cond_56

    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq v0, v15, :cond_54

    goto :goto_56

    :cond_54
    move-object v2, v11

    goto :goto_ad

    .line 2690
    :cond_56
    :goto_56
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_62

    const-string v0, "InputMethodManager"

    const-string/jumbo v2, "updateSelection"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_62
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v0, :cond_80

    .line 2693
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECTION CHANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_80
    iget v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2696
    .local v3, "oldSelStart":I
    iget v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2700
    .local v4, "oldSelEnd":I
    iput v12, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 2701
    iput v13, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 2702
    iput v14, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 2703
    iput v15, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 2704
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateSelection(IIIIII)V

    .line 2706
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;
    :try_end_9b
    .catchall {:try_start_26 .. :try_end_9b} :catchall_b2

    move-object v5, v0

    move v6, v3

    move v7, v4

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object v2, v11

    move/from16 v11, p5

    :try_start_a7
    invoke-direct/range {v5 .. v11}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(IIIIII)V

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 2709
    .end local v3    # "oldSelStart":I
    .end local v4    # "oldSelEnd":I
    :goto_ad
    monitor-exit v2

    .line 2710
    return-void

    .line 2678
    :cond_af
    move-object v2, v11

    .line 2680
    :goto_b0
    monitor-exit v2

    return-void

    .line 2709
    :catchall_b2
    move-exception v0

    move-object v2, v11

    :goto_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_a7 .. :try_end_b5} :catchall_b6

    throw v0

    :catchall_b6
    move-exception v0

    goto :goto_b4
.end method

.method public whitelist viewClicked(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2725
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2726
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 2727
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 2728
    return-void

    .line 2733
    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2734
    :try_start_d
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 2735
    .local v2, "servedView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 2736
    .local v3, "nextServedView":Landroid/view/View;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_5a

    .line 2737
    if-eq v2, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    move v4, v1

    .line 2738
    .local v4, "focusChanged":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2739
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 2740
    :try_start_22
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_55

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    if-nez v1, :cond_31

    goto :goto_55

    .line 2744
    :cond_31
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v1, :cond_4e

    const-string v1, "InputMethodManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onViewClicked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_4e
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentInputMethodSession:Landroid/view/inputmethod/InputMethodSessionWrapper;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodSessionWrapper;->viewClicked(Z)V

    .line 2746
    monitor-exit v5

    .line 2747
    return-void

    .line 2742
    :cond_55
    :goto_55
    monitor-exit v5

    return-void

    .line 2746
    :catchall_57
    move-exception v1

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_22 .. :try_end_59} :catchall_57

    throw v1

    .line 2736
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "nextServedView":Landroid/view/View;
    .end local v4    # "focusChanged":Z
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public greylist-max-q windowDismissed(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2519
    return-void
.end method
