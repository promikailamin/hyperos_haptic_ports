.class public final Lcom/android/server/input/KeyGestureController;
.super Ljava/lang/Object;
.source "KeyGestureController.java"


# static fields
.field public static final DEBUG:Z

.field public static final mUserLock:Ljava/lang/Object;


# instance fields
.field final mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

.field public mClickPartialScreenshot:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public final mInputDataStore:Lcom/android/server/input/data/InputDataStore;

.field public final mInputGestureManager:Lcom/android/server/input/InputGestureManager;

.field public final mInterceptStages:Ljava/util/Map;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

.field public final mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

.field public final mKeyGestureHandlerRecords:Landroid/util/SparseArray;

.field public final mLastHandledEvents:Ljava/util/ArrayDeque;

.field public mPendingCapsLockToggle:Z

.field public mPendingHideRecentSwitcher:Z

.field public mPendingMetaAction:Z

.field public mPowerVolUpBehavior:I

.field public mRingerToggleChord:I

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public mSearchKeyBehavior:I

.field public mSettingsKeyBehavior:I

.field public final mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

.field public final mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

.field public final mSystemPid:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$4PRjtj8OHRdlnwn5_WqXshoVPTQ(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SkZtDf-juTn1Sesg7AZpQ5YVzto(Lcom/android/server/input/KeyGestureController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$mbUjwi2JsgUBPoJ0pQ_Q0JJY3EI(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleIoMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClickPartialScreenshot(Lcom/android/server/input/KeyGestureController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/input/KeyGestureController;->mClickPartialScreenshot:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/input/KeyGestureController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/KeyGestureController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/KeyGestureController;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAccessibilityShortcutTimeout(Lcom/android/server/input/KeyGestureController;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->getAccessibilityShortcutTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetScreenshotChordLongPressDelay(Lcom/android/server/input/KeyGestureController;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->getScreenshotChordLongPressDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->handleMultiKeyGesture([IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitBehaviorsFromSettings(Lcom/android/server/input/KeyGestureController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptShortcutsAfterKeyCapture(Lcom/android/server/input/KeyGestureController;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptShortcutsAfterKeyCapture(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minterceptShortcutsBeforeKeyCapture(Lcom/android/server/input/KeyGestureController;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptShortcutsBeforeKeyCapture(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minterceptUnhandledShortcuts(Lcom/android/server/input/KeyGestureController;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptUnhandledShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monKeyGestureEventListenerDied(Lcom/android/server/input/KeyGestureController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureEventListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monKeyGestureHandlerRemoved(Lcom/android/server/input/KeyGestureController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 123
    const-string v0, "KeyGestureController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/data/InputDataStore;)V
    .registers 11

    .line 271
    new-instance v5, Lcom/android/server/input/KeyGestureController$Injector;

    invoke-direct {v5}, Lcom/android/server/input/KeyGestureController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/KeyGestureController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/data/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/data/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V
    .registers 13

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/KeyGestureController$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyGestureController$1;-><init>(Lcom/android/server/input/KeyGestureController;)V

    const/4 v3, 0x1

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/KeyGestureController$2;

    invoke-direct {v4, p0}, Lcom/android/server/input/KeyGestureController$2;-><init>(Lcom/android/server/input/KeyGestureController;)V

    const/4 v5, 0x2

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/input/KeyGestureController$3;

    invoke-direct {v6, p0}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;)V

    .line 187
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInterceptStages:Ljava/util/Map;

    .line 224
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 242
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 262
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    .line 267
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    .line 277
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 278
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance p2, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {p2, p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    .line 280
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    .line 281
    new-instance p2, Lcom/android/server/input/KeyCombinationManager;

    invoke-direct {p2, v0}, Lcom/android/server/input/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    .line 282
    invoke-virtual {p5, p1}, Lcom/android/server/input/KeyGestureController$Injector;->getScreenshotHelper(Landroid/content/Context;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 283
    new-instance p2, Lcom/android/server/input/KeyGestureController$SettingsObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3}, Lcom/android/server/input/KeyGestureController$SettingsObserver;-><init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;Lcom/android/server/input/KeyGestureController-IA;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    .line 284
    new-instance p2, Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-direct {p2, p1}, Lcom/android/server/input/AppLaunchShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    .line 285
    new-instance p2, Lcom/android/server/input/InputGestureManager;

    invoke-direct {p2, p1}, Lcom/android/server/input/InputGestureManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 286
    invoke-virtual {p5, p1, v0}, Lcom/android/server/input/KeyGestureController$Injector;->getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 288
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 289
    iput-object p4, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    .line 290
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviors()V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initKeyCombinationRules()V

    return-void
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 5

    .line 1428
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    .line 1431
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c
    return p2
.end method

.method public applyInputGesturesBackupPayload([BI)V
    .registers 7

    .line 1496
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1498
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    monitor-enter p1

    .line 1499
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    const-class v2, Landroid/hardware/input/InputGestureData;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/input/data/InputDataStore;->readData(Ljava/io/InputStream;ZLjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1501
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_37

    .line 1502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    .line 1503
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    goto :goto_16

    .line 1505
    :cond_28
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_37
    move-exception p0

    .line 1501
    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final canFocusedWindowCaptureKeys(Landroid/os/IBinder;)Z
    .registers 10

    .line 692
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 694
    iget v0, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsInputFeatures:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_20

    .line 696
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "android.permission.CAPTURE_KEYBOARD"

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;
    .registers 9

    .line 1701
    new-instance p0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {p0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    .line 1702
    iput p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 1703
    iput-object p2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 1704
    iput p3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1705
    iput p4, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 1706
    iput p5, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 1707
    iput p6, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 1708
    iput p7, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-eqz p8, :cond_4a

    .line 1710
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz p1, :cond_22

    check-cast p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 1711
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    return-object p0

    .line 1712
    :cond_22
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz p1, :cond_2f

    check-cast p8, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 1713
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    return-object p0

    .line 1714
    :cond_2f
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz p1, :cond_42

    check-cast p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 1715
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 1716
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    return-object p0

    .line 1718
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppLaunchData type is invalid!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 1765
    const-string v0, "KeyGestureController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingMetaAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingCapsLockToggle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingHideRecentSwitcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSearchKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSettingsKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRingerToggleChord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerVolUpBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    const-string v0, "mKeyGestureEventListenerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1778
    :try_start_d6
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_de
    if-ge v3, v1, :cond_f9

    .line 1780
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_f6

    .line 1782
    const-string v4, ", "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f6

    :catchall_f3
    move-exception p0

    goto/16 :goto_185

    :cond_f6
    :goto_f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    .line 1785
    :cond_f9
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_f3

    .line 1786
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1788
    :try_start_103
    const-string v0, "mKeyGestureHandlerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_10e
    if-ge v2, v0, :cond_128

    .line 1791
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1792
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_125

    .line 1794
    const-string v3, ", "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_125

    :catchall_123
    move-exception p0

    goto :goto_183

    :cond_125
    :goto_125
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    .line 1797
    :cond_128
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedKeyGestures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 1799
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v2

    .line 1798
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    monitor-exit v1
    :try_end_14d
    .catchall {:try_start_103 .. :try_end_14d} :catchall_123

    .line 1802
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1803
    const-string v0, "Last handled KeyGestureEvents: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1805
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyGestureEvent;

    .line 1806
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_15e

    .line 1808
    :cond_16e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1809
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/android/server/input/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1810
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1811
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputGestureManager;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 1800
    :goto_183
    :try_start_183
    monitor-exit v1
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_123

    throw p0

    .line 1785
    :goto_185
    :try_start_185
    monitor-exit v0
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_f3

    throw p0
.end method

.method public final getAccessibilityShortcutTimeout()J
    .registers 8

    .line 1725
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1726
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1727
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1728
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_shortcut_dialog_shown"

    iget v4, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    const/4 v5, 0x0

    .line 1727
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v5

    .line 1730
    :goto_1e
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1731
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-static {v4, v6, v5, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_30

    move v5, v3

    :cond_30
    if-nez v2, :cond_3c

    if-eqz v5, :cond_35

    goto :goto_3c

    .line 1739
    :cond_35
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_40

    :catchall_3a
    move-exception p0

    goto :goto_42

    .line 1738
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1739
    :goto_40
    monitor-exit v0

    return-wide v1

    .line 1740
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_3a

    throw p0
.end method

.method public getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .registers 4

    .line 1469
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {p0}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object p0

    .line 1470
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/input/AidlInputGestureData;

    const/4 v1, 0x0

    .line 1471
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1472
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_22
    return-object v0
.end method

.method public getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)[Landroid/hardware/input/AidlInputGestureData;
    .registers 4

    .line 1458
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object p0

    .line 1460
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/input/AidlInputGestureData;

    const/4 p2, 0x0

    .line 1461
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_22

    .line 1462
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_22
    return-object p1
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .registers 3

    .line 1694
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_11

    .line 1695
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .registers 3

    .line 1416
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 1417
    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p2

    .line 1416
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getInputGesture(ILandroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1421
    :cond_e
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public getInputGestureBackupPayload(I)[B
    .registers 6

    .line 1484
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v1, 0x0

    .line 1485
    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object p1

    .line 1486
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1487
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    monitor-enter v1

    .line 1488
    :try_start_f
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    const-class v2, Landroid/hardware/input/InputGestureData;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/android/server/input/data/InputDataStore;->writeData(Ljava/io/OutputStream;ZLjava/util/List;Ljava/lang/Class;)V

    .line 1490
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    .line 1491
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 1490
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final getScreenshotChordLongPressDelay()J
    .registers 7

    .line 1754
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mClickPartialScreenshot:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1756
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v2

    .line 1754
    const-string/jumbo v4, "systemui"

    const-string/jumbo v5, "screenshot_keychord_delay"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    .line 1757
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->isKeyguardLocked(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/high16 p0, 0x40200000    # 2.5f

    long-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-long v0, v0

    :cond_2f
    return-wide v0
.end method

.method public final handleIoMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1360
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_20

    .line 1367
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->loadInputGestures(I)V

    goto :goto_20

    .line 1362
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1363
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->persistInputGestures(I)V

    :goto_20
    const/4 p0, 0x1

    return p0
.end method

.method public handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V
    .registers 19

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 1213
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    move-object/from16 p2, p7

    .line 1212
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public final handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .registers 6

    .line 1218
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_11

    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-eqz v0, :cond_11

    iget v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 1219
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1223
    :cond_11
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1224
    :try_start_14
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3f

    .line 1226
    const-string p0, "KeyGestureController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_5e

    .line 1229
    :cond_3f
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1230
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    .line 1231
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1232
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1233
    monitor-exit v0

    return-void

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_14 .. :try_end_5f} :catchall_3d

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1336
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v2, 0x4

    if-eq v0, v2, :cond_30

    const/4 v2, 0x5

    if-eq v0, v2, :cond_18

    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    goto :goto_3d

    .line 1353
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/input/AidlKeyGestureEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    goto :goto_3d

    .line 1345
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_24

    .line 1346
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/KeyGestureController;->takeScreenshot(III)V

    goto :goto_3d

    .line 1349
    :cond_24
    check-cast v0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;

    .line 1350
    iget p1, v0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->source:I

    iget v2, v0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->type:I

    iget v0, v0, Lcom/android/server/input/KeyGestureController$TakeScreenshotData;->displayId:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/input/KeyGestureController;->takeScreenshot(III)V

    goto :goto_3d

    .line 1342
    :cond_30
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    goto :goto_3d

    .line 1338
    :cond_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    :goto_3d
    return v1
.end method

.method public final handleMultiKeyGesture([IIII)V
    .registers 15

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .line 1197
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method public handleTouchpadGesture(I)V
    .registers 5

    .line 1267
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForTouchpadGesture(II)Landroid/hardware/input/InputGestureData;

    move-result-object p1

    .line 1270
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_23

    if-nez p1, :cond_f

    return-void

    .line 1274
    :cond_f
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v0

    .line 1275
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p1

    .line 1274
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyGestureController;->handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V

    return-void

    :catchall_23
    move-exception p0

    .line 1270
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V
    .registers 14

    const/4 v0, 0x0

    .line 1204
    new-array v3, v0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move v5, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method public final initBehaviors()V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 297
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    .line 298
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    .line 300
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0156

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2b

    const/4 v3, 0x1

    if-le v1, v3, :cond_2d

    .line 304
    :cond_2b
    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    :cond_2d
    const v1, 0x10e0158

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-ltz v0, :cond_3b

    const/4 v1, 0x2

    if-le v0, v1, :cond_3d

    .line 309
    :cond_3b
    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    .line 312
    :cond_3d
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final initBehaviorsFromSettings()V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "volume_hush_gesture"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 321
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e00c7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 321
    const-string v4, "key_chord_power_volume_up"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    .line 325
    const-string v1, "click_partial_screenshot"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    move v2, v1

    :cond_30
    iput-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mClickPartialScreenshot:Z

    return-void
.end method

.method public final initKeyCombinationRules()V
    .registers 6

    .line 333
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x1a

    if-eqz v0, :cond_2d

    .line 337
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/input/KeyGestureController$4;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    if-eqz v0, :cond_2d

    .line 364
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$5;

    const/16 v4, 0x108

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/input/KeyGestureController$5;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 386
    :cond_2d
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$6;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/input/KeyGestureController$6;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$7;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/input/KeyGestureController$7;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 466
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_60

    .line 467
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$8;

    const/16 v2, 0x14

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/input/KeyGestureController$8;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$9;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/input/KeyGestureController$9;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/input/KeyCombinationManager;->addRule(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_60
    return-void
.end method

.method public final initKeyGestures()V
    .registers 6

    .line 547
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    const/16 v1, 0x37

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3c

    .line 550
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    .line 552
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 549
    invoke-static {v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/KeyGestureController$LocalKeyGestureEventHandler;-><init>(Lcom/android/server/input/KeyGestureController;Lcom/android/server/input/KeyGestureController-IA;)V

    .line 548
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public final interceptCapturableShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 17

    move-object/from16 v1, p2

    .line 1015
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1016
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 1017
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const v5, 0x11003

    and-int/2addr v4, v5

    .line 1018
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-nez v5, :cond_1d

    move v7, v6

    move v5, v10

    goto :goto_1f

    :cond_1d
    move v5, v6

    move v7, v5

    .line 1019
    :goto_1f
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    .line 1020
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    if-eqz v5, :cond_2d

    if-nez v3, :cond_2d

    move v3, v10

    goto :goto_2e

    :cond_2d
    move v3, v7

    .line 1024
    :goto_2e
    iget-object v9, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v9, v1}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v9

    .line 1026
    invoke-virtual {v9}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed()Z

    move-result v11

    if-eqz v11, :cond_3b

    return v10

    .line 1029
    :cond_3b
    invoke-virtual {v9}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v11

    if-eqz v11, :cond_55

    .line 1030
    filled-new-array {v2}, [I

    move-result-object v2

    move v1, v8

    const/4 v8, 0x0

    .line 1034
    invoke-virtual {v9}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    move v3, v4

    const/16 v4, 0x33

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 1030
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_55
    move v13, v8

    move v8, v3

    move v3, v4

    move v4, v13

    if-eqz v8, :cond_82

    .line 1040
    iget-object v9, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v9, v1}, Lcom/android/server/input/InputGestureManager;->getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v9

    if-eqz v9, :cond_82

    .line 1043
    filled-new-array {v2}, [I

    move-result-object v2

    .line 1044
    invoke-virtual {v9}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v1

    .line 1047
    invoke-virtual {v9}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v0, v4

    move v4, v1

    move v1, v0

    move-object v0, p0

    move-object v7, p1

    .line 1043
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    .line 1053
    :cond_82
    iget-object v9, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v9, v1}, Lcom/android/server/input/AppLaunchShortcutManager;->handleShortcutService(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_8b

    return v10

    :cond_8b
    if-eqz v8, :cond_bd

    .line 1060
    sget-object v9, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1061
    :try_start_90
    iget-object v11, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v12, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v11, v12, v1}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForKeyEvent(ILandroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v11

    .line 1063
    monitor-exit v9
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_ba

    if-eqz v11, :cond_bd

    .line 1065
    filled-new-array {v2}, [I

    move-result-object v2

    .line 1066
    invoke-virtual {v11}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v1

    .line 1068
    invoke-virtual {v11}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v0, v4

    move v4, v1

    move v1, v0

    move-object v0, p0

    move-object v7, p1

    .line 1065
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :catchall_ba
    move-exception v0

    .line 1063
    :try_start_bb
    monitor-exit v9
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0

    :cond_bd
    const/16 v0, 0x53

    if-eq v2, v0, :cond_124

    const/16 v0, 0x54

    if-eq v2, v0, :cond_10c

    const/16 v0, 0xb0

    if-eq v2, v0, :cond_e4

    const/16 v0, 0xcc

    if-eq v2, v0, :cond_ce

    goto :goto_123

    :cond_ce
    if-eqz v8, :cond_e3

    .line 1110
    filled-new-array {v2}, [I

    move-result-object v2

    .line 1111
    invoke-virtual {v1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, v4

    const/16 v4, 0x17

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 1110
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_e3
    return v10

    :cond_e4
    move v1, v4

    if-eqz v8, :cond_10b

    .line 1093
    iget v3, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-nez v3, :cond_fa

    .line 1094
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_10b

    :cond_fa
    if-ne v3, v10, :cond_10b

    .line 1100
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_10b
    :goto_10b
    return v10

    :cond_10c
    move v1, v4

    if-eqz v8, :cond_123

    .line 1083
    iget v3, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    if-ne v3, v10, :cond_123

    .line 1084
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_123
    :goto_123
    return v7

    :cond_124
    move v1, v4

    if-nez v5, :cond_136

    .line 1076
    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_136
    return v10
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 10

    .line 609
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    .line 613
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {p3}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 614
    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    .line 617
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_23

    invoke-static {p3}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p3}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result p3

    if-nez p3, :cond_23

    .line 618
    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 622
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/server/input/KeyGestureController;->interceptMultiKeyCombination(Landroid/view/KeyEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_2e

    return-wide v2

    .line 628
    :cond_2e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p3

    if-nez p3, :cond_3e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    invoke-static {p3}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result p3

    if-eqz p3, :cond_45

    .line 629
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->shouldInterceptShortcuts(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_45

    return-wide v4

    .line 634
    :cond_45
    iget-object p3, p0, Lcom/android/server/input/KeyGestureController;->mInterceptStages:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;

    invoke-static {p3, p1, p2}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->-$$Nest$minterceptKey(Lcom/android/server/input/KeyGestureController$InterceptKeyStage;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p3

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_5a

    return-wide v0

    .line 640
    :cond_5a
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->canFocusedWindowCaptureKeys(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_61

    return-wide v4

    .line 645
    :cond_61
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInterceptStages:Ljava/util/Map;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->-$$Nest$minterceptKey(Lcom/android/server/input/KeyGestureController$InterceptKeyStage;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_75

    return-wide v0

    .line 649
    :cond_75
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p0

    if-eqz p0, :cond_7c

    return-wide v0

    :cond_7c
    return-wide v4
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 6

    .line 557
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 560
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2d

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    move p2, v0

    goto :goto_1d

    :cond_1c
    move p2, v1

    .line 562
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->isDefaultDisplayOn()Z

    move-result v2

    .line 563
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    if-eqz p2, :cond_28

    if-eqz v2, :cond_28

    move v1, v0

    :cond_28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :cond_2d
    return v1
.end method

.method public interceptKeyCombinationBeforeAccessibility(Landroid/view/KeyEvent;)J
    .registers 2

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->interceptMultiKeyCombination(Landroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final interceptMultiKeyCombination(Landroid/view/KeyEvent;)J
    .registers 5

    .line 666
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/input/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 p0, -0x1

    return-wide p0

    .line 670
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_27

    .line 671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 672
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/input/KeyCombinationManager;

    .line 673
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_27

    sub-long/2addr p0, v0

    return-wide p0

    :cond_27
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final interceptShortcutsAfterKeyCapture(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 17

    .line 908
    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v1, :cond_1d

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptShortcutsAfterKeyCapture: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyGestureController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_1d
    move-object/from16 v2, p2

    .line 912
    :goto_1f
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/input/KeyGestureController;->interceptCapturableShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_27

    return v10

    .line 916
    :cond_27
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 917
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 918
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_38

    move v4, v10

    goto :goto_39

    :cond_38
    move v4, v5

    .line 919
    :goto_39
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    move v7, v6

    .line 920
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    .line 921
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    if-eqz v4, :cond_4c

    if-nez v3, :cond_4c

    move v3, v10

    goto :goto_4d

    :cond_4c
    move v3, v5

    :goto_4d
    const/16 v9, 0x3d

    const/16 v11, 0x75

    const/16 v12, 0x39

    if-eq v1, v12, :cond_cd

    const/16 v13, 0x3a

    if-eq v1, v13, :cond_cd

    if-eq v1, v9, :cond_a6

    if-eq v1, v11, :cond_63

    const/16 v3, 0x76

    if-eq v1, v3, :cond_63

    goto/16 :goto_10a

    :cond_63
    if-eqz v4, :cond_75

    .line 929
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 930
    iput-boolean v10, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 931
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_a5

    .line 933
    :cond_70
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 934
    iput-boolean v10, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_a5

    .line 938
    :cond_75
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v2, :cond_8c

    .line 939
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 940
    filled-new-array {v11, v12}, [I

    move-result-object v2

    move v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_a5

    :cond_8c
    move v4, v1

    move v1, v8

    .line 946
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v2, :cond_a5

    .line 947
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-nez v7, :cond_a5

    .line 949
    filled-new-array {v4}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_a5
    :goto_a5
    return v10

    :cond_a6
    move v4, v1

    move v1, v8

    if-eqz v3, :cond_10a

    .line 960
    iget-boolean v3, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-nez v3, :cond_10a

    .line 962
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, -0xc2

    const/4 v3, 0x2

    .line 963
    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 965
    iput-boolean v10, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 966
    filled-new-array {v4}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x36

    const/4 v5, 0x1

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_cd
    move v1, v8

    if-eqz v4, :cond_de

    .line 979
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 980
    iput-boolean v10, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 981
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_10a

    .line 983
    :cond_db
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    goto :goto_10a

    .line 986
    :cond_de
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v2, :cond_f4

    .line 987
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 988
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x36

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    .line 997
    :cond_f4
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v2, :cond_10a

    .line 998
    iput-boolean v5, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 999
    filled-new-array {v11, v12}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_10a
    :goto_10a
    return v5
.end method

.method public final interceptShortcutsBeforeKeyCapture(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 17

    move-object/from16 v10, p2

    .line 704
    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    const-string v2, "KeyGestureController"

    if-eqz v1, :cond_1c

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptShortcutsBeforeKeyCapture: event = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1c
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 708
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 709
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const v5, 0x11003

    and-int/2addr v4, v5

    .line 710
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-nez v5, :cond_36

    move v5, v11

    goto :goto_37

    :cond_36
    move v5, v6

    .line 711
    :goto_37
    invoke-virtual {v10}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    move v7, v6

    .line 712
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    move v9, v1

    .line 713
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    if-eqz v5, :cond_4b

    if-nez v3, :cond_4b

    move v3, v11

    goto :goto_4c

    :cond_4b
    move v3, v7

    :goto_4c
    if-eqz v3, :cond_7b

    .line 718
    iget-object v12, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v12, v10}, Lcom/android/server/input/InputGestureManager;->getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v12

    if-eqz v12, :cond_7b

    .line 720
    invoke-virtual {v12}, Landroid/hardware/input/InputGestureData;->allowCaptureByFocusedWindow()Z

    move-result v13

    if-nez v13, :cond_7b

    .line 721
    filled-new-array {v9}, [I

    move-result-object v2

    .line 722
    invoke-virtual {v12}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v3

    .line 724
    invoke-virtual {v12}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v0, v4

    move v4, v3

    move v3, v0

    move-object v0, p0

    move-object v7, p1

    .line 721
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v11

    :cond_7b
    move v0, v3

    move v3, v4

    const/16 v12, 0x6f

    if-eq v9, v12, :cond_1c2

    const/16 v4, 0x73

    if-eq v9, v4, :cond_1a5

    const/16 v3, 0xbb

    if-eq v9, v3, :cond_184

    const/16 v3, 0xe7

    if-eq v9, v3, :cond_17e

    const/16 v3, 0x11c

    if-eq v9, v3, :cond_16c

    const/16 v3, 0x13e

    if-eq v9, v3, :cond_15a

    const/16 v3, 0x142

    if-eq v9, v3, :cond_148

    const/16 v3, 0x144

    if-eq v9, v3, :cond_136

    const/16 v3, 0x145

    if-eq v9, v3, :cond_117

    packed-switch v9, :pswitch_data_23c

    packed-switch v9, :pswitch_data_246

    goto/16 :goto_235

    :pswitch_a9
    if-eqz v0, :cond_b9

    .line 733
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_b9
    return v11

    .line 886
    :pswitch_ba
    const-string v0, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :pswitch_c0
    if-nez v5, :cond_d1

    .line 783
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_d1
    return v11

    :pswitch_d2
    if-eqz v5, :cond_e3

    .line 774
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_e3
    return v11

    :pswitch_e4
    if-eqz v5, :cond_f5

    .line 766
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_f5
    return v11

    :pswitch_f6
    if-eqz v5, :cond_110

    .line 756
    filled-new-array {v9}, [I

    move-result-object v2

    const/16 v0, 0xdd

    if-ne v9, v0, :cond_104

    const/16 v0, 0xd

    :goto_102
    move v4, v0

    goto :goto_107

    :cond_104
    const/16 v0, 0xe

    goto :goto_102

    :goto_107
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_110
    return v11

    .line 876
    :pswitch_111
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_117
    if-eqz v0, :cond_135

    .line 833
    filled-new-array {v3}, [I

    move-result-object v2

    .line 835
    sget-object v0, Landroid/window/DesktopExperienceFlags;->TOGGLE_FULLSCREEN_STATE_VIA_FULLSCREEN_KEY:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_129

    const/16 v0, 0x52

    :goto_127
    move v4, v0

    goto :goto_12c

    :cond_129
    const/16 v0, 0x35

    goto :goto_127

    :goto_12c
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 833
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_135
    return v11

    :cond_136
    if-eqz v0, :cond_147

    .line 822
    filled-new-array {v3}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_147
    return v11

    :cond_148
    if-eqz v0, :cond_159

    .line 892
    filled-new-array {v3}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4b

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_159
    return v11

    :cond_15a
    if-eqz v0, :cond_16b

    .line 813
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_16b
    return v11

    :cond_16c
    if-eqz v0, :cond_17d

    .line 791
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_17d
    return v11

    .line 879
    :cond_17e
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_184
    if-eqz v0, :cond_195

    .line 741
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1a4

    :cond_195
    if-nez v5, :cond_1a4

    .line 746
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_1a4
    :goto_1a4
    return v11

    :cond_1a5
    if-nez v5, :cond_235

    .line 801
    filled-new-array {v9}, [I

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v1

    .line 806
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_235

    :cond_1c2
    const/4 v11, 0x6

    if-eqz v0, :cond_214

    .line 848
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/KeyGestureController;->canFocusedWindowCaptureKeys(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 851
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const v5, 0x10403d8

    .line 852
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 851
    invoke-static {v0, v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 854
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    filled-new-array {v12}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x50

    const/4 v5, 0x1

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 858
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    filled-new-array {v12}, [I

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v1

    .line 863
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 864
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_235

    :cond_214
    if-nez v5, :cond_235

    .line 866
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 867
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    invoke-virtual {v10}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    filled-new-array {v12}, [I

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v4, 0x50

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 902
    :cond_235
    :goto_235
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, v10}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_23c
    .packed-switch 0xdb
        :pswitch_111
        :pswitch_f6
        :pswitch_f6
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x131
        :pswitch_e4
        :pswitch_d2
        :pswitch_c0
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_a9
    .end packed-switch
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .registers 4

    .line 1122
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInterceptStages:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;

    invoke-static {p0, p2, p1}, Lcom/android/server/input/KeyGestureController$InterceptKeyStage;->-$$Nest$minterceptKey(Lcom/android/server/input/KeyGestureController$InterceptKeyStage;Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final interceptUnhandledShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 14

    .line 1126
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptUnhandledShortcuts: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyGestureController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_1a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/input/KeyGestureController;->interceptCapturableShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_22

    return v10

    .line 1134
    :cond_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_33

    move v3, v10

    goto :goto_34

    :cond_33
    move v3, v4

    .line 1137
    :goto_34
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    const v6, 0x11003

    and-int/2addr v6, v5

    .line 1138
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    move v7, v6

    .line 1139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    if-eqz v3, :cond_4b

    if-nez v2, :cond_4b

    move v2, v10

    goto :goto_4c

    :cond_4b
    move v2, v4

    :goto_4c
    const/16 v3, 0x36

    if-eq v0, v3, :cond_aa

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_88

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_70

    const/16 v3, 0x78

    if-eq v0, v3, :cond_5e

    goto/16 :goto_d6

    :cond_5e
    if-eqz v2, :cond_d6

    .line 1174
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_70
    if-eqz v2, :cond_d6

    .line 1182
    invoke-static {v7}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1183
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3d

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_88
    if-eqz v2, :cond_d6

    const v2, 0x11002

    and-int/2addr v2, v5

    const/16 v3, 0x1000

    .line 1146
    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1148
    filled-new-array {v0}, [I

    move-result-object v2

    .line 1149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    or-int/2addr v3, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 1148
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_aa
    move v3, v1

    move v1, v0

    if-eqz v2, :cond_d6

    const/16 v2, 0x1002

    .line 1159
    invoke-static {v7, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 1162
    invoke-interface {v5, v4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->isKeyguardLocked(I)Z

    move-result v5

    .line 1161
    invoke-virtual {v2, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 1164
    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, v3

    const/16 v3, 0x1002

    const/16 v4, 0x3c

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v10

    :cond_d6
    :goto_d6
    return v4
.end method

.method public final isDefaultDisplayOn()Z
    .registers 2

    .line 1294
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_a

    return v0

    .line 1298
    :cond_a
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    return p0
.end method

.method public final loadInputGestures(I)V
    .registers 6

    .line 1629
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    monitor-enter v0

    .line 1630
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1631
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    const-class v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/data/InputDataStore;->loadData(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 1634
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    goto :goto_15

    :catchall_27
    move-exception p0

    goto :goto_2b

    .line 1636
    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_27

    throw p0
.end method

.method public final notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .registers 5

    .line 1323
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1324
    const-string v0, "KeyGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key gesture event occurred, event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_1a
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1328
    :goto_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 1329
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 1331
    :cond_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_34

    throw p0
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .registers 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1258
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p0

    .line 1261
    iget-object p1, v0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .registers 5

    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1304
    new-instance v0, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v0, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1305
    :goto_8
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_18

    .line 1306
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_8

    .line 1308
    :cond_18
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1309
    invoke-virtual {v0}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 1310
    invoke-virtual {v0}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1312
    iget v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyGestureController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_33

    return-void

    .line 1316
    :cond_33
    iget-object v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1317
    invoke-virtual {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEvent()I

    move-result v0

    .line 1316
    invoke-static {p0, v1, p1, v0}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;[III)V

    :cond_3e
    return-void
.end method

.method public final onKeyGestureEventListenerDied(I)V
    .registers 3

    .line 1478
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1479
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1480
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onKeyGestureHandlerRemoved(I)V
    .registers 5

    .line 1609
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1610
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1611
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_25

    .line 1612
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 1613
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1616
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_20

    throw p0
.end method

.method public final persistInputGestures(I)V
    .registers 5

    .line 1620
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    monitor-enter v0

    .line 1621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v2, 0x0

    .line 1622
    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v1

    .line 1624
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    const-class v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/input/data/InputDataStore;->saveData(ILjava/util/List;Ljava/lang/Class;)V

    .line 1625
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .registers 6

    .line 1378
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1379
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    .line 1383
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1f

    .line 1385
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_21
    .catchall {:try_start_10 .. :try_end_18} :catchall_1f

    .line 1389
    :try_start_18
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1390
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_30

    :catch_21
    move-exception p0

    .line 1387
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1380
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1390
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_1f

    throw p0
.end method

.method public registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;I)V
    .registers 12

    .line 1541
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1542
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_bf

    .line 1546
    array-length v1, p1

    if-eqz v1, :cond_a8

    .line 1549
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_81

    aget v4, p1, v3

    .line 1550
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_7e

    .line 1554
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1555
    iget-object v6, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    .line 1556
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    .line 1555
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    .line 1557
    iget-object v6, v6, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v6}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6}, Landroid/os/IBinder;->pingBinder()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 1562
    const-string v4, "KeyGestureController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerKeyGestureHandler: pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was killed but we didn\'t receive binderDied callback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {p0, v5}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    goto :goto_7e

    :catchall_5d
    move-exception p0

    goto :goto_c7

    .line 1558
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Key gesture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered by pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1568
    :cond_81
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_5d

    .line 1570
    :try_start_86
    invoke-interface {p2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8d} :catch_a1
    .catchall {:try_start_86 .. :try_end_8d} :catchall_5d

    .line 1574
    :try_start_8d
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1575
    array-length p2, p1

    :goto_93
    if-ge v2, p2, :cond_9f

    aget v1, p1, v2

    .line 1576
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, p3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 1578
    :cond_9f
    monitor-exit v0

    return-void

    :catch_a1
    move-exception p0

    .line 1572
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1547
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No key gestures provided for pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1543
    :cond_bf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1578
    :goto_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_8d .. :try_end_c8} :catchall_5d

    throw p0
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 4

    .line 1601
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/AppLaunchShortcutManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void
.end method

.method public removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .registers 4

    .line 1451
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1452
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->removeCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    .line 1443
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c
    return p2
.end method

.method public setCurrentUserId(I)V
    .registers 3

    .line 1280
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_3
    iput p1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1282
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 1283
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 1284
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_1a
    move-exception p0

    .line 1282
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2

    .line 1290
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-void
.end method

.method public final shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z
    .registers 5

    .line 1238
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p2

    .line 1240
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_9
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1242
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3f

    if-eq p0, p2, :cond_3d

    .line 1244
    invoke-static {p1}, Landroid/hardware/input/KeyGestureEvent;->isVisibleBackgrounduserAllowedGesture(I)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 1245
    sget-boolean p0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz p0, :cond_3b

    .line 1246
    const-string p0, "KeyGestureController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored gesture event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] for visible background user ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0

    :catchall_3f
    move-exception p0

    .line 1242
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 570
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    .line 569
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 572
    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_d
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 574
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_47

    if-eq p0, v0, :cond_45

    .line 576
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result p0

    if-nez p0, :cond_45

    .line 577
    sget-boolean p0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz p0, :cond_43

    .line 578
    const-string p0, "KeyGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored key event ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] for visible background user ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0

    :catchall_47
    move-exception p0

    .line 574
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final shouldInterceptShortcuts(Landroid/os/IBinder;)Z
    .registers 10

    .line 682
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 683
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 684
    iget v0, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 686
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public systemRunning()V
    .registers 3

    .line 531
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 532
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController$SettingsObserver;->-$$Nest$mobserve(Lcom/android/server/input/KeyGestureController$SettingsObserver;)V

    .line 533
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/input/AppLaunchShortcutManager;->init()V

    .line 534
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v1}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputGestureManager;->init(Ljava/util/List;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initKeyGestures()V

    .line 538
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_25
    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 540
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_37

    .line 542
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_37
    move-exception p0

    .line 540
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final takeScreenshot(III)V
    .registers 5

    .line 1744
    new-instance v0, Lcom/android/internal/util/ScreenshotRequest$Builder;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 1746
    invoke-virtual {v0, p3}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setDisplayId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p1

    .line 1747
    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object p1

    .line 1748
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .registers 6

    .line 1396
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1397
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 1398
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    if-eqz v1, :cond_34

    .line 1403
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_2c

    .line 1407
    iget-object p1, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1408
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1409
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_3c

    .line 1404
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1400
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1409
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_2a

    throw p0
.end method

.method public unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;I)V
    .registers 6

    .line 1584
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    if-eqz v1, :cond_32

    .line 1590
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_2a

    .line 1594
    iget-object p1, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1595
    invoke-virtual {p0, p2}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    .line 1596
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    goto :goto_3a

    .line 1591
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1587
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1596
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_28

    throw p0
.end method
