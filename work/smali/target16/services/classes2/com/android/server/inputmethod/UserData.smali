.class public final Lcom/android/server/inputmethod/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# instance fields
.field public final mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mBoundToAccessibility:Z

.field public mBoundToMethod:Z

.field public mComputerControlInputConnectionMap:Ljava/util/Map;

.field public mCurClient:Lcom/android/server/inputmethod/ClientState;

.field public mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mCurImeBackCallbackReceiver:Landroid/os/ResultReceiver;

.field public mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public mEnabledAccessibilitySessions:Landroid/util/SparseArray;

.field public mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

.field public final mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mInFullscreenMode:Z

.field public final mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLastEnabledInputMethodsStr:Ljava/lang/String;

.field public final mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

.field public mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

.field public final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field public final mUserId:I

.field public final mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V
    .registers 6

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    invoke-static {}, Lcom/android/server/inputmethod/RawInputMethodMap;->emptyMap()Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 88
    invoke-static {}, Lcom/android/server/inputmethod/ImeBindingState;->newEmptyState()Lcom/android/server/inputmethod/ImeBindingState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mComputerControlInputConnectionMap:Ljava/util/Map;

    .line 149
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 157
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    iput p1, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 193
    iput-object p2, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 194
    iput-object p3, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
