.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static DEBUG:Z = false

.field private static final FALLBACK_DISPLAY_ID:I = 0x0

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "android.imms"

.field private static final INPUT_BINDER_JUDGE_PACKAGENAME:Ljava/lang/String; = "com.miui.home"

.field private static final MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xbc3

.field private static final MSG_BIND_CLIENT:I = 0xbc2

.field private static final MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED:I = 0x1392

.field private static final MSG_FINISH_HANDWRITING:I = 0x456

.field private static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field private static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field private static final MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE:I = 0x1b58

.field private static final MSG_REMOVE_IME_SURFACE:I = 0x424

.field private static final MSG_REMOVE_IME_SURFACE_FROM_WINDOW:I = 0x425

.field private static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field private static final MSG_RESET_HANDWRITING:I = 0x442

.field private static final MSG_SET_ACTIVE:I = 0xbcc

.field private static final MSG_SET_INTERACTIVE:I = 0xbd6

.field private static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field private static final MSG_START_HANDWRITING:I = 0x44c

.field private static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field private static final MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xbb9

.field private static final MSG_UNBIND_CLIENT:I = 0xbb8

.field private static final MSG_UPDATE_IME_WINDOW_STATUS:I = 0x42e

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto"

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAdditionalSubtypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mBackDisposition:I

.field private final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field mBoundToAccessibility:Z

.field mBoundToMethod:Z

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field private mCurHostInputToken:Landroid/os/IBinder;

.field mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field private mCurPerceptible:Z

.field mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private mCurTokenDisplayId:I

.field private mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDisplayIdToShowIme:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mEnabledAccessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;"
        }
    .end annotation
.end field

.field mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field private final mHandler:Landroid/os/Handler;

.field final mHasFeature:Z

.field private final mHideRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field private mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

.field mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field mImeHiddenByDisplayPolicy:Z

.field final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field private final mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private final mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field private final mImeTargetWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mImeWindowVis:I

.field mInFullscreenMode:Z

.field private mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInputShown:Z

.field mIsInteractive:Z

.field mKeepInputConnectionForCTS:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastImeTargetWindow:Landroid/os/IBinder;

.field private mLastSwitchUserId:I

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field private final mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

.field private final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I

.field private final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field private final mNonPreemptibleInputMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

.field private final mPreventImeStartupUnlessTextEditor:Z

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field final mRes:Landroid/content/res/Resources;

.field final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field private final mShowRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

.field private final mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field private final mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccessibilityManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdditionalSubtypeMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurTokenDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputMethodListListeners(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoggedDeniedGetInputMethodWindowVisibleHeightForUid(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyImeVisibility(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEnabledInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastSwitchUserId(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSequenceNumberLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUserAction(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mobtainMessageIIOO(Lcom/android/server/inputmethod/InputMethodManagerService;IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mobtainMessageOOO(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monCreateInlineSuggestionsRequestLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStylusHandwritingReady(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onStylusHandwritingReady(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->publishLocalService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryMethodMapForUser(Lcom/android/server/inputmethod/InputMethodManagerService;I)Landroid/util/ArrayMap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreportFullscreenMode(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportStartInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetStylusHandwriting(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetStylusHandwriting(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImeWindowStatus(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldOfferSwitchingToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatusIcon(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .line 1754
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 345
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    .line 353
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 370
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 381
    iput v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 392
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 516
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 544
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 662
    iput-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 754
    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 814
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 819
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 821
    iput v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 849
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 857
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 926
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 1034
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1042
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1199
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory-IA;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 1203
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    invoke-direct {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory-IA;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    .line 6039
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1755
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1756
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1757
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1760
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v6, "android.imms"

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7, v5}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object v6, v0

    .line 1762
    .local v6, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->start()V

    .line 1763
    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1765
    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-direct {v7, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1766
    nop

    .line 1767
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1766
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1768
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1769
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1770
    const-class v7, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputManagerInternal;

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 1771
    new-instance v7, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v7}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 1772
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 1773
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1774
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1775
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1776
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1777
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1778
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.software.input_methods"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    .line 1781
    const v0, 0x10408fd

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 1784
    .local v7, "extras":Landroid/os/Bundle;
    const-string v0, "android.allowDuringSetup"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1785
    const v0, 0x106001c

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 1787
    .local v8, "accentColor":I
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v0, v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1789
    const v9, 0x108050f

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1790
    const-wide/16 v9, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1792
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1793
    const-string/jumbo v9, "sys"

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1794
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1796
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1797
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1798
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-static {v2, v3, v9, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1801
    iput-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1803
    iput-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 1804
    const/4 v3, 0x0

    .line 1806
    .local v3, "userId":I
    :try_start_184
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_18e} :catch_190

    move v3, v0

    .line 1809
    goto :goto_198

    .line 1807
    :catch_190
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "InputMethodManagerService"

    const-string v11, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_198
    iput v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1814
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v17, v10, 0x1

    move-object v12, v0

    move/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1818
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v5, v3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1819
    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1823
    new-instance v5, Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v1, v10}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 1825
    new-instance v5, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {v5, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1826
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v11, 0x1110007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    .line 1828
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v11, 0x1070091

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:Ljava/util/Set;

    .line 1830
    new-instance v10, Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    new-instance v12, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v12, v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer-IA;)V

    invoke-direct {v10, v11, v12}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 1833
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->init(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1834
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v4

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v4, v1, v10, v5, v11}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->init(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodBindingController;Landroid/content/Context;)V

    .line 1835
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    .line 1840
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v4, v5}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->init(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1842
    return-void
.end method

.method private advanceSequenceNumberLocked()V
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->advanceSequenceNumber()V

    .line 593
    return-void
.end method

.method private applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "setVisible"    # Z

    .line 4915
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMMS.applyImeVisibility(), setVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurclient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    const-string v0, "IMMS.applyImeVisibility"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4919
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4920
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 4921
    monitor-exit v0

    return-void

    .line 4923
    :cond_36
    if-nez p3, :cond_4e

    .line 4924
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_5b

    .line 4931
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 4932
    invoke-virtual {v4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4931
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;I)V

    goto :goto_5b

    .line 4937
    :cond_4e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;)V

    .line 4939
    :cond_5b
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2e .. :try_end_5c} :catchall_60

    .line 4940
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4941
    return-void

    .line 4939
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private calledFromValidUserLocked()Z
    .registers 7

    .line 2091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2092
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2093
    .local v1, "userId":I
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const/16 v3, 0x3e8

    const-string v4, "InputMethodManagerService"

    if-eqz v2, :cond_60

    .line 2094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- calledFromForegroundUserOrSystemProcess ? calling uid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " system uid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " calling userId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", foreground user id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2097
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", calling pid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2098
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->getApiCallStack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2094
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_60
    const/4 v2, 0x1

    if-ne v0, v3, :cond_64

    .line 2101
    return v2

    .line 2106
    :cond_64
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    if-eq v1, v3, :cond_a9

    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v3

    if-eqz v3, :cond_77

    goto :goto_a9

    .line 2116
    :cond_77
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8b

    .line 2119
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_8a

    .line 2120
    const-string v3, "--- Access granted because the calling process has the INTERACT_ACROSS_USERS_FULL permission"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_8a
    return v2

    .line 2126
    :cond_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    .line 2127
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2126
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const/4 v2, 0x0

    return v2

    .line 2108
    :cond_a9
    :goto_a9
    return v2
.end method

.method private calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2139
    if-eqz p1, :cond_40

    .line 2142
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    if-eq p1, v0, :cond_3e

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to an invalid token. uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const/4 v0, 0x0

    return v0

    .line 2147
    :cond_3e
    const/4 v0, 0x1

    return v0

    .line 2140
    :cond_40
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 4301
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4302
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_44

    .line 4306
    :cond_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4307
    .local v0, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_45

    .line 4310
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-direct {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 4311
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const-string v1, "Ignoring %s of uid %d : %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    return v3

    .line 4315
    .end local v0    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_44
    return v1

    .line 4308
    .restart local v0    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 4334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4335
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4336
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_18

    .line 4337
    return v2

    .line 4338
    :cond_18
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 4341
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4338
    invoke-static {v1, v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4342
    return v2

    .line 4344
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 4

    .line 5351
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5352
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 5351
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 5353
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_35

    .line 5354
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 5355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New default IME was selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5357
    :cond_2c
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5358
    const/4 v1, 0x1

    return v1

    .line 5361
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private clearPendingInlineSuggestionsRequestLocked()V
    .registers 2

    .line 2296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    .line 2297
    return-void
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 3020
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_13

    .line 3026
    :cond_7
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->getDisplayImePolicy(I)I

    move-result v2

    .line 3027
    .local v2, "result":I
    if-nez v2, :cond_e

    .line 3028
    return p0

    .line 3029
    :cond_e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 3030
    return v1

    .line 3032
    :cond_12
    return v0

    .line 3021
    .end local v2    # "result":I
    :cond_13
    :goto_13
    return v0
.end method

.method private createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation

    .line 2787
    .local p1, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2789
    .local v0, "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    if-eqz p1, :cond_20

    .line 2790
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 2791
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2792
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2791
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2790
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2795
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method private createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5973
    if-eqz p1, :cond_bc

    .line 5976
    if-eqz p3, :cond_b3

    .line 5979
    if-eqz p2, :cond_ab

    .line 5982
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5983
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 5987
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5988
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5989
    .local v4, "uid":I
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_22

    .line 5990
    monitor-exit v1

    return-object v3

    .line 5992
    :cond_22
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_50

    .line 5993
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    monitor-exit v1

    return-object v3

    .line 6000
    :cond_50
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 6001
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6003
    monitor-exit v1

    return-object v3

    .line 6006
    :cond_82
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v8, v2

    .line 6008
    .local v8, "imeUserId":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6010
    .local v7, "appUserId":I
    invoke-static {p2, v8}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 6012
    .local v6, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 6019
    .local v3, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v9, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v2, v9

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v1

    return-object v9

    .line 6021
    .end local v3    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v4    # "uid":I
    .end local v6    # "contentUriOwnerUserId":I
    .end local v7    # "appUserId":I
    .end local v8    # "imeUserId":I
    :catchall_a0
    move-exception v2

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a0

    throw v2

    .line 5984
    :cond_a3
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5980
    .end local v0    # "contentUriScheme":Ljava/lang/String;
    :cond_ab
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5977
    :cond_b3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5974
    :cond_bc
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "isCritical"    # Z

    .line 6108
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6111
    .local v0, "p":Landroid/util/Printer;
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 6112
    .local v1, "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz p3, :cond_d5

    array-length v2, p3

    if-lez v2, :cond_d5

    .line 6114
    if-eqz v1, :cond_17

    .line 6115
    :try_start_10
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 6117
    :cond_17
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_24

    .line 6118
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_25

    .line 6122
    :cond_24
    goto :goto_2d

    .line 6120
    :catch_25
    move-exception v2

    .line 6121
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "InputMethodManagerService"

    const-string v4, "RemoteException!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2d
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_57

    const-string/jumbo v2, "logging"

    aget-object v5, p3, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 6124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current IMMS state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_d4

    .line 6125
    :cond_57
    const-string/jumbo v2, "logging"

    aget-object v5, p3, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    array-length v2, p3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_d4

    .line 6126
    const-string v2, "enable-text"

    aget-object v5, p3, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_9f

    aget-object v2, p3, v6

    if-eqz v2, :cond_9f

    .line 6127
    aget-object v2, p3, v6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_548

    :cond_7f
    goto :goto_93

    :sswitch_80
    const-string v6, "IMMS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    goto :goto_94

    :sswitch_89
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    move v3, v4

    goto :goto_94

    :goto_93
    move v3, v5

    :goto_94
    packed-switch v3, :pswitch_data_552

    goto :goto_9e

    .line 6132
    :pswitch_98
    sput-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    .line 6133
    goto :goto_9e

    .line 6129
    :pswitch_9b
    sput-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    .line 6130
    nop

    .line 6135
    :goto_9e
    goto :goto_d4

    .line 6137
    :cond_9f
    const-string v2, "disable-text"

    aget-object v7, p3, v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    aget-object v2, p3, v6

    if-eqz v2, :cond_d4

    .line 6138
    aget-object v2, p3, v6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_55a

    :cond_b6
    goto :goto_ca

    :sswitch_b7
    const-string v4, "IMMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    move v4, v3

    goto :goto_cb

    :sswitch_c1
    const-string v6, "all"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    goto :goto_cb

    :goto_ca
    move v4, v5

    :goto_cb
    packed-switch v4, :pswitch_data_564

    goto :goto_d4

    .line 6143
    :pswitch_cf
    sput-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    .line 6144
    goto :goto_d4

    .line 6140
    :pswitch_d2
    sput-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    .line 6150
    :cond_d4
    :goto_d4
    return-void

    .line 6154
    :cond_d5
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 6155
    :try_start_d8
    const-string v3, "Current Input Method Manager state:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6156
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6157
    .local v3, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6158
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_fc
    if-ge v4, v3, :cond_12a

    .line 6159
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 6160
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  InputMethod #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6161
    const-string v6, "    "

    invoke-virtual {v5, v0, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6158
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_fc

    .line 6163
    .end local v4    # "i":I
    :cond_12a
    const-string v4, "  Clients:"

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6164
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 6165
    .local v4, "numClients":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_136
    if-ge v5, v4, :cond_1d8

    .line 6166
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6167
    .local v6, "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    inputContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    sessionRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    sessionRequestedForAccessibility="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    curSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6165
    .end local v6    # "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_136

    .line 6175
    .end local v5    # "i":I
    :cond_1d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurMethodId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6176
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6177
    .local v5, "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurClient="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurSeq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurPerceptible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurFocusedWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " softInputMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 6181
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6179
    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6183
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6184
    .local v6, "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mHaveConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBoundToMethod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mVisibleBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6186
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6184
    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurTokenDisplayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurHostInputToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurIntent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6191
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v7

    move-object v1, v7

    .line 6192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurMethod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mEnabledSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mShowRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mShowExplicitlyRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mShowForced="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mInputShown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mInFullscreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mInteractive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSettingsObserver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mImeHiddenByDisplayPolicy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSynergyOperate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v8

    .line 6204
    invoke-interface {v8}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->synergyOperate()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6203
    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mMirrorInputState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v8

    .line 6207
    invoke-interface {v8}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getMirrorInputState()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6206
    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_435
    .catchall {:try_start_d8 .. :try_end_435} :catchall_545

    .line 6209
    :try_start_435
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_45c

    .line 6210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  MIRROR_INPUT_STATE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6211
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mirror_input_state"

    .line 6210
    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_45c
    .catch Ljava/lang/Exception; {:try_start_435 .. :try_end_45c} :catch_45d
    .catchall {:try_start_435 .. :try_end_45c} :catchall_545

    .line 6215
    :cond_45c
    goto :goto_476

    .line 6213
    :catch_45d
    move-exception v7

    .line 6214
    .local v7, "e":Ljava/lang/Exception;
    :try_start_45e
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception cause:Failed to read Settings for MIRROR_INPUT_STATE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6217
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_476
    const-string v7, "  mSwitchingController:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6218
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v7, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 6219
    const-string v7, "  mSettings:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6220
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v8, "    "

    invoke-virtual {v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6222
    const-string v7, "  mStartInputHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6223
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6225
    const-string v7, "  mSoftInputShowHideHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6226
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6227
    .end local v3    # "N":I
    .end local v4    # "numClients":I
    monitor-exit v2
    :try_end_4a5
    .catchall {:try_start_45e .. :try_end_4a5} :catchall_545

    .line 6230
    if-eqz p4, :cond_4a8

    .line 6231
    return-void

    .line 6234
    :cond_4a8
    const-string v2, " "

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6235
    if-eqz v5, :cond_4d4

    .line 6236
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6238
    :try_start_4b2
    iget-object v2, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4bb
    .catch Ljava/io/IOException; {:try_start_4b2 .. :try_end_4bb} :catch_4bc
    .catch Landroid/os/RemoteException; {:try_start_4b2 .. :try_end_4bb} :catch_4bc

    goto :goto_4d3

    .line 6239
    :catch_4bc
    move-exception v2

    .line 6240
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump input method client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6241
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4d3
    goto :goto_4d9

    .line 6243
    :cond_4d4
    const-string v2, "No input method client."

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6246
    :goto_4d9
    if-eqz v6, :cond_515

    if-eq v5, v6, :cond_515

    .line 6247
    const-string v2, " "

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6248
    const-string v2, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6250
    const-string v2, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6251
    const-string v2, " "

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6252
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6254
    :try_start_4f4
    iget-object v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4fd
    .catch Ljava/io/IOException; {:try_start_4f4 .. :try_end_4fd} :catch_4fe
    .catch Landroid/os/RemoteException; {:try_start_4f4 .. :try_end_4fd} :catch_4fe

    .line 6257
    goto :goto_515

    .line 6255
    :catch_4fe
    move-exception v2

    .line 6256
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump input method client in focused window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6260
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_515
    :goto_515
    const-string v2, " "

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6261
    if-eqz v1, :cond_53f

    .line 6262
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6264
    :try_start_51f
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_526
    .catch Ljava/io/IOException; {:try_start_51f .. :try_end_526} :catch_527
    .catch Landroid/os/RemoteException; {:try_start_51f .. :try_end_526} :catch_527

    goto :goto_53e

    .line 6265
    :catch_527
    move-exception v2

    .line 6266
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump input method service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6267
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_53e
    goto :goto_544

    .line 6269
    :cond_53f
    const-string v2, "No input method service."

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6271
    :goto_544
    return-void

    .line 6227
    .end local v5    # "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v6    # "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :catchall_545
    move-exception v3

    :try_start_546
    monitor-exit v2
    :try_end_547
    .catchall {:try_start_546 .. :try_end_547} :catchall_545

    throw v3

    :sswitch_data_548
    .sparse-switch
        0x179a1 -> :sswitch_89
        0x2259ca -> :sswitch_80
    .end sparse-switch

    :pswitch_data_552
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_98
    .end packed-switch

    :sswitch_data_55a
    .sparse-switch
        0x179a1 -> :sswitch_c1
        0x2259ca -> :sswitch_b7
    .end sparse-switch

    :pswitch_data_564
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_cf
    .end packed-switch
.end method

.method private dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4856
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4857
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4858
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4859
    const-wide v3, 0x10500000002L

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4860
    const-wide v3, 0x10900000003L

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4861
    const-wide v3, 0x10900000004L

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4862
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 4861
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4863
    const-wide v3, 0x10900000005L

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 4864
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 4863
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4865
    const-wide v3, 0x10900000006L

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4866
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v5

    .line 4865
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4867
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_67

    .line 4868
    const-wide v4, 0x10b00000007L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4870
    :cond_67
    const-wide v3, 0x10900000008L

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4871
    const-wide v3, 0x10800000009L

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4872
    const-wide v3, 0x1080000000aL

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4873
    const-wide v3, 0x1080000000bL

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4874
    const-wide v3, 0x1080000000cL

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4875
    const-wide v3, 0x1080000000dL

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4876
    const-wide v3, 0x1090000000eL

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4877
    const-wide v3, 0x1050000000fL

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4878
    const-wide v3, 0x10800000010L

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4879
    const-wide v3, 0x10500000011L

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4880
    const-wide v3, 0x10800000012L

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4881
    const-wide v3, 0x10800000013L

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4882
    const-wide v3, 0x10800000014L

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4883
    const-wide v3, 0x10500000015L

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4884
    const-wide v3, 0x10500000016L

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4885
    const-wide v3, 0x10800000017L

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodMenuController;->getShowImeWithHardKeyboard()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4886
    const-wide v3, 0x10800000018L

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4888
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4889
    .end local v1    # "token":J
    monitor-exit v0

    .line 4890
    return-void

    .line 4889
    :catchall_124
    move-exception v1

    monitor-exit v0
    :try_end_126
    .catchall {:try_start_3 .. :try_end_126} :catchall_124

    throw v1
.end method

.method private executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V
    .registers 4
    .param p1, "target"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "msg"    # Landroid/os/Message;

    .line 2591
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_c

    .line 2598
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_12

    .line 2600
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2601
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 2603
    :goto_12
    return-void
.end method

.method private finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 5
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 3223
    if-eqz p1, :cond_17

    .line 3224
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v0, :cond_17

    .line 3226
    :try_start_6
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 3229
    goto :goto_14

    .line 3227
    :catch_c
    move-exception v0

    .line 3228
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 3233
    :cond_17
    return-void
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3204
    if-eqz p1, :cond_28

    .line 3205
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 3207
    :try_start_7
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 3211
    goto :goto_1b

    .line 3208
    :catch_d
    move-exception v0

    .line 3209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3210
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3212
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 3214
    :cond_1d
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_28

    .line 3215
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3216
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 3219
    :cond_28
    return-void
.end method

.method private getAppShowFlagsLocked()I
    .registers 3

    .line 2656
    const/4 v0, 0x0

    .line 2657
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 2658
    or-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 2659
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_e

    .line 2660
    or-int/lit8 v0, v0, 0x1

    .line 2662
    :cond_e
    :goto_e
    return v0
.end method

.method private getCurIdLocked()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurIntentLocked()Landroid/content/Intent;
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    return-object v0
.end method

.method private getCurMethodUidLocked()I
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v0

    return v0
.end method

.method private getCurTokenLocked()Landroid/os/IBinder;
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private getEnabledInputMethodListLocked(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2227
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 2230
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2231
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2230
    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->filterMethodLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2234
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2235
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v7, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2236
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v7

    move-object v4, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2237
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 13
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2430
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_31

    .line 2432
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    .line 2433
    .local v0, "selectedMethodId":Ljava/lang/String;
    if-nez p1, :cond_19

    if-eqz v0, :cond_19

    .line 2434
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_21

    .line 2436
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_19
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2438
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_21
    if-nez v1, :cond_28

    .line 2439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2441
    :cond_28
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2444
    .end local v0    # "selectedMethodId":Ljava/lang/String;
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_31
    invoke-direct {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2445
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2446
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_42

    .line 2447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2449
    :cond_42
    new-instance v2, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2450
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x1

    move-object v3, v2

    move-object v6, v0

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2451
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getImeShowFlagsLocked()I
    .registers 3

    .line 2644
    const/4 v0, 0x0

    .line 2645
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 2646
    or-int/lit8 v0, v0, 0x3

    goto :goto_e

    .line 2648
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_e

    .line 2649
    or-int/lit8 v0, v0, 0x1

    .line 2651
    :cond_e
    :goto_e
    return v0
.end method

.method private getInputMethodListInternal(II)Ljava/util/List;
    .registers 8
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

    .line 2152
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 2153
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2157
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2158
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2157
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2159
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    .line 2160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2162
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3b

    .line 2164
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_2a
    aget v4, v1, v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 2166
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2164
    return-object v4

    .line 2166
    :catchall_35
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2167
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    .end local p2    # "directBootAwareness":I
    throw v4

    .line 2168
    .end local v1    # "resolvedUserIds":[I
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "directBootAwareness":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private getInputMethodListLocked(II)Ljava/util/List;
    .registers 10
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

    .line 2207
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_12

    if-nez p2, :cond_12

    .line 2210
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_2d

    .line 2212
    .end local v0    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_12
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2213
    .local v4, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2214
    .local v5, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2216
    .local v0, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2217
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, v0

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    move-object v0, v5

    .line 2222
    .end local v4    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v5    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_2d
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->filterMethodLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getInputMethodNavButtonFlagsLocked()I
    .registers 5

    .line 3303
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_9

    .line 3305
    const-string v1, "Waiting for the lazy init of mImeDrawsImeNavBarRes"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3308
    :cond_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 3309
    invoke-virtual {v0}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 3310
    .local v0, "canImeDrawsImeNavBar":Z
    :goto_18
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v3

    .line 3312
    .local v3, "shouldShowImeSwitcherWhenImeIsShown":Z
    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    .line 3313
    :goto_21
    if-eqz v3, :cond_25

    .line 3314
    const/4 v2, 0x2

    goto :goto_26

    :cond_25
    nop

    :goto_26
    or-int/2addr v1, v2

    .line 3312
    return v1
.end method

.method private getLastBindTimeLocked()J
    .registers 3

    .line 796
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getLastBindTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .registers 5
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6456
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6457
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 6458
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 6459
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1908
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_b

    .line 1909
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_19

    .line 1911
    :cond_b
    nop

    .line 1910
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 1911
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1908
    :goto_19
    return-object v0
.end method

.method private getSequenceNumberLocked()I
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method private getVirtualDisplayToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .registers 9
    .param p1, "clientDisplayId"    # I
    .param p2, "imeDisplayId"    # I

    .line 2726
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 2727
    return-object v0

    .line 2729
    :cond_4
    move v1, p1

    .line 2730
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2732
    .local v2, "matrix":Landroid/graphics/Matrix;
    :goto_6
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 2733
    .local v3, "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    if-nez v3, :cond_11

    .line 2734
    return-object v0

    .line 2736
    :cond_11
    if-nez v2, :cond_1e

    .line 2737
    new-instance v4, Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v4

    goto :goto_25

    .line 2739
    :cond_1e
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2741
    :goto_25
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v4, p2, :cond_2e

    .line 2742
    return-object v2

    .line 2744
    :cond_2e
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2745
    .end local v3    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    goto :goto_6
.end method

.method private static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .registers 4
    .param p0, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6563
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 6564
    .local v0, "nextOption":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 6565
    nop

    .line 6573
    .end local v0    # "nextOption":Ljava/lang/String;
    const/4 v0, -0x2

    return v0

    .line 6567
    .restart local v0    # "nextOption":Ljava/lang/String;
    :cond_9
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_32

    :cond_11
    goto :goto_25

    :sswitch_12
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_25

    :sswitch_1c
    const-string v2, "-u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x0

    :goto_25
    packed-switch v1, :pswitch_data_3c

    .line 6572
    .end local v0    # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 6570
    .restart local v0    # "nextOption":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    :sswitch_data_32
    .sparse-switch
        0x5e8 -> :sswitch_1c
        0x4f7b216b -> :sswitch_12
    .end sparse-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private handleSetInteractive(Z)V
    .registers 8
    .param p1, "interactive"    # Z

    .line 5330
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5331
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 5332
    if-eqz p1, :cond_a

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5335
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2b

    .line 5336
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 5338
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodUidLocked()I

    move-result v5

    .line 5337
    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldFinishInputWithReportToIme(I)Z

    move-result v4

    .line 5336
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    .line 5340
    :cond_2b
    monitor-exit v0

    .line 5341
    return-void

    .line 5340
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 21
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;
    .param p2, "enabled"    # Z

    .line 6528
    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v8

    .line 6529
    .local v8, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 6530
    .local v9, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 6531
    .local v10, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 6532
    .local v11, "error":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 6533
    .local v1, "hasFailed":Z
    const-class v12, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v12

    .line 6534
    :try_start_16
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6535
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 6534
    invoke-static {v8, v0, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6536
    .local v0, "userIds":[I
    array-length v13, v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_56

    const/4 v14, 0x0

    move v15, v1

    move v6, v14

    .end local v1    # "hasFailed":Z
    .local v15, "hasFailed":Z
    :goto_28
    if-ge v6, v13, :cond_4e

    :try_start_2a
    aget v1, v0, v6

    move v5, v1

    .line 6537
    .local v5, "userId":I
    move-object/from16 v4, p1

    invoke-direct {v7, v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 6538
    move/from16 v17, v6

    goto :goto_4b

    .line 6540
    :cond_38
    move-object/from16 v1, p0

    move v2, v5

    move-object v3, v9

    move/from16 v4, p2

    move/from16 v16, v5

    .end local v5    # "userId":I
    .local v16, "userId":I
    move-object v5, v10

    move/from16 v17, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v15, v1

    .line 6536
    .end local v16    # "userId":I
    :goto_4b
    add-int/lit8 v6, v17, 0x1

    goto :goto_28

    .line 6543
    .end local v0    # "userIds":[I
    :cond_4e
    monitor-exit v12
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_53

    .line 6544
    if-eqz v15, :cond_52

    const/4 v14, -0x1

    :cond_52
    return v14

    .line 6543
    :catchall_53
    move-exception v0

    move v1, v15

    goto :goto_57

    .end local v15    # "hasFailed":Z
    .restart local v1    # "hasFailed":Z
    :catchall_56
    move-exception v0

    :goto_57
    :try_start_57
    monitor-exit v12
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method

.method private handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .registers 23
    .param p1, "userId"    # I
    .param p2, "imeId"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "out"    # Ljava/io/PrintWriter;
    .param p5, "error"    # Ljava/io/PrintWriter;

    .line 6591
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    .line 6592
    .local v12, "failedToEnableUnknownIme":Z
    const/4 v13, 0x0

    .line 6593
    .local v13, "previouslyEnabled":Z
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/4 v14, 0x0

    if-ne v7, v1, :cond_28

    .line 6594
    if-eqz v9, :cond_23

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 6595
    const/4 v12, 0x1

    goto :goto_82

    .line 6597
    :cond_23
    invoke-direct {v0, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v13

    goto :goto_82

    .line 6600
    :cond_28
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v15

    .line 6601
    .local v15, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6602
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object v4, v15

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 6603
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    if-eqz v9, :cond_75

    .line 6604
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 6605
    const/4 v12, 0x1

    goto :goto_82

    .line 6607
    :cond_4d
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 6608
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 6609
    const/4 v2, 0x1

    .line 6610
    .end local v13    # "previouslyEnabled":Z
    .local v2, "previouslyEnabled":Z
    move v13, v2

    goto :goto_6f

    .line 6612
    .end local v2    # "previouslyEnabled":Z
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v13    # "previouslyEnabled":Z
    :cond_6e
    goto :goto_55

    .line 6613
    :cond_6f
    :goto_6f
    if-nez v13, :cond_82

    .line 6614
    invoke-virtual {v1, v8, v14}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_82

    .line 6618
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6621
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v3

    .line 6619
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    .line 6624
    .end local v1    # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v15    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_82
    :goto_82
    if-eqz v12, :cond_cb

    .line 6625
    const-string v1, "Unknown input method "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6626
    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot be enabled for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"ime enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed due to its unrecognized IME ID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6631
    return v14

    .line 6634
    :cond_cb
    const-string v1, "Input method "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6635
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6636
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6637
    if-ne v9, v13, :cond_dd

    const-string v1, "already "

    goto :goto_e0

    :cond_dd
    const-string/jumbo v1, "now "

    :goto_e0
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6638
    if-eqz v9, :cond_e8

    const-string v1, "enabled"

    goto :goto_ea

    :cond_e8
    const-string v1, "disabled"

    :goto_ea
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6639
    const-string v1, " for user #"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6640
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 6641
    const/4 v1, 0x1

    return v1
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 18
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6470
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 6471
    .local v0, "all":Z
    const/4 v2, 0x0

    .line 6472
    .local v2, "brief":Z
    const/4 v3, -0x2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 6474
    .end local v0    # "all":Z
    .local v2, "all":Z
    .local v3, "brief":Z
    .local v4, "userIdToBeResolved":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 6475
    .local v0, "nextOption":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_86

    .line 6476
    nop

    .line 6491
    .end local v0    # "nextOption":Ljava/lang/String;
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7

    .line 6492
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 6493
    .local v0, "pr":Ljava/io/PrintWriter;
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6494
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 6493
    invoke-static {v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v8

    .line 6495
    .local v8, "userIds":[I
    array-length v9, v8

    move v10, v6

    :goto_28
    if-ge v10, v9, :cond_81

    aget v11, v8, v10

    .line 6496
    .local v11, "userId":I
    if-eqz v2, :cond_33

    .line 6497
    invoke-direct {v1, v11, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object v12

    goto :goto_37

    .line 6498
    :cond_33
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    :goto_37
    nop

    .line 6499
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    array-length v13, v8

    if-le v13, v5, :cond_48

    .line 6500
    const-string v13, "User #"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6501
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 6502
    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6504
    :cond_48
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 6505
    .local v14, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_62

    .line 6506
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 6508
    :cond_62
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6509
    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6510
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    const-string v5, "  "

    invoke-virtual {v14, v15, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6512
    .end local v14    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :goto_7b
    const/4 v5, 0x1

    goto :goto_4c

    .line 6495
    .end local v11    # "userId":I
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_7d
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto :goto_28

    .line 6514
    .end local v0    # "pr":Ljava/io/PrintWriter;
    .end local v8    # "userIds":[I
    :cond_81
    monitor-exit v7

    .line 6515
    return v6

    .line 6514
    :catchall_83
    move-exception v0

    monitor-exit v7
    :try_end_85
    .catchall {:try_start_14 .. :try_end_85} :catchall_83

    throw v0

    .line 6478
    .local v0, "nextOption":Ljava/lang/String;
    :cond_86
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_ca

    :cond_8e
    goto :goto_b6

    :sswitch_8f
    const-string v6, "--user"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    const/4 v5, 0x3

    goto :goto_b6

    :sswitch_99
    const-string v6, "-u"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    const/4 v5, 0x2

    goto :goto_b6

    :sswitch_a3
    const-string v6, "-s"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    const/4 v5, 0x1

    goto :goto_b6

    :sswitch_ad
    const-string v7, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    move v5, v6

    :goto_b6
    packed-switch v5, :pswitch_data_dc

    goto :goto_c7

    .line 6487
    :pswitch_ba
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_c7

    .line 6483
    :pswitch_c3
    const/4 v3, 0x1

    .line 6484
    goto :goto_c7

    .line 6480
    :pswitch_c5
    const/4 v2, 0x1

    .line 6481
    nop

    .line 6490
    .end local v0    # "nextOption":Ljava/lang/String;
    :goto_c7
    goto/16 :goto_8

    nop

    :sswitch_data_ca
    .sparse-switch
        0x5d4 -> :sswitch_ad
        0x5e6 -> :sswitch_a3
        0x5e8 -> :sswitch_99
        0x4f7b216b -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c3
        :pswitch_ba
        :pswitch_ba
    .end packed-switch
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 22
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6693
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 6694
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v3

    .line 6695
    .local v3, "userIdToBeResolved":I
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 6696
    :try_start_d
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6697
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6696
    invoke-static {v3, v0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6698
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_1e
    if-ge v7, v5, :cond_147

    aget v8, v0, v7

    .line 6699
    .local v8, "userId":I
    move-object/from16 v15, p1

    invoke-direct {v1, v8, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 6700
    goto/16 :goto_142

    .line 6704
    :cond_2c
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    if-ne v8, v9, :cond_af

    .line 6705
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v6, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 6707
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 6709
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 6711
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 6714
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 6715
    .local v10, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 6716
    nop

    .end local v10    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_53

    .line 6719
    :cond_68
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_74
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 6720
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 6721
    nop

    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_74

    .line 6722
    :cond_8a
    invoke-virtual {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 6723
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6724
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6725
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    .line 6723
    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 6726
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    .line 6727
    .local v9, "nextIme":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_10e

    .line 6729
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_af
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 6730
    .local v12, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v9

    .line 6731
    .local v14, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v9

    .line 6733
    .local v13, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v13, v8}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 6734
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move v10, v8

    move-object v11, v13

    move-object/from16 v19, v13

    .end local v13    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v19, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move-object v13, v14

    move-object v6, v14

    .end local v14    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v6, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move/from16 v14, v16

    invoke-static/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    .line 6736
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6737
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/16 v18, 0x0

    move-object v13, v9

    move-object v15, v10

    move-object/from16 v16, v12

    move/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 6740
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 6741
    .restart local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 6744
    .local v11, "nextIme":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v9, v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 6745
    new-instance v13, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v13, v9}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v10, v13}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 6749
    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 6750
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    move-object v9, v11

    .line 6752
    .end local v6    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v11    # "nextIme":Ljava/lang/String;
    .end local v12    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v19    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v9, "nextIme":Ljava/lang/String;
    :goto_10e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset current and enabled IMEs for user #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Selected: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6754
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 6698
    .end local v8    # "userId":I
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_142
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1e

    .line 6756
    .end local v0    # "userIds":[I
    :cond_147
    monitor-exit v4

    .line 6757
    const/4 v0, 0x0

    return v0

    .line 6756
    :catchall_14a
    move-exception v0

    monitor-exit v4
    :try_end_14c
    .catchall {:try_start_d .. :try_end_14c} :catchall_14a

    throw v0
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 18
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6652
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 6653
    .local v2, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 6654
    .local v3, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 6655
    .local v4, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6656
    .local v5, "error":Ljava/io/PrintWriter;
    const/4 v6, 0x0

    .line 6657
    .local v6, "hasFailed":Z
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7

    .line 6658
    :try_start_16
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6659
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 6658
    invoke-static {v2, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6660
    .local v0, "userIds":[I
    array-length v8, v0

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v8, :cond_88

    aget v11, v0, v10
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_91

    .line 6661
    .local v11, "userId":I
    move-object/from16 v12, p1

    :try_start_2c
    invoke-direct {v1, v11, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v13

    if-nez v13, :cond_33

    .line 6662
    goto :goto_85

    .line 6664
    :cond_33
    invoke-direct {v1, v3, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;I)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    .line 6665
    .local v13, "failedToSelectUnknownIme":Z
    if-eqz v13, :cond_74

    .line 6666
    const-string v14, "Unknown input method "

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6667
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6668
    const-string v14, " cannot be selected for user #"

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6669
    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6671
    const-string v14, "InputMethodManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"ime set "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\" for user #"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " failed due to its unrecognized IME ID."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 6674
    :cond_74
    const-string v9, "Input method "

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6675
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6676
    const-string v9, " selected for user #"

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6677
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6679
    :goto_84
    or-int/2addr v6, v13

    .line 6660
    .end local v11    # "userId":I
    .end local v13    # "failedToSelectUnknownIme":Z
    :goto_85
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_88
    move-object/from16 v12, p1

    .line 6681
    .end local v0    # "userIds":[I
    monitor-exit v7

    .line 6682
    if-eqz v6, :cond_8f

    const/4 v9, -0x1

    goto :goto_90

    :cond_8f
    const/4 v9, 0x0

    :goto_90
    return v9

    .line 6681
    :catchall_91
    move-exception v0

    move-object/from16 v12, p1

    :goto_94
    monitor-exit v7
    :try_end_95
    .catchall {:try_start_2c .. :try_end_95} :catchall_96

    throw v0

    :catchall_96
    move-exception v0

    goto :goto_94
.end method

.method private handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I
    .registers 12
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6768
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 6769
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 6770
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_b2

    :cond_11
    goto :goto_33

    :sswitch_12
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_34

    :sswitch_1d
    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_34

    :sswitch_28
    const-string/jumbo v2, "save-for-bugreport"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    goto :goto_34

    :goto_33
    move v2, v3

    :goto_34
    packed-switch v2, :pswitch_data_c0

    .line 6781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6782
    const-string v2, "Input method trace options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6783
    const-string v2, "  start: Start tracing"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6784
    const-string v2, "  stop: Stop tracing"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6785
    return v3

    .line 6778
    :pswitch_5d
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    .line 6779
    return v4

    .line 6775
    :pswitch_65
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 6776
    goto :goto_75

    .line 6772
    :pswitch_6d
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 6773
    nop

    .line 6787
    :goto_75
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    .line 6789
    .local v2, "isImeTraceEnabled":Z
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    .line 6790
    :try_start_80
    new-instance v3, Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v3, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 6791
    .local v3, "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_ae

    .line 6792
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6793
    .local v6, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v6, :cond_ac

    .line 6795
    :try_start_9e
    iget-object v7, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7, v2}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a3} :catch_a4

    .line 6799
    goto :goto_ac

    .line 6796
    :catch_a4
    move-exception v7

    .line 6797
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Error while trying to enable/disable ime trace on client window"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6801
    .end local v6    # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_ac
    :goto_ac
    goto :goto_90

    .line 6802
    :cond_ad
    return v4

    .line 6791
    .end local v3    # "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    :catchall_ae
    move-exception v3

    :try_start_af
    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v3

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x174ab7ac -> :sswitch_28
        0x360802 -> :sswitch_1d
        0x68ac462 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
    .end packed-switch
.end method

.method private hasConnectionLocked()Z
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasConnection()Z

    move-result v0

    return v0
.end method

.method private hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 4994
    const-string v0, "IMMS.hideMySoftInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4995
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4996
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4997
    monitor-exit v0

    return-void

    .line 4999
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2c

    .line 5001
    .local v3, "ident":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v5, p2, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_26

    .line 5006
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5007
    nop

    .line 5008
    .end local v3    # "ident":J
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    .line 5009
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5010
    return-void

    .line 5006
    .restart local v3    # "ident":J
    :catchall_26
    move-exception v1

    :try_start_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5007
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v1

    .line 5008
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private hideStatusBarIconLocked()V
    .registers 4

    .line 3295
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_a

    .line 3296
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 3298
    :cond_a
    return-void
.end method

.method private isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3897
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v2, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v3, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v0

    .line 3899
    .local v0, "imeClientFocus":I
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z
    .registers 3
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "touchExplorationEnabled"    # Z

    .line 2301
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_e

    .line 2303
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsInlineSuggestionsWithTouchExploration()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2301
    :goto_11
    return v0
.end method

.method private isNonPreemptibleImeLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "selectedMethodId"    # Ljava/lang/String;

    .line 2943
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2944
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_15

    .line 2945
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2947
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private isSelectedMethodBoundLocked()Z
    .registers 4

    .line 2952
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v0

    .line 2953
    .local v0, "curId":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method static synthetic lambda$handleMessage$4(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 3
    .param p0, "imes"    # Ljava/util/List;
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 5260
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$5(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p0, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 6745
    nop

    .line 6746
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6745
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$6(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "ime"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 6754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private maybeInitImeNavbarConfigLocked(I)V
    .registers 7
    .param p1, "targetUserId"    # I

    .line 1880
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 1881
    .local v0, "profileParentUserId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-eqz v1, :cond_18

    .line 1882
    invoke-virtual {v1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_18

    .line 1883
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->close()V

    .line 1884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 1886
    :cond_18
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-nez v1, :cond_42

    .line 1888
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_27

    .line 1889
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .local v1, "userContext":Landroid/content/Context;
    goto :goto_32

    .line 1891
    .end local v1    # "userContext":Landroid/content/Context;
    :cond_27
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 1894
    .restart local v1    # "userContext":Landroid/content/Context;
    :goto_32
    const v2, 0x1110165

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->create(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/function/Consumer;)Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 1903
    .end local v1    # "userContext":Landroid/content/Context;
    :cond_42
    return-void
.end method

.method private notifyUserAction(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4894
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 4895
    const-string v0, "InputMethodManagerService"

    const-string v1, "Got the notification of a user action."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    :cond_b
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4898
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_21

    .line 4899
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 4900
    const-string v1, "InputMethodManagerService"

    const-string v2, "Ignoring the user action notification from IMEs that are no longer active."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    :cond_1f
    monitor-exit v0

    return-void

    .line 4905
    :cond_21
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4906
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_36

    .line 4907
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4909
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_36
    monitor-exit v0

    .line 4910
    return-void

    .line 4909
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private obtainMessageIIIO(IIIILjava/lang/Object;)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "argi1"    # I
    .param p3, "argi2"    # I
    .param p4, "argi3"    # I
    .param p5, "arg1"    # Ljava/lang/Object;

    .line 2582
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2583
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2584
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2585
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2586
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2587
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .line 2574
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2575
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2576
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2577
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 2556
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2557
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2558
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2559
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 2564
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2565
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2566
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2567
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2568
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method private onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .param p4, "touchExplorationEnabled"    # Z

    .line 2244
    const-string v0, "InputMethodManagerService"

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearPendingInlineSuggestionsRequestLocked()V

    .line 2245
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 2246
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2248
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_13
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    if-ne p1, v2, :cond_42

    if-eqz v1, :cond_42

    .line 2249
    invoke-static {v1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2250
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    .line 2251
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;-><init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    .line 2252
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->performOnCreateInlineSuggestionsRequestLocked()V

    goto :goto_45

    .line 2259
    :cond_38
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 2260
    const-string v2, "IME not connected. Delaying inline suggestions request."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2264
    :cond_42
    invoke-interface {p3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_45} :catch_46

    .line 2268
    :cond_45
    :goto_45
    goto :goto_5d

    .line 2266
    :catch_46
    move-exception v2

    .line 2267
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException calling onCreateInlineSuggestionsRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5d
    return-void
.end method

.method private onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V
    .registers 20
    .param p1, "show"    # Z
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "reason"    # I

    .line 4983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4984
    move/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object v1

    .line 4986
    .local v1, "info":Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v13, v1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    move-object v6, v3

    move/from16 v11, p3

    invoke-direct/range {v6 .. v15}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V

    .line 4990
    return-void
.end method

.method private onStylusHandwritingReady(II)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "pid"    # I

    .line 5326
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5327
    return-void
.end method

.method private prepareClientSwitchLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 4
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2961
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2963
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_c

    .line 2964
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    .line 2967
    :cond_c
    return-void
.end method

.method private publishLocalService()V
    .registers 4

    .line 5778
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 5779
    return-void
.end method

.method static queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p5, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 5368
    .local p2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p3, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->clear()V

    .line 5369
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->clear()V

    .line 5372
    const-string v4, "InputMethodManagerService"

    packed-switch v3, :pswitch_data_122

    .line 5381
    const/high16 v0, 0x10000000

    .line 5382
    .local v0, "directBootAwarenessFlags":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown directBootAwareness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Falling back to DirectBootAwareness.AUTO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    goto :goto_38

    .line 5374
    .end local v0    # "directBootAwarenessFlags":I
    :pswitch_31
    const/high16 v0, 0xc0000

    .line 5376
    .restart local v0    # "directBootAwarenessFlags":I
    move v5, v0

    goto :goto_38

    .line 5378
    .end local v0    # "directBootAwarenessFlags":I
    :pswitch_35
    const/high16 v0, 0x10000000

    .line 5379
    .restart local v0    # "directBootAwarenessFlags":I
    move v5, v0

    .line 5386
    .end local v0    # "directBootAwarenessFlags":I
    .local v5, "directBootAwarenessFlags":I
    :goto_38
    const v0, 0x8080

    or-int v6, v5, v0

    .line 5389
    .local v6, "flags":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.view.InputMethod"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move/from16 v8, p1

    invoke-virtual {v0, v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 5392
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 5393
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 5395
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_5e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_11d

    .line 5396
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 5397
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5398
    .local v11, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v10}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v12

    .line 5399
    .local v12, "imeId":Ljava/lang/String;
    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v13, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 5400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping input method "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ": it does not require the permission "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    move-object/from16 v15, p0

    move-object/from16 v13, p2

    goto/16 :goto_117

    .line 5406
    :cond_a1
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Checking "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    :cond_bb
    :try_start_bb
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bd} :catch_fc

    .line 5410
    move-object/from16 v13, p2

    :try_start_bf
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c5} :catch_f8

    move-object/from16 v15, p0

    :try_start_c7
    invoke-direct {v0, v15, v10, v14}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 5411
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v14

    if-eqz v14, :cond_d1

    .line 5412
    goto :goto_117

    .line 5414
    :cond_d1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5415
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5416
    sget-boolean v14, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v14, :cond_f5

    .line 5417
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found an input method "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_f5} :catch_f6

    .line 5421
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_f5
    goto :goto_117

    .line 5419
    :catch_f6
    move-exception v0

    goto :goto_101

    :catch_f8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_101

    :catch_fc
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    .line 5420
    .local v0, "e":Ljava/lang/Exception;
    :goto_101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load input method "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "si":Landroid/content/pm/ServiceInfo;
    .end local v12    # "imeId":Ljava/lang/String;
    :goto_117
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p3

    goto/16 :goto_5e

    :cond_11d
    move-object/from16 v15, p0

    move-object/from16 v13, p2

    .line 5423
    .end local v9    # "i":I
    return-void

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
    .end packed-switch
.end method

.method private queryMethodMapForUser(I)Landroid/util/ArrayMap;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5742
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5743
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5744
    .local v5, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v1

    .line 5746
    .local v7, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v7, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5747
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move v2, p1

    move-object v3, v7

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    .line 5749
    return-object v0
.end method

.method private reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fullscreen"    # Z

    .line 6026
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6027
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6028
    monitor-exit v0

    return-void

    .line 6030
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2c

    .line 6031
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 6032
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbe5

    .line 6033
    const/4 v4, 0x0

    if-eqz p2, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    move v5, v4

    :goto_23
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6032
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 6036
    :cond_2c
    monitor-exit v0

    .line 6037
    return-void

    .line 6036
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startInputToken"    # Landroid/os/IBinder;

    .line 3423
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3424
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3425
    monitor-exit v0

    return-void

    .line 3427
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3428
    .local v1, "targetWindow":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 3429
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3431
    :cond_1a
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 3432
    .end local v1    # "targetWindow":Landroid/os/IBinder;
    monitor-exit v0

    .line 3433
    return-void

    .line 3432
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "selectedMethodId":Ljava/lang/String;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1860
    return-void

    .line 1862
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1863
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 1862
    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1864
    .local v1, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "InputMethodManagerService"

    if-eqz v2, :cond_2d

    .line 1865
    const-string v2, "No default found"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    return-void

    .line 1868
    :cond_2d
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 1869
    .local v4, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    sget-boolean v5, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v5, :cond_52

    .line 1870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default found, using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_52
    const/4 v3, -0x1

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1873
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .line 5669
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5670
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 5672
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 5673
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5674
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 5676
    nop

    .line 5677
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5676
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_24

    move v1, v3

    .line 5680
    goto :goto_3d

    .line 5678
    :catch_24
    move-exception v3

    .line 5679
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5683
    .end local v2    # "subtypeHashCode":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_3d
    :goto_3d
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5684
    return-void
.end method

.method private resetStylusHandwriting(I)V
    .registers 7
    .param p1, "requestId"    # I

    .line 4945
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4946
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v1

    .line 4947
    .local v1, "curRequest":Ljava/util/OptionalInt;
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    if-eq v2, p1, :cond_2d

    .line 4948
    :cond_15
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME requested to finish handwriting with a mismatched requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 4952
    .end local v1    # "curRequest":Ljava/util/OptionalInt;
    monitor-exit v0

    .line 4953
    return-void

    .line 4952
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V
    .registers 12
    .param p1, "state"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "active"    # Z
    .param p3, "fullscreen"    # Z
    .param p4, "reportToImeController"    # Z

    .line 5345
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 5346
    nop

    .line 5345
    const/16 v2, 0xbcc

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageIIIO(IIIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 5347
    return-void
.end method

.method private setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 3386
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 3388
    .local v0, "topFocusedDisplayId":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3389
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 3390
    monitor-exit v1

    return-void

    .line 3396
    :cond_11
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_19

    if-eqz v2, :cond_19

    .line 3398
    monitor-exit v1

    return-void

    .line 3400
    :cond_19
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3401
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 3402
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3403
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_35

    .line 3406
    packed-switch p3, :pswitch_data_38

    .line 3415
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    .line 3408
    :pswitch_2a
    const/4 v1, 0x1

    .line 3409
    .local v1, "dismissImeOnBackKeyPressed":Z
    goto :goto_2f

    .line 3411
    .end local v1    # "dismissImeOnBackKeyPressed":Z
    :pswitch_2c
    const/4 v1, 0x0

    .line 3412
    .restart local v1    # "dismissImeOnBackKeyPressed":Z
    goto :goto_2f

    .line 3415
    .end local v1    # "dismissImeOnBackKeyPressed":Z
    :cond_2e
    const/4 v1, 0x0

    .line 3418
    .restart local v1    # "dismissImeOnBackKeyPressed":Z
    :goto_2f
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    .line 3419
    return-void

    .line 3403
    .end local v1    # "dismissImeOnBackKeyPressed":Z
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2a
    .end packed-switch
.end method

.method private setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .line 4395
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4396
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4397
    monitor-exit v0

    return-void

    .line 4399
    :cond_b
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4400
    monitor-exit v0

    .line 4401
    return-void

    .line 4400
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4406
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4407
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4408
    monitor-exit v0

    return-void

    .line 4410
    :cond_b
    if-eqz p3, :cond_21

    .line 4411
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 4412
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4413
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 4412
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 4411
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_24

    .line 4415
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4417
    :goto_24
    monitor-exit v0

    .line 4418
    return-void

    .line 4417
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 5605
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5606
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 5608
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2c

    .line 5609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5610
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 5613
    return v1

    .line 5615
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_25
    goto :goto_e

    .line 5616
    :cond_26
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 5618
    return v2

    .line 5620
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5621
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 5624
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5625
    .local v2, "selId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v4

    if-nez v4, :cond_57

    .line 5626
    const-string v4, "InputMethodManagerService"

    const-string v5, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5630
    :cond_57
    return v1

    .line 5634
    .end local v2    # "selId":Ljava/lang/String;
    :cond_58
    return v2
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 4957
    if-nez p1, :cond_15

    .line 4958
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_42

    .line 4961
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4965
    :cond_15
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_42

    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setInputMethod of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    return-void

    .line 4971
    :cond_42
    :goto_42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4973
    .local v0, "ident":J
    :try_start_46
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4e

    .line 4975
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4976
    nop

    .line 4977
    return-void

    .line 4975
    :catchall_4e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4976
    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 7
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .line 5642
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5646
    const/4 v0, -0x1

    if-eqz p1, :cond_33

    if-gez p2, :cond_11

    goto :goto_33

    .line 5650
    :cond_11
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 5651
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5652
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5653
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5654
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_3b

    .line 5655
    :cond_27
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5657
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3b

    .line 5647
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5661
    :goto_3b
    if-nez p3, :cond_4b

    .line 5663
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_46
    const-string v1, ""

    :goto_48
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5665
    :cond_4b
    return-void
.end method

.method private setSelectedMethodIdLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "selectedMethodId"    # Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method private shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4523
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4524
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 4525
    monitor-exit v0

    return v2

    .line 4527
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 4528
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4527
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4530
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_24

    .line 4531
    monitor-exit v0

    return v2

    .line 4533
    :cond_24
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4534
    .end local v1    # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private shouldPreventImeStartupLocked(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "selectedMethodId"    # Ljava/lang/String;
    .param p2, "startInputFlags"    # I
    .param p3, "unverifiedTargetSdkVersion"    # I

    .line 2928
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2929
    return v1

    .line 2932
    :cond_6
    nop

    .line 2933
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    .line 2935
    .local v0, "imeVisibleAllowed":Z
    if-nez v0, :cond_19

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez v2, :cond_19

    .line 2937
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isNonPreemptibleImeLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 2935
    :goto_1a
    return v1
.end method

.method private shouldRestoreImeVisibility(Landroid/os/IBinder;I)Z
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "softInputMode"    # I

    .line 4320
    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    .line 4322
    :pswitch_7
    return v1

    .line 4324
    :pswitch_8
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_d

    .line 4325
    return v1

    .line 4328
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 18
    .param p1, "visibility"    # I

    .line 3320
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->shouldHideImeSwitcherLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 3321
    :cond_e
    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v1, :cond_13

    return v2

    .line 3322
    :cond_13
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1c

    return v2

    .line 3323
    :cond_1c
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2f

    .line 3324
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2f

    return v2

    .line 3325
    :cond_2f
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_cc

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_39

    goto/16 :goto_cc

    .line 3329
    :cond_39
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    .line 3334
    return v3

    .line 3335
    :cond_43
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_48

    .line 3336
    return v2

    .line 3339
    :cond_48
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3341
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 3342
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_5b

    return v3

    .line 3343
    :cond_5b
    if-ge v4, v3, :cond_5e

    return v2

    .line 3344
    :cond_5e
    const/4 v5, 0x0

    .line 3345
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 3346
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 3347
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 3348
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_63
    if-ge v9, v4, :cond_98

    .line 3349
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 3350
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3351
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 3352
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 3353
    .local v12, "subtypeCount":I
    if-nez v12, :cond_7c

    .line 3354
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 3356
    :cond_7c
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7d
    if-ge v13, v12, :cond_95

    .line 3357
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3358
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_8f

    .line 3359
    add-int/lit8 v5, v5, 0x1

    .line 3360
    move-object v7, v14

    goto :goto_92

    .line 3362
    :cond_8f
    add-int/lit8 v6, v6, 0x1

    .line 3363
    move-object v8, v14

    .line 3356
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_7d

    .line 3348
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    .end local v13    # "j":I
    :cond_95
    :goto_95
    add-int/lit8 v9, v9, 0x1

    goto :goto_63

    .line 3368
    .end local v9    # "i":I
    :cond_98
    if-gt v5, v3, :cond_cb

    if-le v6, v3, :cond_9d

    goto :goto_cb

    .line 3370
    :cond_9d
    if-ne v5, v3, :cond_ca

    if-ne v6, v3, :cond_ca

    .line 3371
    if-eqz v7, :cond_c9

    if-eqz v8, :cond_c9

    .line 3372
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    .line 3373
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-nez v9, :cond_bf

    .line 3374
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_c9

    :cond_bf
    nop

    .line 3375
    const-string v9, "TrySuppressingImeSwitcher"

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 3376
    return v2

    .line 3378
    :cond_c9
    return v3

    .line 3380
    :cond_ca
    return v2

    .line 3369
    :cond_cb
    :goto_cb
    return v3

    .line 3327
    .end local v1    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "N":I
    .end local v5    # "nonAuxCount":I
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_cc
    :goto_cc
    return v2
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 5579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5580
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 5584
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5587
    :cond_18
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5588
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 5589
    .local v2, "userId":I
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2d

    .line 5590
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5591
    return-void

    .line 5589
    .end local v2    # "userId":I
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private showMySoftInput(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 5014
    const-string v0, "IMMS.showMySoftInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5015
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5016
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 5017
    monitor-exit v0

    return-void

    .line 5019
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2c

    .line 5021
    .local v3, "ident":J
    :try_start_16
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0, v5, p2, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_26

    .line 5024
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5025
    nop

    .line 5026
    .end local v3    # "ident":J
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    .line 5027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5028
    return-void

    .line 5024
    .restart local v3    # "ident":J
    :catchall_26
    move-exception v1

    :try_start_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5025
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v1

    .line 5026
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private startInputOrWindowGainedFocusInternal(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 35
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 3925
    move-object/from16 v14, p0

    move-object/from16 v15, p7

    if-nez p3, :cond_11

    .line 3926
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3930
    :cond_11
    const-wide/16 v12, 0x20

    :try_start_13
    const-string v0, "IMMS.startInputOrWindowGainedFocus"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3933
    if-eqz v15, :cond_6b

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    iget v1, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3934
    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isInputMethodWindowInvisibleByScreenOn(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3935
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    iget v1, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3936
    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->isInputMethodWindowInvisibleByRecentTask(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3937
    :cond_32
    and-int/lit8 v0, p5, 0xf

    .line 3938
    .local v0, "state":I
    const-string v1, "com.miui.home"

    iget-object v2, v15, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5c

    iget-boolean v1, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeepInputConnectionForCTS:Z

    if-nez v1, :cond_5c

    .line 3942
    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "mi skip IMMS check"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    const-string/jumbo v1, "mi skip IMMS check"

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3944
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3945
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_58
    .catchall {:try_start_13 .. :try_end_58} :catchall_14b

    .line 4001
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3945
    return-object v1

    .line 3947
    :cond_5c
    :try_start_5c
    iget v1, v15, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    .line 3948
    .local v1, "actionId":I
    if-eqz v1, :cond_68

    const/4 v2, 0x1

    if-eq v1, v2, :cond_68

    .line 3950
    iput-boolean v2, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeepInputConnectionForCTS:Z

    goto :goto_6b

    .line 3952
    :cond_68
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeepInputConnectionForCTS:Z

    .line 3956
    .end local v0    # "state":I
    .end local v1    # "actionId":I
    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManagerService#startInputOrWindowGainedFocus"

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 3958
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move v11, v0

    .line 3960
    .local v11, "callingUserId":I
    if-eqz v15, :cond_c5

    iget-object v0, v15, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_c5

    iget-object v0, v15, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3961
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, v11, :cond_c5

    .line 3962
    iget-object v0, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    iget-object v0, v15, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3967
    .local v0, "userId":I
    iget-object v1, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 3972
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not running."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_be
    .catchall {:try_start_5c .. :try_end_be} :catchall_14b

    .line 4001
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3973
    return-object v1

    .line 3967
    :cond_c2
    move/from16 v16, v0

    goto :goto_c8

    .line 3976
    .end local v0    # "userId":I
    :cond_c5
    move v0, v11

    move/from16 v16, v0

    .line 3979
    .local v16, "userId":I
    :goto_c8
    :try_start_c8
    const-class v17, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v17
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_14b

    .line 3980
    :try_start_cb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_140

    move-wide/from16 v18, v0

    .line 3982
    .local v18, "ident":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v20, v11

    .end local v11    # "callingUserId":I
    .local v20, "callingUserId":I
    move/from16 v11, p10

    move-wide/from16 v21, v12

    move/from16 v12, v16

    move-object/from16 v13, p11

    :try_start_ef
    invoke-direct/range {v1 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_139

    .line 3987
    .local v0, "result":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_f3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3988
    nop

    .line 3989
    .end local v18    # "ident":J
    monitor-exit v17
    :try_end_f8
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_149

    .line 3990
    if-nez v0, :cond_134

    .line 3992
    :try_start_fa
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3993
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowFlags=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3994
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3992
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_130
    .catchall {:try_start_fa .. :try_end_130} :catchall_147

    .line 4001
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 3996
    return-object v1

    .line 3999
    :cond_134
    nop

    .line 4001
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 3999
    return-object v0

    .line 3987
    .end local v0    # "result":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v18    # "ident":J
    :catchall_139
    move-exception v0

    move-object v1, v0

    :try_start_13b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3988
    nop

    .end local v16    # "userId":I
    .end local v20    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local p10    # "unverifiedTargetSdkVersion":I
    .end local p11    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    throw v1

    .line 3989
    .end local v18    # "ident":J
    .restart local v11    # "callingUserId":I
    .restart local v16    # "userId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .restart local p10    # "unverifiedTargetSdkVersion":I
    .restart local p11    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    :catchall_140
    move-exception v0

    move/from16 v20, v11

    move-wide/from16 v21, v12

    .end local v11    # "callingUserId":I
    .restart local v20    # "callingUserId":I
    :goto_145
    monitor-exit v17
    :try_end_146
    .catchall {:try_start_13b .. :try_end_146} :catchall_149

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local p10    # "unverifiedTargetSdkVersion":I
    .end local p11    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    :try_start_146
    throw v0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_147

    .line 4001
    .end local v16    # "userId":I
    .end local v20    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .restart local p10    # "unverifiedTargetSdkVersion":I
    .restart local p11    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    :catchall_147
    move-exception v0

    goto :goto_14e

    .line 3989
    .restart local v16    # "userId":I
    .restart local v20    # "callingUserId":I
    :catchall_149
    move-exception v0

    goto :goto_145

    .line 4001
    .end local v16    # "userId":I
    .end local v20    # "callingUserId":I
    :catchall_14b
    move-exception v0

    move-wide/from16 v21, v12

    :goto_14e
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 4002
    throw v0
.end method

.method private startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 43
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "userId"    # I
    .param p12, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 4015
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p10

    move/from16 v15, p11

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const-string v1, " attribute="

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_94

    .line 4016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternalLocked: reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4017
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " client="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4018
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inputContext="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " startInputFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4022
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " softInputMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4023
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " windowFlags=#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4024
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unverifiedTargetSdkVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " imeDispatcher="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, p12

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4016
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 4015
    :cond_94
    move-object/from16 v8, p8

    move-object/from16 v7, p12

    .line 4029
    :goto_98
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4030
    .local v6, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v6, :cond_3be

    .line 4034
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v4, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v5, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v10, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v16

    .line 4036
    .local v16, "imeClientFocus":I
    packed-switch v16, :pswitch_data_3dc

    .line 4055
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    const/4 v5, 0x0

    if-eqz v0, :cond_12b

    .line 4057
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 4058
    .local v0, "nextUserId":I
    if-ne v15, v0, :cond_110

    .line 4059
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4060
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v1

    .line 4046
    .end local v0    # "nextUserId":I
    :pswitch_c7
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_101

    .line 4047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focus gain on non-focused client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    :cond_101
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4038
    :pswitch_104
    const-string/jumbo v0, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4052
    :pswitch_10d
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4062
    .restart local v0    # "nextUserId":I
    :cond_110
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    array-length v2, v1

    :goto_117
    if-ge v5, v2, :cond_128

    aget v3, v1, v5

    .line 4063
    .local v3, "profileId":I
    if-ne v3, v15, :cond_125

    .line 4064
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4065
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v1

    .line 4062
    .end local v3    # "profileId":I
    :cond_125
    add-int/lit8 v5, v5, 0x1

    goto :goto_117

    .line 4068
    :cond_128
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v1

    .line 4071
    .end local v0    # "nextUserId":I
    :cond_12b
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v3, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldClearShowForcedFlag(I)Z

    move-result v17

    .line 4075
    .local v17, "shouldClearFlag":Z
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v0, v10, :cond_13f

    iget-boolean v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_13f

    if-eqz v17, :cond_13f

    .line 4076
    iput-boolean v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 4080
    :cond_13f
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    iget-object v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget v4, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 4081
    invoke-interface {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->shouldClearShowForcedFlag(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 4082
    const-string v0, "Clear show forced flag."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    iput-boolean v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 4088
    :cond_154
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v15}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_171

    .line 4089
    const-string v0, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    const-string v0, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xa

    invoke-virtual {v9, v0, v5, v4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4095
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4101
    :cond_171
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-eq v15, v0, :cond_18b

    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-nez v0, :cond_18b

    .line 4103
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4104
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4107
    :cond_18b
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v3, 0x1

    if-ne v0, v10, :cond_192

    move v0, v3

    goto :goto_193

    :cond_192
    move v0, v5

    :goto_193
    move/from16 v18, v0

    .line 4108
    .local v18, "sameWindowFocused":Z
    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_19b

    move v0, v3

    goto :goto_19c

    :cond_19b
    move v0, v5

    :goto_19c
    move/from16 v19, v0

    .line 4109
    .local v19, "isTextEditor":Z
    and-int/lit8 v0, v11, 0x8

    if-eqz v0, :cond_1a4

    move v0, v3

    goto :goto_1a5

    :cond_1a4
    move v0, v5

    :goto_1a5
    move/from16 v20, v0

    .line 4112
    .local v20, "startInputByWinGainedFocus":Z
    if-eqz v18, :cond_21b

    if-eqz v19, :cond_21b

    .line 4113
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_1e8

    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window already focused, ignoring focus gain of: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startInputReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4117
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4114
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ea

    .line 4113
    :cond_1e8
    move-object/from16 v5, p2

    .line 4119
    :goto_1ea
    if-eqz v13, :cond_203

    .line 4120
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move-object v15, v6

    .end local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .local v15, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 4124
    .end local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_203
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v29}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v0

    .line 4112
    :cond_21b
    move-object v15, v6

    .line 4129
    .end local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iput-object v10, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4130
    iput v12, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4131
    iput-object v15, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4132
    iput-boolean v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 4141
    and-int/lit16 v0, v12, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_23a

    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4144
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_238

    goto :goto_23a

    :cond_238
    move v0, v5

    goto :goto_23b

    :cond_23a
    :goto_23a
    move v0, v3

    :goto_23b
    move/from16 v21, v0

    .line 4151
    .local v21, "doAutoShow":Z
    const/16 v22, 0x0

    .line 4153
    .local v22, "didStart":Z
    const/16 v23, 0x0

    .line 4160
    .local v23, "res":Lcom/android/internal/inputmethod/InputBindResult;
    if-eqz v19, :cond_271

    if-eqz v13, :cond_271

    .line 4161
    invoke-direct {v9, v10, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldRestoreImeVisibility(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 4162
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p8

    move v8, v3

    move-object/from16 v3, p9

    move-object v7, v4

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v24, v15

    move-object v15, v7

    .end local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .local v24, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    move/from16 v7, p10

    move v13, v8

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    .line 4165
    .end local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v0, "res":Lcom/android/internal/inputmethod/InputBindResult;
    const/16 v1, 0x16

    invoke-virtual {v9, v10, v13, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4167
    return-object v0

    .line 4161
    .end local v0    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_26c
    move v13, v3

    move-object/from16 v24, v15

    move-object v15, v4

    .end local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    goto :goto_275

    .line 4160
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_271
    move v13, v3

    move-object/from16 v24, v15

    move-object v15, v4

    .line 4170
    .end local v15    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :goto_275
    and-int/lit8 v0, v12, 0xf

    packed-switch v0, :pswitch_data_3e6

    goto/16 :goto_394

    .line 4251
    :pswitch_27c
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_285

    const-string v0, "Window asks to always show input"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    :cond_285
    invoke-static {v14, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_2ae

    .line 4254
    if-nez v18, :cond_394

    .line 4255
    if-eqz p7, :cond_2a8

    .line 4256
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move v8, v5

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v23

    .line 4260
    const/16 v22, 0x1

    .line 4262
    :cond_2a8
    const/4 v0, 0x7

    invoke-virtual {v9, v10, v13, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_394

    .line 4266
    :cond_2ae
    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_394

    .line 4230
    :pswitch_2b5
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_394

    .line 4231
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c2

    const-string v0, "Window asks to show input going forward"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_2c2
    invoke-static {v14, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_2e8

    .line 4234
    if-eqz p7, :cond_2e2

    .line 4235
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v23

    .line 4239
    const/16 v22, 0x1

    .line 4241
    :cond_2e2
    const/4 v0, 0x6

    invoke-virtual {v9, v10, v13, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_394

    .line 4244
    :cond_2e8
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_394

    .line 4223
    :pswitch_2ef
    if-nez v18, :cond_304

    .line 4224
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2fa

    const-string v0, "Window asks to hide input"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_2fa
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v8, 0x0

    invoke-virtual {v9, v0, v8, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_394

    .line 4223
    :cond_304
    const/4 v8, 0x0

    goto/16 :goto_394

    .line 4216
    :pswitch_307
    move v8, v5

    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_394

    .line 4217
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_315

    const-string v0, "Window asks to hide input going forward"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_315
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xc

    invoke-virtual {v9, v0, v8, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_394

    .line 4214
    :pswitch_31e
    move v8, v5

    goto/16 :goto_394

    .line 4172
    :pswitch_321
    move v8, v5

    if-nez v18, :cond_359

    if-eqz v19, :cond_32c

    if-nez v21, :cond_329

    goto :goto_32c

    :cond_329
    move-object/from16 v7, v24

    goto :goto_35b

    .line 4173
    :cond_32c
    :goto_32c
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_356

    .line 4177
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_33b

    const-string v0, "Unspecified window will hide input"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_33b
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v9, v0, v2, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4187
    move-object/from16 v7, v24

    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .local v7, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iget v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_353

    .line 4188
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    move-object/from16 v24, v7

    goto :goto_394

    .line 4187
    :cond_353
    move-object/from16 v24, v7

    goto :goto_394

    .line 4173
    .end local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_356
    move-object/from16 v7, v24

    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    goto :goto_394

    .line 4172
    .end local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_359
    move-object/from16 v7, v24

    .line 4191
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :goto_35b
    if-eqz v19, :cond_392

    if-eqz v21, :cond_392

    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_392

    .line 4200
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_36c

    const-string v0, "Unspecified window will show input"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    :cond_36c
    if-eqz p7, :cond_38b

    .line 4202
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v24, v7

    .end local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    .line 4206
    .end local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v0    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    const/4 v1, 0x1

    move-object/from16 v23, v0

    move/from16 v22, v1

    .end local v22    # "didStart":Z
    .local v1, "didStart":Z
    goto :goto_38d

    .line 4201
    .end local v0    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v1    # "didStart":Z
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v22    # "didStart":Z
    .restart local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_38b
    move-object/from16 v24, v7

    .line 4208
    .end local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :goto_38d
    const/4 v0, 0x5

    invoke-virtual {v9, v10, v13, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_394

    .line 4191
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_392
    move-object/from16 v24, v7

    .line 4273
    .end local v7    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_394
    :goto_394
    if-nez v22, :cond_3bd

    .line 4274
    if-eqz p7, :cond_3bb

    .line 4275
    if-eqz v18, :cond_3a4

    .line 4282
    if-eqz v20, :cond_3a4

    .line 4283
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4287
    :cond_3a4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v23

    goto :goto_3bd

    .line 4292
    :cond_3bb
    sget-object v23, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    .line 4295
    :cond_3bd
    :goto_3bd
    return-object v23

    .line 4031
    .end local v16    # "imeClientFocus":I
    .end local v17    # "shouldClearFlag":Z
    .end local v18    # "sameWindowFocused":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "startInputByWinGainedFocus":Z
    .end local v21    # "doAutoShow":Z
    .end local v22    # "didStart":Z
    .end local v23    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v24    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_3be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_3dc
    .packed-switch -0x3
        :pswitch_10d
        :pswitch_104
        :pswitch_c7
    .end packed-switch

    :pswitch_data_3e6
    .packed-switch 0x0
        :pswitch_321
        :pswitch_31e
        :pswitch_307
        :pswitch_2ef
        :pswitch_2b5
        :pswitch_27c
    .end packed-switch
.end method

.method private startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 25
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p4, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "startInputFlags"    # I
    .param p6, "startInputReason"    # I
    .param p7, "unverifiedTargetSdkVersion"    # I
    .param p8, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 2816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v14

    .line 2817
    .local v14, "selectedMethodId":Ljava/lang/String;
    if-nez v14, :cond_13

    .line 2818
    sget-object v5, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v5

    .line 2821
    :cond_13
    iget-boolean v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v5, :cond_2a

    .line 2824
    new-instance v15, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v15

    move-object v10, v14

    invoke-direct/range {v5 .. v13}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    .line 2824
    return-object v15

    .line 2829
    :cond_2a
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v7, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v5

    const-string v6, "InputMethodManagerService"

    if-nez v5, :cond_5f

    .line 2831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " package="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    sget-object v5, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v5

    .line 2837
    :cond_5f
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->mayChangeInputMethodLocked(Landroid/view/inputmethod/EditorInfo;)Z

    .line 2841
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v5, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v5

    iput v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 2844
    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v5, v7, :cond_82

    .line 2845
    iput-boolean v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    .line 2846
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/16 v7, 0x1a

    invoke-virtual {v0, v5, v9, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2848
    sget-object v5, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v5

    .line 2850
    :cond_82
    iput-boolean v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    .line 2852
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eq v5, v1, :cond_8b

    .line 2853
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareClientSwitchLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2857
    :cond_8b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->advanceSequenceNumberLocked()V

    .line 2858
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2859
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2860
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 2861
    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 2862
    iget v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 2863
    invoke-direct {v0, v12, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->getVirtualDisplayToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2865
    iput-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2868
    move/from16 v12, p7

    invoke-direct {v0, v14, v3, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldPreventImeStartupLocked(Ljava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_c4

    .line 2870
    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_b9

    .line 2871
    const-string v7, "Avoiding IME startup and unbinding current input method."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 2874
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2875
    sget-object v6, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v6

    .line 2881
    :cond_c4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSelectedMethodBoundLocked()Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 2882
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v6, :cond_e8

    .line 2890
    iput-boolean v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 2891
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2894
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_d9

    move v6, v8

    goto :goto_da

    :cond_d9
    move v6, v9

    :goto_da
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    .line 2896
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_e2

    goto :goto_e3

    :cond_e2
    move v8, v9

    :goto_e3
    invoke-virtual {v0, v4, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v6

    return-object v6

    .line 2900
    :cond_e8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v6

    .line 2901
    .local v6, "bindResult":Lcom/android/internal/inputmethod/InputBindResult;
    if-eqz v6, :cond_ef

    .line 2902
    return-object v6

    .line 2906
    .end local v6    # "bindResult":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_ef
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2908
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v6

    return-object v6
.end method

.method private switchToInputMethodLocked(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5754
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2b

    .line 5755
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5756
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 5757
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_2a

    .line 5760
    :cond_26
    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5761
    return v1

    .line 5758
    :cond_2a
    :goto_2a
    return v3

    .line 5763
    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 5764
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5765
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5767
    .local v4, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 5768
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 5769
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_60

    .line 5772
    :cond_59
    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5773
    invoke-virtual {v4, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5774
    return v1

    .line 5770
    :cond_60
    :goto_60
    return v3
.end method

.method private switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .line 4506
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4507
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 4508
    monitor-exit v0

    return v2

    .line 4510
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 4511
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4510
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4512
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_24

    .line 4513
    monitor-exit v0

    return v2

    .line 4515
    :cond_24
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4517
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4518
    .end local v1    # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4434
    move-object/from16 v1, p0

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4435
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_e

    .line 4436
    monitor-exit v2

    return v3

    .line 4438
    :cond_e
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 4440
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_21

    .line 4441
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_22

    .line 4443
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_21
    const/4 v4, 0x0

    .line 4445
    .restart local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_22
    const/4 v5, 0x0

    .line 4446
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 4447
    .local v6, "subtypeId":I
    if-eqz v0, :cond_55

    if-eqz v4, :cond_55

    .line 4448
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 4449
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4450
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_42

    const/4 v9, -0x1

    goto :goto_46

    .line 4451
    :cond_42
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_46
    nop

    .line 4454
    .local v9, "currentSubtypeHash":I
    if-eqz v7, :cond_4b

    if-eq v8, v9, :cond_55

    .line 4455
    :cond_4b
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 4456
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 4460
    .end local v7    # "imiIdIsSame":Z
    .end local v8    # "lastSubtypeHash":I
    .end local v9    # "currentSubtypeHash":I
    :cond_55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c7

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4461
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 4465
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 4466
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_c7

    .line 4467
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 4468
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_81

    .line 4469
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_85

    .line 4470
    :cond_81
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    :goto_85
    nop

    .line 4471
    .local v10, "locale":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_87
    if-ge v11, v9, :cond_c7

    .line 4472
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 4473
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_c4

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_c4

    .line 4474
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4476
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 4475
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 4478
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_c4

    .line 4479
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 4480
    nop

    .line 4481
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 4480
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v6, v14

    .line 4482
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c4

    .line 4483
    goto :goto_c7

    .line 4471
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c4
    add-int/lit8 v11, v11, 0x1

    goto :goto_87

    .line 4491
    .end local v7    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "locale":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_c7
    :goto_c7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11a

    .line 4492
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_113

    .line 4493
    const-string v3, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switch to: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", from: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4493
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_5 .. :try_end_113} :catchall_11e

    .line 4496
    :cond_113
    move-object/from16 v7, p1

    :try_start_115
    invoke-direct {v1, v7, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4497
    monitor-exit v2

    return v8

    .line 4499
    :cond_11a
    move-object/from16 v7, p1

    monitor-exit v2

    return v3

    .line 4501
    .end local v0    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "targetLastImiId":Ljava/lang/String;
    .end local v6    # "subtypeId":I
    :catchall_11e
    move-exception v0

    move-object/from16 v7, p1

    :goto_121
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_123

    throw v0

    :catchall_123
    move-exception v0

    goto :goto_121
.end method

.method private switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .registers 9
    .param p1, "newUserId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1917
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching user stage 1/3. newUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " currentUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1918
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1927
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1928
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_44

    :cond_42
    const/4 v0, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    move v0, v2

    .line 1929
    .local v0, "useCopyOnWriteSettings":Z
    :goto_45
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1930
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1932
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v3, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1933
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1935
    .local v3, "defaultImiId":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_7c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching user stage 2/3. newUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defaultImiId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_7c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1944
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1946
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->onSwitchUserLocked(I)V

    .line 1950
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 1951
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1952
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 1955
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1957
    :cond_ab
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1959
    if-eqz v4, :cond_bf

    .line 1960
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1961
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1962
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 1960
    invoke-static {v2, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1965
    :cond_bf
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching user stage 3/3. newUserId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " selectedIme="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1966
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1965
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_e9
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1970
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_109

    if-eqz p2, :cond_109

    .line 1971
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1972
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v1, :cond_100

    .line 1974
    return-void

    .line 1977
    :cond_100
    :try_start_100
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-interface {v2, v5}, Lcom/android/internal/view/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_107} :catch_108

    .line 1979
    goto :goto_109

    .line 1978
    :catch_108
    move-exception v2

    .line 1981
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_109
    :goto_109
    return-void
.end method

.method private tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 14
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2972
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2973
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2976
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2977
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2978
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2980
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    .line 2978
    return-object v0

    .line 2982
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastBindTimeLocked()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2983
    .local v0, "bindingDuration":J
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-gez v2, :cond_4b

    .line 2991
    new-instance v2, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2993
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    .line 2991
    return-object v2

    .line 2996
    :cond_4b
    const/16 v2, 0x7d00

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2996
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3001
    .end local v0    # "bindingDuration":J
    :cond_68
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateDefaultVoiceImeIfNeededLocked()V
    .registers 7

    .line 5547
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5548
    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5549
    .local v0, "systemSpeechRecognizer":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getDefaultVoiceInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 5550
    .local v1, "currentDefaultVoiceImeId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->chooseSystemVoiceIme(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 5552
    .local v2, "newSystemVoiceIme":Landroid/view/inputmethod/InputMethodInfo;
    const-string v3, "InputMethodManagerService"

    if-nez v2, :cond_30

    .line 5553
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_22

    .line 5554
    const-string v4, "Found no valid default Voice IME. If the user is still locked, this may be expected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5559
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 5560
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    .line 5564
    :cond_2f
    return-void

    .line 5566
    :cond_30
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 5567
    return-void

    .line 5569
    :cond_3b
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_55

    .line 5570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling the default Voice IME:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    :cond_55
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5573
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    .line 5574
    return-void
.end method

.method private updateImeWindowStatus(Z)V
    .registers 5
    .param p1, "disableImeIcon"    # Z

    .line 3436
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3437
    if-eqz p1, :cond_c

    .line 3438
    const/4 v1, 0x0

    :try_start_6
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    goto :goto_f

    .line 3440
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 3442
    :goto_f
    monitor-exit v0

    .line 3443
    return-void

    .line 3442
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .line 3259
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3260
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3261
    monitor-exit v0

    return-void

    .line 3263
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_76

    .line 3265
    .local v1, "ident":J
    if-nez p3, :cond_23

    .line 3266
    :try_start_11
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_1d

    const-string v3, "InputMethodManagerService"

    const-string/jumbo v4, "hide the small icon for the input method"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V

    goto :goto_70

    .line 3288
    :catchall_21
    move-exception v3

    goto :goto_6b

    .line 3268
    :cond_23
    if-eqz p2, :cond_70

    .line 3269
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_31

    const-string v3, "InputMethodManagerService"

    const-string/jumbo v4, "show a small icon for the input method"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_21

    .line 3270
    :cond_31
    const/4 v3, 0x0

    .line 3273
    .local v3, "contentDescription":Ljava/lang/CharSequence;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3274
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3276
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    .line 3275
    invoke-interface {v5, p2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3274
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4a} :catch_4c
    .catchall {:try_start_32 .. :try_end_4a} :catchall_21

    move-object v3, v5

    .line 3279
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_4d

    .line 3277
    :catch_4c
    move-exception v4

    .line 3280
    :goto_4d
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_70

    .line 3281
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v8, 0x0

    .line 3282
    if-eqz v3, :cond_5b

    .line 3283
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5c

    :cond_5b
    const/4 v6, 0x0

    :goto_5c
    move-object v9, v6

    .line 3281
    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3284
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_21

    goto :goto_70

    .line 3288
    .end local v3    # "contentDescription":Ljava/lang/CharSequence;
    :goto_6b
    :try_start_6b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3289
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "iconId":I
    throw v3

    .line 3288
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "iconId":I
    :cond_70
    :goto_70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3289
    nop

    .line 3290
    .end local v1    # "ident":J
    monitor-exit v0

    .line 3291
    return-void

    .line 3290
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_76

    throw v1
.end method

.method private updateSystemUiLocked(II)V
    .registers 15
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 3453
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3454
    return-void

    .line 3456
    :cond_7
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_47

    .line 3457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME window vis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inv: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v2, p1, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " displayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3467
    .local v2, "ident":J
    :try_start_4b
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    const/16 v4, 0x8

    if-nez v0, :cond_59

    .line 3468
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5b

    .line 3469
    and-int/lit8 p1, p1, -0x3

    .line 3470
    or-int/2addr p1, v4

    goto :goto_5b

    .line 3473
    :cond_59
    and-int/lit8 p1, p1, -0x9

    .line 3476
    :cond_5b
    :goto_5b
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v0

    .line 3477
    .local v0, "needsToShowImeSwitcher":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v5, :cond_6f

    .line 3478
    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    move v8, p1

    move v9, p2

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 3481
    :cond_6f
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 3482
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_e4

    if-eqz v0, :cond_e4

    .line 3484
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v9, 0x1040896

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3486
    .local v8, "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v9, v5, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3488
    .local v9, "summary":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 3489
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 3490
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_a1
    .catchall {:try_start_4b .. :try_end_a1} :catchall_103

    .line 3493
    :try_start_a1
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_e1

    sget-boolean v10, Landroid/os/Build;->IS_MIUI:Z

    if-nez v10, :cond_b1

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 3496
    invoke-interface {v10, v6}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v6

    if-nez v6, :cond_e1

    .line 3498
    :cond_b1
    sget-boolean v6, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v6, :cond_cb

    .line 3499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--- show notification: label =  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :cond_cb
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3505
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v6

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v6, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->buildImeNotification(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v6

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3501
    invoke-virtual {v1, v7, v4, v6, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3508
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e1} :catch_e2
    .catchall {:try_start_a1 .. :try_end_e1} :catchall_103

    .line 3513
    :cond_e1
    goto :goto_e3

    .line 3512
    :catch_e2
    move-exception v1

    .line 3514
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v9    # "summary":Ljava/lang/CharSequence;
    :goto_e3
    goto :goto_fe

    .line 3515
    :cond_e4
    :try_start_e4
    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v8, :cond_fe

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_fe

    .line 3516
    sget-boolean v8, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v8, :cond_f5

    .line 3517
    const-string v8, "--- hide notification"

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :cond_f5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v4, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3521
    iput-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_fe
    .catchall {:try_start_e4 .. :try_end_fe} :catchall_103

    .line 3525
    .end local v0    # "needsToShowImeSwitcher":Z
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_fe
    :goto_fe
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3526
    nop

    .line 3527
    return-void

    .line 3525
    :catchall_103
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3526
    throw v0
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6812
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 6813
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 6812
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6814
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6816
    const/4 v0, 0x0

    return v0

    .line 6818
    :cond_31
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 20
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "selfReportedDisplayId"    # I

    .line 2480
    move-object/from16 v1, p0

    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2481
    .local v10, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2482
    .local v11, "callerPid":I
    const-class v12, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v12

    .line 2484
    :try_start_f
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v13, v0

    .line 2485
    .local v13, "numClients":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v13, :cond_65

    .line 2486
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2487
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v3, v10, :cond_62

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v3, v11, :cond_62

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v3, v9, :cond_2e

    goto :goto_62

    .line 2489
    :cond_2e
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callerUid":I
    .end local v11    # "callerPid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3    # "selfReportedDisplayId":I
    throw v3

    .line 2485
    .end local v2    # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v10    # "callerUid":I
    .restart local v11    # "callerPid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3    # "selfReportedDisplayId":I
    :cond_62
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2493
    .end local v0    # "i":I
    :cond_65
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_9a

    move-object/from16 v14, p1

    :try_start_69
    invoke-direct {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_9f

    move-object v15, v0

    .line 2495
    .local v15, "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_start_6d
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_75} :catch_93
    .catchall {:try_start_6d .. :try_end_75} :catchall_9f

    .line 2498
    nop

    .line 2509
    :try_start_76
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v10

    move v6, v11

    move-object v1, v7

    move/from16 v7, p3

    move-object v9, v8

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    nop

    .end local v13    # "numClients":I
    .end local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    monitor-exit v12

    .line 2512
    return-void

    .line 2496
    .restart local v13    # "numClients":I
    .restart local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :catch_93
    move-exception v0

    .line 2497
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v10    # "callerUid":I
    .end local v11    # "callerPid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3    # "selfReportedDisplayId":I
    throw v1

    .line 2511
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "numClients":I
    .end local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    .restart local v10    # "callerUid":I
    .restart local v11    # "callerPid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3    # "selfReportedDisplayId":I
    :catchall_9a
    move-exception v0

    move-object/from16 v14, p1

    :goto_9d
    monitor-exit v12
    :try_end_9e
    .catchall {:try_start_76 .. :try_end_9e} :catchall_9f

    throw v0

    :catchall_9f
    move-exception v0

    goto :goto_9d
.end method

.method attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 20
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z
    .param p3, "id"    # I

    .line 2752
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    if-nez v1, :cond_10

    .line 2753
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 2754
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2760
    :cond_10
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 2761
    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2764
    .local v1, "accessibilitySession":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    const/16 v3, 0xb

    move/from16 v4, p1

    if-eq v4, v3, :cond_3b

    .line 2765
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 2766
    .local v3, "startInputToken":Landroid/os/Binder;
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;)V

    .line 2767
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    xor-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2771
    .end local v3    # "startInputToken":Landroid/os/Binder;
    :cond_3b
    const/4 v3, 0x0

    if-eqz v1, :cond_66

    .line 2772
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2773
    .local v5, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    if-nez v5, :cond_45

    goto :goto_47

    :cond_45
    iget-object v3, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    :goto_47
    move-object v8, v3

    .line 2774
    .local v8, "imeSession":Lcom/android/internal/view/IInputMethodSession;
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 2775
    invoke-direct {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2776
    .local v3, "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    new-instance v15, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v7, 0x10

    const/4 v10, 0x0

    .line 2779
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    const/4 v14, 0x0

    move-object v6, v15

    move-object v9, v3

    invoke-direct/range {v6 .. v14}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    .line 2776
    return-object v15

    .line 2782
    .end local v3    # "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    .end local v5    # "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    .end local v8    # "imeSession":Lcom/android/internal/view/IInputMethodSession;
    :cond_66
    return-object v3
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 23
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z

    .line 2668
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 2669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 2670
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2673
    :cond_14
    xor-int/lit8 v9, p2, 0x1

    .line 2674
    .local v9, "restarting":Z
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 2675
    .local v1, "startInputToken":Landroid/os/Binder;
    new-instance v16, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 2676
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2677
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 2678
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v11, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v14, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 2680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v15

    move-object/from16 v3, v16

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 2681
    .local v3, "info":Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v4, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 2689
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v4, v5, :cond_7f

    .line 2690
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    const/4 v12, 0x0

    .line 2691
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodUidLocked()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v14, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    const/4 v15, 0x1

    .line 2690
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2696
    :cond_7f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result v4

    .line 2697
    .local v4, "navButtonFlags":I
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2698
    .local v5, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2701
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->updateSessionId(I)V

    .line 2702
    iget-object v10, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object v11, v1

    move v14, v9

    move v15, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 2704
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v8, 0x0

    if-eqz v6, :cond_bb

    .line 2705
    sget-boolean v6, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v6, :cond_b2

    const-string v6, "InputMethodManagerService"

    const-string v10, "Attach new input asks to show input"

    invoke-static {v6, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_b2
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlagsLocked()I

    move-result v10

    invoke-virtual {v0, v6, v10, v8, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2710
    :cond_bb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v6

    .line 2711
    .local v6, "curId":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2712
    .local v10, "curInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v10, :cond_d2

    .line 2713
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v11

    if-eqz v11, :cond_d2

    move/from16 v19, v2

    goto :goto_d4

    :cond_d2
    move/from16 v19, v7

    .line 2714
    .local v19, "suppressesSpellChecker":Z
    :goto_d4
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 2715
    invoke-direct {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2716
    .local v2, "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    new-instance v7, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2718
    iget-object v11, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_eb

    iget-object v8, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v8}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v8

    :cond_eb
    move-object v15, v8

    .line 2719
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v17

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v14, v2

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    .line 2716
    return-object v7
.end method

.method buildInputMethodListLocked(Z)V
    .registers 12
    .param p1, "resetDefaultEnabledIme"    # Z

    .line 5427
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_2c

    .line 5428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- re-buildInputMethodList reset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \n ------ caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    .line 5429
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5428
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_36

    .line 5432
    const-string v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    return-void

    .line 5435
    :cond_36
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 5436
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 5438
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    .line 5448
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5449
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5451
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 5449
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 5452
    .local v0, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 5453
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    if-ge v4, v3, :cond_8f

    .line 5454
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5455
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 5456
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 5453
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 5461
    .end local v0    # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_8f
    const/4 v0, 0x0

    .line 5463
    .local v0, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_d9

    .line 5464
    const/4 v3, 0x0

    .line 5465
    .local v3, "enabledImeFound":Z
    const/4 v4, 0x0

    .line 5466
    .local v4, "enabledNonAuxImeFound":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 5467
    .local v5, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 5468
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9f
    if-ge v7, v6, :cond_bb

    .line 5469
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5470
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 5471
    const/4 v3, 0x1

    .line 5472
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v9

    if-nez v9, :cond_b8

    .line 5473
    const/4 v4, 0x1

    .line 5474
    goto :goto_bb

    .line 5468
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 5478
    .end local v7    # "i":I
    :cond_bb
    :goto_bb
    if-nez v3, :cond_cd

    .line 5479
    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_c6

    .line 5480
    const-string v7, "All the enabled IMEs are gone. Reset default enabled IMEs."

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    :cond_c6
    const/4 p1, 0x1

    .line 5483
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_d9

    .line 5484
    :cond_cd
    if-nez v4, :cond_d9

    .line 5485
    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_d8

    .line 5486
    const-string v7, "All the enabled non-Aux IMEs are gone. Do partial reset."

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5488
    :cond_d8
    const/4 v0, 0x1

    .line 5492
    .end local v3    # "enabledImeFound":Z
    .end local v4    # "enabledNonAuxImeFound":Z
    .end local v5    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    :cond_d9
    :goto_d9
    if-nez p1, :cond_dd

    if-eqz v0, :cond_116

    .line 5493
    :cond_dd
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 5494
    invoke-static {v3, v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 5496
    .local v3, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5497
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ea
    if-ge v5, v4, :cond_116

    .line 5498
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5499
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_10c

    .line 5500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- enable ime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    :cond_10c
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5497
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_ea

    .line 5506
    .end local v3    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_116
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 5507
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13c

    .line 5508
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_139

    .line 5509
    const-string v4, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 5511
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_13c

    .line 5515
    :cond_139
    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5519
    :cond_13c
    :goto_13c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateDefaultVoiceImeIfNeededLocked()V

    .line 5525
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 5527
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 5530
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5531
    .local v1, "inputMethodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1392

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5532
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 5531
    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5532
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5533
    return-void
.end method

.method clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 4
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 3187
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 3186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3189
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3190
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 3191
    return-void
.end method

.method clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V
    .registers 5
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "id"    # I

    .line 3195
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 3196
    .local v0, "session":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v0, :cond_12

    .line 3197
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 3198
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3200
    :cond_12
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 3
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3179
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 3180
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3181
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 3182
    return-void
.end method

.method clearClientSessionsLocked()V
    .registers 4

    .line 3237
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 3238
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3239
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_28

    .line 3240
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3241
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3239
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3244
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 3245
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 3246
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 3245
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 3248
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3249
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3250
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 3252
    .end local v0    # "numClients":I
    :cond_50
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V

    .line 3253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 3254
    return-void
.end method

.method clearInputShowRequestLocked()V
    .registers 2

    .line 2638
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2640
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6096
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6098
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6099
    return-void
.end method

.method public getAwareLockedInputMethodList(II)Ljava/util/List;
    .registers 4
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

    .line 2179
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCurTokenDisplayIdLocked()I
    .registers 2

    .line 746
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 5691
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5693
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 5694
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 5696
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5697
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 10

    .line 5702
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    .line 5703
    .local v0, "selectedMethodId":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5704
    return-object v1

    .line 5706
    :cond_8
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v2

    .line 5707
    .local v2, "subtypeIsSelected":Z
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5708
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_7c

    .line 5711
    :cond_1f
    if-eqz v2, :cond_2f

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v4, :cond_2f

    .line 5712
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v4

    if-nez v4, :cond_79

    .line 5713
    :cond_2f
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 5714
    .local v4, "subtypeId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_6d

    .line 5718
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5719
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 5722
    .local v5, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_51

    .line 5723
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_6c

    .line 5724
    :cond_51
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_6c

    .line 5725
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v8, "keyboard"

    invoke-static {v6, v5, v8, v1, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5728
    if-nez v6, :cond_6c

    .line 5729
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v6, v5, v1, v1, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5734
    .end local v5    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6c
    :goto_6c
    goto :goto_79

    .line 5735
    :cond_6d
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5738
    .end local v4    # "subtypeId":I
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 5709
    :cond_7c
    :goto_7c
    return-object v1
.end method

.method getDisplayIdToShowImeLocked()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    return v0
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2184
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 2185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2189
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2190
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2189
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2191
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    .line 2192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2194
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3b

    .line 2196
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_2a
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 2198
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2196
    return-object v4

    .line 2198
    :catchall_35
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 2200
    .end local v1    # "resolvedUserIds":[I
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "userId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2410
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2411
    .local v0, "callingUserId":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 2412
    :try_start_7
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2413
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 2412
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 2414
    .local v2, "resolvedUserIds":[I
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    .line 2415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2417
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_32

    .line 2419
    .local v3, "ident":J
    const/4 v5, 0x0

    :try_start_21
    aget v5, v2, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2c

    .line 2422
    :try_start_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2419
    return-object v5

    .line 2422
    :catchall_2c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2423
    nop

    .end local v0    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "allowsImplicitlySelectedSubtypes":Z
    throw v5

    .line 2424
    .end local v2    # "resolvedUserIds":[I
    .end local v3    # "ident":J
    .restart local v0    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "allowsImplicitlySelectedSubtypes":Z
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I
    .registers 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4629
    .local v0, "callingUid":I
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 8

    .line 4539
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4540
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 4541
    monitor-exit v0

    return-object v2

    .line 4543
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 4545
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 4546
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_58

    .line 4547
    :cond_29
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4548
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_37

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5a

    return-object v2

    .line 4550
    :cond_37
    :try_start_37
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4551
    .local v4, "lastSubtypeHash":I
    nop

    .line 4552
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 4553
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_53

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_4d

    goto :goto_53

    .line 4556
    :cond_4d
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_51} :catch_55
    .catchall {:try_start_37 .. :try_end_51} :catchall_5a

    :try_start_51
    monitor-exit v0

    return-object v2

    .line 4554
    :cond_53
    :goto_53
    monitor-exit v0

    return-object v2

    .line 4557
    .end local v4    # "lastSubtypeHash":I
    .end local v5    # "lastSubtypeId":I
    :catch_55
    move-exception v4

    .line 4558
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v2

    .line 4546
    .end local v3    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_58
    :goto_58
    monitor-exit v0

    return-object v2

    .line 4560
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method getSelectedMethodIdLocked()Ljava/lang/String;
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 5084
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_312

    .line 5321
    return v1

    .line 5266
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_16

    .line 5267
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 5269
    :cond_16
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1f

    .line 5270
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    .line 5272
    :cond_1f
    return v2

    .line 5257
    :sswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5258
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 5259
    .local v1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5261
    return v2

    .line 5252
    .end local v0    # "userId":I
    .end local v1    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_31
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5253
    .restart local v0    # "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    .line 5254
    return v2

    .line 5246
    .end local v0    # "userId":I
    :sswitch_37
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_3e

    move v1, v2

    :cond_3e
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->handleHardKeyboardStatusChange(Z)V

    .line 5247
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5248
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 5249
    monitor-exit v0

    .line 5250
    return v2

    .line 5249
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v1

    .line 5232
    :sswitch_4c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_51

    move v1, v2

    :cond_51
    move v0, v1

    .line 5233
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5235
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_56
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 5240
    goto :goto_8d

    .line 5236
    :catch_5c
    move-exception v3

    .line 5237
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") notification to pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_8d
    return v2

    .line 5229
    .end local v0    # "fullscreen":Z
    .end local v1    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_8e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_93

    move v1, v2

    :cond_93
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 5230
    return v2

    .line 5215
    :sswitch_97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5216
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5218
    .local v3, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_9f
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v5, :cond_a7

    move v5, v2

    goto :goto_a8

    :cond_a7
    move v5, v1

    :goto_a8
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v6, :cond_ae

    move v6, v2

    goto :goto_af

    :cond_ae
    move v6, v1

    :goto_af
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v7, :cond_b4

    move v1, v2

    :cond_b4
    invoke-interface {v4, v5, v6, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZZ)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b7} :catch_b8

    .line 5224
    goto :goto_df

    .line 5221
    :catch_b8
    move-exception v1

    .line 5222
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_df
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5226
    return v2

    .line 5196
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_e3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5197
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 5198
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 5199
    .local v3, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5201
    .local v4, "id":I
    :try_start_f7
    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_fa} :catch_10c
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_10a

    .line 5207
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v5, :cond_133

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 5208
    :goto_104
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v5}, Landroid/view/InputChannel;->dispose()V

    goto :goto_133

    .line 5207
    :catchall_10a
    move-exception v2

    goto :goto_137

    .line 5202
    :catch_10c
    move-exception v5

    .line 5203
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_10d
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client died receiving input method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_10d .. :try_end_127} :catchall_10a

    .line 5207
    nop

    .end local v5    # "e":Landroid/os/RemoteException;
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v5, :cond_133

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 5208
    goto :goto_104

    .line 5211
    :cond_133
    :goto_133
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5212
    return v2

    .line 5207
    :goto_137
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v5, :cond_146

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 5208
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v5}, Landroid/view/InputChannel;->dispose()V

    .line 5210
    :cond_146
    throw v2

    .line 5178
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v4    # "id":I
    :sswitch_147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5179
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 5180
    .restart local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 5182
    .restart local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_153
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_156} :catch_168
    .catchall {:try_start_153 .. :try_end_156} :catchall_166

    .line 5188
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_18f

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 5189
    :goto_160
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_18f

    .line 5188
    :catchall_166
    move-exception v2

    goto :goto_193

    .line 5183
    :catch_168
    move-exception v4

    .line 5184
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_169
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client died receiving input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_169 .. :try_end_183} :catchall_166

    .line 5188
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_18f

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 5189
    goto :goto_160

    .line 5192
    :cond_18f
    :goto_18f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5193
    return v2

    .line 5188
    :goto_193
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_1a2

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 5189
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    .line 5191
    :cond_1a2
    throw v2

    .line 5163
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_1a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5164
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 5165
    .restart local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5167
    .local v3, "id":I
    :try_start_1b3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4, v3}, Lcom/android/internal/view/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_1b8
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1b8} :catch_1b9

    .line 5173
    goto :goto_1c5

    .line 5168
    :catch_1b9
    move-exception v4

    .line 5170
    .restart local v4    # "e":Landroid/os/RemoteException;
    instance-of v5, v4, Landroid/os/DeadObjectException;

    if-nez v5, :cond_1c5

    .line 5171
    const-string v5, "InputMethodManagerService"

    const-string v6, "RemoteException when unbinding accessibility services"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1c5
    :goto_1c5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5175
    return v2

    .line 5152
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "id":I
    :sswitch_1c9
    :try_start_1c9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_1d4
    .catch Landroid/os/RemoteException; {:try_start_1c9 .. :try_end_1d4} :catch_1d5

    .line 5159
    goto :goto_1e1

    .line 5153
    :catch_1d5
    move-exception v0

    .line 5155
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-nez v1, :cond_1e1

    .line 5156
    const-string v1, "InputMethodManagerService"

    const-string v3, "RemoteException when unbinding input method service oraccessibility services"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e1
    :goto_1e1
    return v2

    .line 5313
    :sswitch_1e2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5314
    :try_start_1e5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 5315
    .local v1, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_1fa

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 5316
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->finishStylusHandwriting()V

    .line 5318
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_1fa
    monitor-exit v0

    .line 5319
    return v2

    .line 5318
    :catchall_1fc
    move-exception v1

    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_1e5 .. :try_end_1fe} :catchall_1fc

    throw v1

    .line 5287
    :sswitch_1ff
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5288
    :try_start_202
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 5289
    .restart local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_25b

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-nez v3, :cond_20d

    goto :goto_25b

    .line 5292
    :cond_20d
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5296
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 5293
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v3

    .line 5298
    .local v3, "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    if-nez v3, :cond_23d

    .line 5299
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start handwriting session for requestId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5301
    monitor-exit v0

    return v2

    .line 5304
    :cond_23d
    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRequestId()I

    move-result v4

    .line 5305
    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getHandwritingChannel()Landroid/view/InputChannel;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRecordedEvents()Ljava/util/List;

    move-result-object v6

    .line 5304
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_259

    .line 5307
    const-string v4, "InputMethodManagerService"

    const-string v5, "Resetting handwriting mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5310
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v3    # "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    :cond_259
    monitor-exit v0

    .line 5311
    return v2

    .line 5290
    .restart local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_25b
    :goto_25b
    monitor-exit v0

    return v2

    .line 5310
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_25d
    move-exception v1

    monitor-exit v0
    :try_end_25f
    .catchall {:try_start_202 .. :try_end_25f} :catchall_25d

    throw v1

    .line 5276
    :sswitch_260
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5277
    :try_start_263
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v1

    if-eqz v1, :cond_279

    .line 5278
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_279

    .line 5279
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_27e

    .line 5281
    :cond_279
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 5283
    :goto_27e
    monitor-exit v0

    .line 5284
    return v2

    .line 5283
    :catchall_280
    move-exception v1

    monitor-exit v0
    :try_end_282
    .catchall {:try_start_263 .. :try_end_282} :catchall_280

    throw v1

    .line 5143
    :sswitch_283
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_288

    move v1, v2

    :cond_288
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeWindowStatus(Z)V

    .line 5144
    return v2

    .line 5130
    :sswitch_28c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 5131
    .local v0, "windowToken":Landroid/os/IBinder;
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5133
    :try_start_293
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v3, :cond_2a6

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v3, :cond_2a6

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v3, :cond_2a6

    .line 5135
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_2a6
    .catch Landroid/os/RemoteException; {:try_start_293 .. :try_end_2a6} :catch_2a9
    .catchall {:try_start_293 .. :try_end_2a6} :catchall_2a7

    .line 5138
    :cond_2a6
    goto :goto_2aa

    .line 5139
    :catchall_2a7
    move-exception v2

    goto :goto_2ac

    .line 5137
    :catch_2a9
    move-exception v3

    .line 5139
    :goto_2aa
    :try_start_2aa
    monitor-exit v1

    .line 5140
    return v2

    .line 5139
    :goto_2ac
    monitor-exit v1
    :try_end_2ad
    .catchall {:try_start_2aa .. :try_end_2ad} :catchall_2a7

    throw v2

    .line 5118
    .end local v0    # "windowToken":Landroid/os/IBinder;
    :sswitch_2ae
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5120
    :try_start_2b1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_2c4

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_2c4

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez v1, :cond_2c4

    .line 5122
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_2c4
    .catch Landroid/os/RemoteException; {:try_start_2b1 .. :try_end_2c4} :catch_2c7
    .catchall {:try_start_2b1 .. :try_end_2c4} :catchall_2c5

    .line 5125
    :cond_2c4
    goto :goto_2c8

    .line 5126
    :catchall_2c5
    move-exception v1

    goto :goto_2ca

    .line 5124
    :catch_2c7
    move-exception v1

    .line 5126
    :goto_2c8
    :try_start_2c8
    monitor-exit v0

    .line 5127
    return v2

    .line 5126
    :goto_2ca
    monitor-exit v0
    :try_end_2cb
    .catchall {:try_start_2c8 .. :try_end_2cb} :catchall_2c5

    throw v1

    .line 5111
    :sswitch_2cc
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5112
    :try_start_2cf
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5113
    .local v3, "reason":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 5115
    nop

    .end local v3    # "reason":I
    monitor-exit v0

    .line 5116
    return v2

    .line 5115
    :catchall_2e0
    move-exception v1

    monitor-exit v0
    :try_end_2e2
    .catchall {:try_start_2cf .. :try_end_2e2} :catchall_2e0

    throw v1

    .line 5087
    :sswitch_2e3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 5088
    .local v0, "displayId":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_360

    .line 5102
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown subtype picker mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    return v1

    .line 5099
    :pswitch_305
    const/4 v1, 0x0

    .line 5100
    .local v1, "showAuxSubtypes":Z
    goto :goto_30c

    .line 5096
    .end local v1    # "showAuxSubtypes":Z
    :pswitch_307
    const/4 v1, 0x1

    .line 5097
    .restart local v1    # "showAuxSubtypes":Z
    goto :goto_30c

    .line 5093
    .end local v1    # "showAuxSubtypes":Z
    :pswitch_309
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 5094
    .restart local v1    # "showAuxSubtypes":Z
    nop

    .line 5105
    :goto_30c
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenu(ZI)V

    .line 5106
    return v2

    :sswitch_data_312
    .sparse-switch
        0x1 -> :sswitch_2e3
        0x40b -> :sswitch_2cc
        0x424 -> :sswitch_2ae
        0x425 -> :sswitch_28c
        0x42e -> :sswitch_283
        0x442 -> :sswitch_260
        0x44c -> :sswitch_1ff
        0x456 -> :sswitch_1e2
        0xbb8 -> :sswitch_1c9
        0xbb9 -> :sswitch_1a3
        0xbc2 -> :sswitch_147
        0xbc3 -> :sswitch_e3
        0xbcc -> :sswitch_97
        0xbd6 -> :sswitch_8e
        0xbe5 -> :sswitch_4c
        0xfa0 -> :sswitch_37
        0x1388 -> :sswitch_31
        0x1392 -> :sswitch_20
        0x1b58 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_309
        :pswitch_307
        :pswitch_305
    .end packed-switch
.end method

.method hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 12
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 3838
    and-int/lit8 v0, p2, 0x1

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_19

    .line 3840
    :cond_f
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    :cond_18
    return v2

    .line 3843
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_2b

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2b

    .line 3844
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    :cond_2a
    return v2

    .line 3856
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    .line 3857
    .local v0, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    const/4 v3, 0x1

    if-eqz v0, :cond_3c

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-nez v4, :cond_3b

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3c

    :cond_3b
    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 3860
    .local v3, "shouldHideSoftInput":Z
    :goto_3d
    if-eqz v3, :cond_ac

    .line 3861
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 3862
    .local v4, "hideInputToken":Landroid/os/Binder;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    sget-boolean v5, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v5, :cond_85

    .line 3868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hideSoftInput(0, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3870
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3868
    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    :cond_85
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->synergyOperate()Z

    move-result v1

    if-eqz v1, :cond_95

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9e

    .line 3876
    :cond_95
    invoke-virtual {v0, v4, v2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 3877
    invoke-direct {p0, v2, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V

    .line 3880
    :cond_9e
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, v2, v2}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->notifyAcceptInput(II)Z

    .line 3882
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerInternal;->setInputMethodStatus(Z)V

    .line 3883
    const/4 v1, 0x1

    .line 3884
    .end local v4    # "hideInputToken":Landroid/os/Binder;
    .local v1, "res":Z
    goto :goto_ad

    .line 3885
    .end local v1    # "res":Z
    :cond_ac
    const/4 v1, 0x0

    .line 3889
    .restart local v1    # "res":Z
    :goto_ad
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3890
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3891
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3892
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 3893
    return v1
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 22
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I

    .line 3798
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3799
    .local v4, "uid":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v5, "InputMethodManagerService#hideSoftInput"

    invoke-virtual {v0, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 3801
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    .line 3802
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_1f

    .line 3803
    monitor-exit v5

    return v6

    .line 3805
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_d1

    .line 3807
    .local v7, "ident":J
    const-wide/16 v9, 0x20

    :try_start_25
    const-string v0, "IMMS.hideSoftInput"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3808
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_3c

    if-eqz v2, :cond_3c

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3809
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    if-eq v0, v11, :cond_7f

    .line 3813
    :cond_3c
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3814
    .local v0, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_9c

    .line 3817
    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z

    move-result v11

    if-nez v11, :cond_7f

    .line 3818
    sget-boolean v11, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v11, :cond_76

    .line 3819
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring hideSoftInput of uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_25 .. :try_end_76} :catchall_c2

    .line 3821
    :cond_76
    nop

    .line 3829
    :try_start_77
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3830
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_d1

    .line 3821
    return v6

    .line 3825
    .end local v0    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_7f
    :try_start_7f
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_8a

    const-string v0, "InputMethodManagerService"

    const-string v6, "Client requesting input be hidden"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_c2

    .line 3826
    :cond_8a
    move/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    :try_start_90
    invoke-virtual {v1, v3, v6, v11, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_c0

    .line 3829
    :try_start_94
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3830
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_da

    .line 3826
    return v0

    .line 3815
    .restart local v0    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_9c
    move/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    :try_start_a2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unknown client "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "uid":I
    .end local v7    # "ident":J
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p5    # "reason":I
    throw v13
    :try_end_c0
    .catchall {:try_start_a2 .. :try_end_c0} :catchall_c0

    .line 3829
    .end local v0    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v4    # "uid":I
    .restart local v7    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p5    # "reason":I
    :catchall_c0
    move-exception v0

    goto :goto_c9

    :catchall_c2
    move-exception v0

    move/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    :goto_c9
    :try_start_c9
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3830
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3831
    nop

    .end local v4    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p5    # "reason":I
    throw v0

    .line 3832
    .end local v7    # "ident":J
    .restart local v4    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p5    # "reason":I
    :catchall_d1
    move-exception v0

    move/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    :goto_d8
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_c9 .. :try_end_d9} :catchall_da

    throw v0

    :catchall_da
    move-exception v0

    goto :goto_d8
.end method

.method initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;IZ)V
    .registers 13
    .param p1, "inputMethod"    # Lcom/android/server/inputmethod/IInputMethodInvoker;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "configChanges"    # I
    .param p4, "supportStylusHw"    # Z

    .line 3039
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 3040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending attach of token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_28
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v4, p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 3044
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result v7

    .line 3043
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V

    .line 3045
    return-void
.end method

.method invalidateAutofillSessionLocked()V
    .registers 4

    .line 2913
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    if-eqz v0, :cond_10

    .line 2915
    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2918
    goto :goto_10

    .line 2916
    :catch_8
    move-exception v0

    .line 2917
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Cannot invalidate autofill session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public isImeTraceEnabled()Z
    .registers 2

    .line 4814
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 3

    .line 4388
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4389
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->isisInputMethodPickerShownForTestLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4390
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method synthetic lambda$getInputMethodWindowVisibleHeight$3$com-android-server-inputmethod-InputMethodManagerService(ILcom/android/internal/view/IInputMethodClient;)Ljava/lang/Integer;
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4631
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4632
    :try_start_3
    const-string v1, "getInputMethodWindowVisibleHeight"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 4634
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_32

    .line 4635
    const v1, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "204906124"

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string v6, ""

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4636
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4638
    :cond_32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4642
    :cond_38
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4643
    .local v1, "curTokenDisplayId":I
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_46

    .line 4644
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4643
    .end local v1    # "curTokenDisplayId":I
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method synthetic lambda$maybeInitImeNavbarConfigLocked$0$com-android-server-inputmethod-InputMethodManagerService(Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V
    .registers 4
    .param p1, "resource"    # Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 1896
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1897
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-ne p1, v1, :cond_a

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 1900
    :cond_a
    monitor-exit v0

    .line 1901
    return-void

    .line 1900
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method synthetic lambda$systemRunning$1$com-android-server-inputmethod-InputMethodManagerService(Z)V
    .registers 5
    .param p1, "available"    # Z

    .line 2031
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 2032
    const/4 v1, 0x0

    .line 2031
    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2032
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2033
    return-void
.end method

.method synthetic lambda$systemRunning$2$com-android-server-inputmethod-InputMethodManagerService(I)V
    .registers 4
    .param p1, "currentUserId"    # I

    .line 2041
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2042
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 2043
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_10

    .line 2047
    monitor-exit v0

    return-void

    .line 2049
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 2050
    monitor-exit v0

    .line 2051
    return-void

    .line 2050
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method

.method onActionLocaleChanged()V
    .registers 5

    .line 1359
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 1361
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1362
    monitor-exit v0

    return-void

    .line 1364
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1366
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1367
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1368
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1369
    .end local v1    # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 1370
    return-void

    .line 1369
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 12
    .param p1, "method"    # Lcom/android/server/inputmethod/IInputMethodInvoker;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 3062
    const-string v0, "IMMS.onSessionCreated"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3064
    :try_start_7
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_69

    .line 3065
    :try_start_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v3, :cond_16

    .line 3068
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 3069
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_66

    .line 3094
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3069
    return-void

    .line 3071
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    .line 3072
    .local v3, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v3, :cond_5d

    if-eqz p1, :cond_5d

    .line 3073
    invoke-virtual {v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_5d

    .line 3074
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v4, :cond_5d

    .line 3075
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3076
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {v5, v4, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3078
    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v6

    .line 3080
    .local v6, "res":Lcom/android/internal/inputmethod/InputBindResult;
    const/4 v7, -0x1

    invoke-virtual {p0, v5, v4, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    .line 3082
    iget-object v4, v6, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v4, :cond_58

    .line 3083
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v5, 0xbc2

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-direct {p0, v5, v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 3086
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_66

    .line 3094
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3086
    return-void

    .line 3089
    .end local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v6    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_66

    .line 3092
    :try_start_5e
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_69

    .line 3094
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3095
    nop

    .line 3096
    return-void

    .line 3089
    :catchall_66
    move-exception v3

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local p2    # "session":Lcom/android/internal/view/IInputMethodSession;
    .end local p3    # "channel":Landroid/view/InputChannel;
    :try_start_68
    throw v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 3094
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .restart local p2    # "session":Lcom/android/internal/view/IInputMethodSession;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    :catchall_69
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3095
    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6279
    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 6281
    .local v9, "callingUid":I
    if-eqz v9, :cond_46

    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_46

    .line 6285
    if-eqz v8, :cond_13

    .line 6286
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6288
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6290
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6291
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/Process;->isCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 6293
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6294
    return-void

    .line 6296
    :cond_40
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6298
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_46
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    move-object v10, p0

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 6300
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1995
    const/4 v0, 0x1

    return v0

    .line 1997
    :cond_8
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->onMiuiTransact(ILandroid/os/Parcel;Landroid/os/Parcel;ILcom/android/internal/view/IInputContext;ILandroid/os/Handler;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1a} :catch_1b

    return v0

    .line 2001
    :catch_1b
    move-exception v0

    .line 2004
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_27

    .line 2005
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2007
    :cond_27
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1717
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1719
    .local v1, "currentUserId":I
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_30

    .line 1720
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockUser: userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_30
    if-eq p1, v1, :cond_34

    .line 1723
    monitor-exit v0

    return-void

    .line 1725
    :cond_34
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3e

    move v3, v4

    goto :goto_3f

    :cond_3e
    move v3, v5

    :goto_3f
    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1726
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_4c

    .line 1728
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1729
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1731
    .end local v1    # "currentUserId":I
    :cond_4c
    monitor-exit v0

    .line 1732
    return-void

    .line 1731
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method performOnCreateInlineSuggestionsRequestLocked()V
    .registers 10

    .line 2273
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    if-nez v0, :cond_5

    .line 2274
    return-void

    .line 2276
    :cond_5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    .line 2277
    .local v0, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    const-string v2, "InputMethodManagerService"

    if-eqz v1, :cond_25

    .line 2278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing onCreateInlineSuggestionsRequest. mCurMethod = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_25
    if-eqz v0, :cond_44

    .line 2281
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2285
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    move-object v3, v1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2286
    .local v1, "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 2288
    .end local v1    # "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    goto :goto_49

    .line 2289
    :cond_44
    const-string v1, "No IME connected! Abandoning inline suggestions creation request."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :goto_49
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearPendingInlineSuggestionsRequestLocked()V

    .line 2292
    return-void
.end method

.method reRequestCurrentClientSessionLocked()V
    .registers 2

    .line 3117
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_16

    .line 3118
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3119
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3120
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3121
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3123
    :cond_16
    return-void
.end method

.method removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 2515
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2516
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2517
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_6f

    .line 2518
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2519
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2520
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2522
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2523
    .local v2, "numItems":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_29
    if-ltz v3, :cond_41

    .line 2524
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 2525
    .local v5, "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    if-ne v6, v1, :cond_3e

    .line 2526
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2523
    .end local v5    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 2530
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v5, 0x0

    if-ne v3, v1, :cond_69

    .line 2531
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v6, 0x15

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2533
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v3, :cond_63

    .line 2534
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2535
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    .line 2536
    .local v3, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v3, :cond_63

    .line 2539
    invoke-virtual {v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 2540
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 2543
    .end local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_63
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2544
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2545
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2547
    :cond_69
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne v3, v1, :cond_6f

    .line 2548
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2551
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v2    # "numItems":I
    :cond_6f
    monitor-exit v0

    .line 2552
    return-void

    .line 2551
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public removeImeSurface()V
    .registers 4

    .line 4650
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4652
    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4756
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4757
    return-void
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .registers 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 3724
    const-string/jumbo v0, "windowToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3726
    .local v0, "uid":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3727
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3728
    monitor-exit v1

    return-void

    .line 3730
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_36

    .line 3732
    .local v2, "ident":J
    :try_start_19
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v4, p1, :cond_2a

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-eq v4, p2, :cond_2a

    .line 3734
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 3735
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_30

    .line 3738
    :cond_2a
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    nop

    .line 3740
    .end local v2    # "ident":J
    monitor-exit v1

    .line 3741
    return-void

    .line 3738
    .restart local v2    # "ident":J
    :catchall_30
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "perceptible":Z
    throw v4

    .line 3740
    .end local v2    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "perceptible":Z
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v2
.end method

.method public reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 20
    .param p1, "parentClient"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"    # I
    .param p3, "matrixValues"    # [F

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 4658
    :try_start_8
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    move-object v5, v0

    .line 4659
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v5, :cond_155

    .line 4663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v6, v0

    .line 4664
    .local v6, "callingUid":I
    iget v0, v5, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v6, v0, :cond_14d

    .line 4668
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_16e

    .line 4669
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v8, v0

    .line 4670
    .local v8, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v8, :cond_2e

    .line 4671
    monitor-exit v7

    return-void

    .line 4675
    :cond_2e
    if-nez v4, :cond_62

    .line 4676
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 4677
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 4678
    .local v0, "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    if-nez v0, :cond_3c

    .line 4679
    monitor-exit v7

    return-void

    .line 4681
    :cond_3c
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    if-ne v9, v8, :cond_49

    .line 4685
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 4686
    monitor-exit v7

    return-void

    .line 4682
    :cond_49
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only the owner client can clear VirtualDisplayGeometry for display #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v9

    .line 4689
    .end local v0    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .restart local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_62
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 4690
    .restart local v0    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    if-eqz v0, :cond_9a

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    if-ne v9, v8, :cond_73

    goto :goto_9a

    .line 4691
    :cond_73
    new-instance v9, Ljava/security/InvalidParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Display #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is already registered by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v9

    .line 4694
    .restart local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_9a
    :goto_9a
    if-nez v0, :cond_d5

    .line 4695
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v10, v8, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v9, v3, v10}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 4699
    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v9, v8, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    move-object v0, v9

    .line 4700
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v0

    goto :goto_d6

    .line 4696
    :cond_b8
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot access to display #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v9

    .line 4694
    .restart local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_d5
    move-object v9, v0

    .line 4702
    .end local v0    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .local v9, "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    :goto_d6
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4704
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_148

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez v0, :cond_e7

    goto/16 :goto_148

    .line 4708
    :cond_e7
    const/4 v0, 0x0

    .line 4709
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4710
    .local v10, "displayId":I
    const/4 v11, 0x0

    .line 4712
    .local v11, "needToNotify":Z
    :goto_ed
    if-ne v10, v3, :cond_f1

    const/4 v12, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v12, 0x0

    :goto_f2
    or-int/2addr v11, v12

    .line 4713
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 4714
    .local v12, "next":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    if-nez v12, :cond_fe

    .line 4715
    goto :goto_13b

    .line 4717
    :cond_fe
    if-nez v0, :cond_10b

    .line 4718
    new-instance v13, Landroid/graphics/Matrix;

    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v0, v13

    goto :goto_113

    .line 4720
    :cond_10b
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object v13, v0

    .line 4722
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v13, "matrix":Landroid/graphics/Matrix;
    :goto_113
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v0, v14, :cond_13d

    .line 4723
    if-eqz v11, :cond_13b

    .line 4724
    const/16 v0, 0x9

    new-array v0, v0, [F

    move-object v14, v0

    .line 4725
    .local v14, "values":[F
    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_127
    .catchall {:try_start_1d .. :try_end_127} :catchall_14a

    .line 4727
    :try_start_127
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v15

    .line 4727
    invoke-interface {v0, v15, v14}, Lcom/android/internal/view/IInputMethodClient;->updateVirtualDisplayToScreenMatrix(I[F)V
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_132} :catch_133
    .catchall {:try_start_127 .. :try_end_132} :catchall_14a

    .line 4734
    goto :goto_13b

    .line 4729
    :catch_133
    move-exception v0

    .line 4730
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_134
    const-string v15, "InputMethodManagerService"

    const-string v1, "Exception calling updateVirtualDisplayToScreenMatrix()"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4740
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v9    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .end local v10    # "displayId":I
    .end local v11    # "needToNotify":Z
    .end local v12    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    .end local v14    # "values":[F
    :cond_13b
    :goto_13b
    monitor-exit v7

    .line 4749
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "callingUid":I
    goto :goto_182

    .line 4738
    .restart local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "callingUid":I
    .restart local v8    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v9    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .restart local v10    # "displayId":I
    .restart local v11    # "needToNotify":Z
    .restart local v12    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    .restart local v13    # "matrix":Landroid/graphics/Matrix;
    :cond_13d
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    move v10, v0

    .line 4739
    .end local v12    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    move-object/from16 v1, p0

    move-object v0, v13

    goto :goto_ed

    .line 4705
    .end local v10    # "displayId":I
    .end local v11    # "needToNotify":Z
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    :cond_148
    :goto_148
    monitor-exit v7

    return-void

    .line 4740
    .end local v8    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v9    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;
    :catchall_14a
    move-exception v0

    monitor-exit v7
    :try_end_14c
    .catchall {:try_start_134 .. :try_end_14c} :catchall_14a

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    :try_start_14c
    throw v0

    .line 4665
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_14d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller doesn\'t own the display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v0

    .line 4660
    .end local v6    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find display for non-existent displayId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v0
    :try_end_16e
    .catchall {:try_start_14c .. :try_end_16e} :catchall_16e

    .line 4741
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :catchall_16e
    move-exception v0

    move-object v1, v0

    .line 4742
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_182

    .line 4744
    :try_start_172
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->throwExceptionFromSystem(Ljava/lang/String;)V
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_179} :catch_17a

    .line 4747
    goto :goto_182

    .line 4745
    :catch_17a
    move-exception v0

    .line 4746
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "InputMethodManagerService"

    const-string v6, "Exception calling throwExceptionFromSystem()"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4750
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_182
    :goto_182
    return-void
.end method

.method requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 5
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3166
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    if-nez v0, :cond_48

    .line 3167
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new accessibility sessions for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 3169
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3170
    .local v0, "ignoreSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 3171
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3170
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 3173
    .end local v1    # "i":I
    :cond_41
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    .line 3175
    .end local v0    # "ignoreSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_48
    return-void
.end method

.method requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 7
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3127
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_49

    .line 3128
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new session for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 3133
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 3134
    .local v1, "serverChannel":Landroid/view/InputChannel;
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 3137
    .local v0, "clientChannel":Landroid/view/InputChannel;
    iput-boolean v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 3139
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    .line 3140
    .local v2, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V

    .line 3153
    .local v3, "callback":Lcom/android/internal/view/IInputSessionCallback$Stub;
    :try_start_39
    invoke-virtual {v2, v0, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    .line 3157
    if-eqz v0, :cond_49

    .line 3158
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_49

    .line 3157
    :catchall_42
    move-exception v4

    if-eqz v0, :cond_48

    .line 3158
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3160
    :cond_48
    throw v4

    .line 3162
    .end local v0    # "clientChannel":Landroid/view/InputChannel;
    .end local v1    # "serverChannel":Landroid/view/InputChannel;
    .end local v2    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v3    # "callback":Lcom/android/internal/view/IInputSessionCallback$Stub;
    :cond_49
    :goto_49
    return-void
.end method

.method resetCurrentMethodAndClientLocked(I)V
    .registers 3
    .param p1, "unbindClientReason"    # I

    .line 3110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedMethodIdLocked(Ljava/lang/String;)V

    .line 3111
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 3112
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 3113
    return-void
.end method

.method resetSystemUiLocked()V
    .registers 2

    .line 3101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3102
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 3103
    invoke-direct {p0, v0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 3105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 3106
    return-void
.end method

.method scheduleNotifyImeUidToAudioService(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 3054
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3055
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3056
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3057
    return-void
.end method

.method scheduleResetStylusHandwriting()V
    .registers 3

    .line 3049
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x442

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3050
    return-void
.end method

.method scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1737
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_14

    .line 1738
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v0, p1, :cond_d

    .line 1739
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    .line 1740
    return-void

    .line 1742
    :cond_d
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1746
    :cond_14
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 1748
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 1750
    .local v0, "task":Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1751
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1752
    return-void
.end method

.method sendOnNavButtonFlagsChangedLocked()V
    .registers 3

    .line 5537
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    .line 5538
    .local v0, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-nez v0, :cond_9

    .line 5540
    return-void

    .line 5542
    :cond_9
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onNavButtonFlagsChanged(I)V

    .line 5543
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 13
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 4567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cf

    if-nez p2, :cond_a

    goto/16 :goto_cf

    .line 4568
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4569
    .local v0, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_4d

    aget-object v4, p2, v3

    .line 4570
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 4571
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 4573
    :cond_20
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4574
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4573
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 4577
    :cond_4d
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4578
    :try_start_50
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_58

    .line 4579
    monitor-exit v1

    return-void

    .line 4581
    :cond_58
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_5e

    .line 4582
    monitor-exit v1

    return-void

    .line 4584
    :cond_5e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4585
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_6a

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_cc

    return-void

    .line 4588
    :cond_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_74} :catch_c2
    .catchall {:try_start_6a .. :try_end_74} :catchall_cc

    .line 4592
    .local v4, "packageInfos":[Ljava/lang/String;
    nop

    .line 4593
    if-eqz v4, :cond_c0

    .line 4594
    :try_start_77
    array-length v5, v4

    .line 4595
    .local v5, "packageNum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_79
    if-ge v6, v5, :cond_c0

    .line 4596
    aget-object v7, v4, v6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 4597
    array-length v7, p2

    if-lez v7, :cond_94

    .line 4598
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 4600
    :cond_94
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4602
    :goto_9d
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4603
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    .line 4602
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 4604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_ae
    .catchall {:try_start_77 .. :try_end_ae} :catchall_cc

    .line 4606
    .local v7, "ident":J
    :try_start_ae
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b7

    .line 4608
    :try_start_b1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4609
    nop

    .line 4610
    monitor-exit v1

    return-void

    .line 4608
    :catchall_b7
    move-exception v2

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4609
    nop

    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    throw v2

    .line 4595
    .end local v7    # "ident":J
    .restart local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 4614
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "packageInfos":[Ljava/lang/String;
    .end local v5    # "packageNum":I
    .end local v6    # "i":I
    :cond_c0
    monitor-exit v1

    .line 4615
    return-void

    .line 4589
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_c2
    move-exception v2

    .line 4590
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Failed to get package infos"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    monitor-exit v1

    return-void

    .line 4614
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_cc
    move-exception v2

    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_b1 .. :try_end_ce} :catchall_cc

    throw v2

    .line 4567
    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_cf
    :goto_cf
    return-void
.end method

.method setCurHostInputToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "callerImeToken"    # Landroid/os/IBinder;
    .param p2, "hostInputToken"    # Landroid/os/IBinder;

    .line 2392
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2393
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2394
    monitor-exit v0

    return-void

    .line 2396
    :cond_b
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2397
    monitor-exit v0

    .line 2398
    return-void

    .line 2397
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setCurTokenDisplayIdLocked(I)V
    .registers 2
    .param p1, "curTokenDisplayId"    # I

    .line 751
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 752
    return-void
.end method

.method setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;)V"
        }
    .end annotation

    .line 5049
    .local p1, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5050
    .local v0, "disabledSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 5051
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 5052
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 5053
    .local v2, "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v2, :cond_2f

    .line 5054
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5050
    .end local v2    # "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5059
    .end local v1    # "i":I
    :cond_32
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_40

    .line 5060
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 5063
    :cond_40
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 5064
    .local v1, "enabledSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 5065
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_69

    .line 5066
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 5067
    .local v3, "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v3, :cond_69

    .line 5068
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5064
    .end local v3    # "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 5072
    .end local v2    # "i":I
    :cond_6c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_7a

    .line 5073
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 5076
    :cond_7a
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 5077
    return-void
.end method

.method setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 5032
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_64

    .line 5033
    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_34

    .line 5034
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    :cond_28
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    .line 5037
    :cond_34
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 5038
    if-eqz p1, :cond_64

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_64

    .line 5039
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    :cond_58
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    .line 5043
    :cond_64
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 3593
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3594
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_a9

    .line 3599
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 3600
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 3601
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_1b

    .line 3602
    return-void

    .line 3604
    :cond_1b
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3606
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_26

    if-ge p2, v1, :cond_26

    .line 3607
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .local v3, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2a

    .line 3611
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 3613
    .restart local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2a
    if-eqz v3, :cond_46

    if-nez v2, :cond_2f

    goto :goto_46

    .line 3618
    :cond_2f
    if-eq v3, v2, :cond_45

    .line 3619
    const/4 v4, 0x1

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3620
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 3621
    .local v4, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v4, :cond_45

    .line 3622
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3623
    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3626
    .end local v4    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_45
    return-void

    .line 3614
    :cond_46
    :goto_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal subtype state: old subtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new subtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    return-void

    .line 3630
    .end local v1    # "subtypeCount":I
    .end local v2    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3634
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_6e
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3638
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedMethodIdLocked(Ljava/lang/String;)V

    .line 3640
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 3641
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3642
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3643
    const-string/jumbo v4, "input_method_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3644
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3646
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9b
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_9f
    .catchall {:try_start_6e .. :try_end_9f} :catchall_a4

    .line 3648
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3649
    nop

    .line 3650
    return-void

    .line 3648
    :catchall_a4
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3649
    throw v3

    .line 3595
    .end local v1    # "ident":J
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 3747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMMS.showCurrentInputLocked(), flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3749
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v3, 0x0

    if-nez v2, :cond_ca

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    if-eqz v2, :cond_26

    goto/16 :goto_ca

    .line 3753
    :cond_26
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_2f

    .line 3754
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3755
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_35

    .line 3756
    :cond_2f
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_35

    .line 3757
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3760
    :cond_35
    :goto_35
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_3a

    .line 3761
    return v3

    .line 3764
    :cond_3a
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodVisible()V

    .line 3765
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    .line 3766
    .local v2, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v2, :cond_c9

    .line 3768
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodUidLocked()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/am/SmartPowerServiceStub;->onInputMethodShow(I)V

    .line 3770
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 3771
    .local v4, "showInputToken":Landroid/os/Binder;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlagsLocked()I

    move-result v5

    .line 3773
    .local v5, "showFlags":I
    sget-boolean v6, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v6, :cond_a2

    .line 3774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".showSoftInput("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3776
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3774
    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_a2
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->synergyOperate()Z

    move-result v6

    if-nez v6, :cond_ba

    .line 3781
    invoke-virtual {v2, v4, v5, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 3782
    const-string v6, "IMMS.showCurrentInputLocked request ims to show inputMethod."

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V

    .line 3786
    :cond_ba
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->notifyAcceptInput(II)Z

    .line 3788
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInputMethodStatus(Z)V

    .line 3789
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3790
    return v0

    .line 3792
    .end local v4    # "showInputToken":Landroid/os/Binder;
    .end local v5    # "showFlags":I
    :cond_c9
    return v3

    .line 3750
    .end local v2    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_ca
    :goto_ca
    return v3
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 4423
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4425
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4426
    monitor-exit v0

    return-void

    .line 4428
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4429
    monitor-exit v0

    .line 4430
    return-void

    .line 4429
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 4350
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4351
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4352
    monitor-exit v0

    return-void

    .line 4354
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 4355
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4355
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    monitor-exit v0

    return-void

    .line 4363
    :cond_39
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_40

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 4364
    .local v1, "displayId":I
    :goto_41
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4365
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4366
    .end local v1    # "displayId":I
    monitor-exit v0

    .line 4367
    return-void

    .line 4366
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I
    .param p3, "displayId"    # I

    .line 4372
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 4380
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4381
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4382
    return-void

    .line 4374
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 14
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I

    .line 3656
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMMS.showSoftInput(), client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const-string v0, "IMMS.showSoftInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3659
    .local v0, "uid":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodManagerService#showSoftInput"

    invoke-virtual {v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 3661
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3662
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_38

    .line 3663
    monitor-exit v3

    return v5

    .line 3665
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_6e

    .line 3667
    .local v6, "ident":J
    :try_start_3c
    const-string/jumbo v4, "showSoftInput"

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result v4
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_65

    if-nez v4, :cond_4e

    .line 3668
    nop

    .line 3673
    :try_start_46
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3674
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_6e

    .line 3668
    return v5

    .line 3670
    :cond_4e
    :try_start_4e
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_59

    const-string v4, "InputMethodManagerService"

    const-string v5, "Client requesting input be shown"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_59
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v4
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_65

    .line 3673
    :try_start_5d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3674
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    .line 3671
    return v4

    .line 3673
    :catchall_65
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3674
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3675
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p5    # "reason":I
    throw v4

    .line 3676
    .end local v6    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p5    # "reason":I
    :catchall_6e
    move-exception v1

    monitor-exit v3
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public startImeTrace()V
    .registers 7

    .line 4820
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 4822
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4823
    :try_start_b
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 4824
    .local v1, "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3a

    .line 4825
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4826
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_38

    .line 4828
    :try_start_29
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    .line 4831
    goto :goto_38

    .line 4829
    :catch_30
    move-exception v3

    .line 4830
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Error while trying to enable ime trace on client window"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4833
    .end local v2    # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    goto :goto_1b

    .line 4834
    :cond_39
    return-void

    .line 4824
    .end local v1    # "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 13
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 3911
    invoke-direct/range {p0 .. p11}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternal(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .registers 16
    .param p1, "protoDump"    # [B
    .param p2, "source"    # I
    .param p3, "where"    # Ljava/lang/String;

    .line 4767
    if-nez p1, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    .line 4769
    return-void

    .line 4771
    :cond_6
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    .line 4772
    .local v0, "tracingInstance":Lcom/android/internal/inputmethod/ImeTracing;
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_7b

    .line 4776
    :cond_17
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4777
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v2, 0x10b00000003L

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10600000001L

    const-wide v8, 0x20b00000002L

    packed-switch p2, :pswitch_data_7c

    .line 4806
    return-void

    .line 4795
    :pswitch_34
    nop

    .line 4796
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4797
    .local v8, "managerservice_token":J
    nop

    .line 4798
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4797
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4799
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4800
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4802
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4803
    goto :goto_77

    .line 4787
    .end local v8    # "managerservice_token":J
    :pswitch_4b
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4788
    .local v8, "service_token":J
    nop

    .line 4789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4788
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4790
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4791
    invoke-virtual {v1, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4792
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4793
    goto :goto_77

    .line 4779
    .end local v8    # "service_token":J
    :pswitch_61
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4780
    .local v8, "client_token":J
    nop

    .line 4781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4780
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4782
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4783
    invoke-virtual {v1, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4784
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4785
    nop

    .line 4808
    .end local v8    # "client_token":J
    :goto_77
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    .line 4809
    return-void

    .line 4773
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_7b
    :goto_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_61
        :pswitch_4b
        :pswitch_34
    .end packed-switch
.end method

.method public startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 11
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 3682
    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3683
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 3685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3686
    .local v0, "uid":I
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3687
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v4

    if-nez v4, :cond_22

    .line 3688
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3689
    monitor-exit v3

    return-void

    .line 3691
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_aa

    .line 3693
    .local v4, "ident":J
    :try_start_26
    const-string/jumbo v6, "startStylusHandwriting"

    invoke-direct {p0, v0, p1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result v6
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_a1

    if-nez v6, :cond_37

    .line 3715
    :try_start_2f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_aa

    .line 3694
    return-void

    .line 3696
    :cond_37
    :try_start_37
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 3697
    const-string v6, "InputMethodManagerService"

    const-string v7, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_a1

    .line 3715
    :try_start_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_aa

    .line 3698
    return-void

    .line 3700
    :cond_4e
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v6

    .line 3701
    .local v6, "requestId":Ljava/util/OptionalInt;
    invoke-virtual {v6}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v7

    if-nez v7, :cond_69

    .line 3702
    const-string v7, "InputMethodManagerService"

    const-string v8, "Stylus handwriting was not initialized."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_a1

    .line 3715
    :try_start_61
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_aa

    .line 3703
    return-void

    .line 3705
    :cond_69
    :try_start_69
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v7

    if-nez v7, :cond_80

    .line 3706
    const-string v7, "InputMethodManagerService"

    const-string v8, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_a1

    .line 3715
    :try_start_78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_aa

    .line 3707
    return-void

    .line 3709
    :cond_80
    :try_start_80
    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v7, :cond_8b

    const-string v7, "InputMethodManagerService"

    const-string v8, "Client requesting Stylus Handwriting to be started"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    :cond_8b
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v7

    .line 3711
    .local v7, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v7, :cond_98

    .line 3712
    invoke-virtual {v6}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/inputmethod/IInputMethodInvoker;->canStartStylusHandwriting(I)V
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_a1

    .line 3715
    .end local v6    # "requestId":Ljava/util/OptionalInt;
    .end local v7    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_98
    :try_start_98
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3717
    nop

    .line 3718
    .end local v4    # "ident":J
    monitor-exit v3

    .line 3719
    return-void

    .line 3715
    .restart local v4    # "ident":J
    :catchall_a1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3716
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3717
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    throw v6

    .line 3718
    .end local v4    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    :catchall_aa
    move-exception v1

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method public stopImeTrace()V
    .registers 7

    .line 4839
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 4841
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4842
    :try_start_b
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 4843
    .local v1, "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3a

    .line 4844
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4845
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_38

    .line 4847
    :try_start_29
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    .line 4850
    goto :goto_38

    .line 4848
    :catch_30
    move-exception v3

    .line 4849
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Error while trying to disable ime trace on client window"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4852
    .end local v2    # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    goto :goto_1b

    .line 4853
    :cond_39
    return-void

    .line 4843
    .end local v1    # "clients":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;>;"
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 19
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2012
    move-object/from16 v1, p0

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 2013
    :try_start_5
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 2014
    const-string v0, "InputMethodManagerService"

    const-string v3, "--- systemReady"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_10
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_102

    .line 2017
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 2018
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 2019
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    .line 2020
    .local v3, "currentUserId":I
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2021
    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_36

    move v5, v0

    goto :goto_37

    :cond_36
    move v5, v6

    .line 2020
    :goto_37
    invoke-virtual {v4, v3, v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 2022
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2023
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_106

    .line 2024
    move-object/from16 v4, p1

    :try_start_54
    iput-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2025
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V

    .line 2026
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {v1, v5, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2027
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v7, 0x1110219

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 2029
    if-eqz v5, :cond_77

    .line 2030
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 2037
    :cond_77
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    const-string v7, "Lazily initialize IMMS#mImeDrawsImeNavBarRes"

    invoke-static {v5, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 2055
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v8, v9, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2056
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 2058
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2059
    .local v5, "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2060
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2061
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2062
    const-string v7, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2063
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser-IA;)V

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2066
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 2067
    .local v7, "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2068
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v11, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers-IA;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object v13, v7

    invoke-virtual/range {v10 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 2072
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    .line 2073
    .local v8, "defaultImiId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v0

    .line 2074
    .local v9, "imeSelectedOnBoot":Z
    if-nez v9, :cond_e5

    move v6, v0

    :cond_e5
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 2075
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 2076
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2077
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2078
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    .line 2076
    invoke-static {v0, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 2080
    invoke-static {}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->getInstance()Lcom/android/server/inputmethod/MiuiInputMethodStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/inputmethod/MiuiInputMethodStub;->onSystemRunningLocked()V

    goto :goto_104

    .line 2016
    .end local v3    # "currentUserId":I
    .end local v5    # "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    .end local v7    # "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    .end local v8    # "defaultImiId":Ljava/lang/String;
    .end local v9    # "imeSelectedOnBoot":Z
    :cond_102
    move-object/from16 v4, p1

    .line 2082
    :goto_104
    monitor-exit v2

    .line 2083
    return-void

    .line 2082
    :catchall_106
    move-exception v0

    move-object/from16 v4, p1

    :goto_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_54 .. :try_end_10a} :catchall_10b

    throw v0

    :catchall_10b
    move-exception v0

    goto :goto_109
.end method

.method unbindCurrentClientLocked(I)V
    .registers 8
    .param p1, "unbindClientReason"    # I

    .line 2607
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_69

    .line 2608
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindCurrentInputLocked: client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2609
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2608
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 2611
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2612
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    .line 2613
    .local v0, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v0, :cond_39

    .line 2614
    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 2617
    .end local v0    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_39
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2622
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    .line 2624
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbb8

    .line 2625
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2624
    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 2627
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2628
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 2629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2630
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2632
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 2634
    :cond_69
    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .line 1984
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1985
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1984
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1986
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 3
    .param p1, "enabledMayChange"    # Z

    .line 3531
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 3532
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    .line 3533
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 14
    .param p1, "enabledMayChange"    # Z

    .line 3537
    const-string v0, "InputMethodManagerService"

    const/4 v1, 0x4

    if-eqz p1, :cond_71

    .line 3538
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 3539
    .local v2, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_71

    .line 3542
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3544
    .local v4, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_18
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v7, 0x8000

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3546
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    .line 3544
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3547
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_6c

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v6, v1, :cond_6c

    .line 3549
    sget-boolean v6, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v6, :cond_55

    .line 3550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update state("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): DISABLED_UNTIL_USED -> DEFAULT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :cond_55
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3555
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3556
    invoke-virtual {v11}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 3553
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_6c} :catch_6d

    .line 3559
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_6c
    goto :goto_6e

    .line 3558
    :catch_6d
    move-exception v5

    .line 3539
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3566
    .end local v2    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "i":I
    :cond_71
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 3568
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 3569
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 3571
    :cond_89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 3573
    :try_start_8f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_98} :catch_99

    goto :goto_b4

    .line 3574
    :catch_99
    move-exception v1

    .line 3575
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3576
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 3577
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_b4
    goto :goto_b8

    .line 3580
    :cond_b5
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 3586
    :goto_b8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3588
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 3589
    return-void
.end method

.method updateSystemUiLocked()V
    .registers 3

    .line 3447
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3448
    return-void
.end method
