.class abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"

.field protected static final TAKE_SCREENSHOT:Ljava/lang/String; = "takeScreenshot"

.field private static final TRACE_SVC_CLIENT:Ljava/lang/String; = "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient"

.field private static final TRACE_SVC_CONN:Ljava/lang/String; = "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection"

.field private static final TRACE_WM:Ljava/lang/String; = "WindowManagerInternal"

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field protected final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field protected mAttributionTag:Ljava/lang/String;

.field mCaptureFingerprintGestures:Z

.field final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field private final mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field mIsDefault:Z

.field mLastAccessibilityButtonCallbackState:Z

.field protected final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field mNotificationTimeout:J

.field final mOverlayWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field mReceivedAccessibilityButtonCallbackSinceBind:Z

.field mRequestAccessibilityButton:Z

.field mRequestFilterKeyEvents:Z

.field mRequestImeApis:Z

.field private mRequestMultiFingerGestures:Z

.field private mRequestTakeScreenshotTimestampMs:J

.field mRequestTouchExplorationMode:Z

.field private mRequestTwoFingerPassthrough:Z

.field mRetrieveInteractiveWindows:Z

.field protected final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field private mSendMotionEvents:Z

.field mService:Landroid/os/IBinder;

.field private mServiceHandlesDoubleTap:Z

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field protected final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field protected final mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field mUsesAccessibilityCache:Z

.field protected final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateImeSessionInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAccessibilityEventInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "trace"    # Landroid/accessibilityservice/AccessibilityTrace;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "systemActionPerfomer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p12, "a11yWindowManager"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 294
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 295
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 296
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 297
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 298
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 299
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 300
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 301
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 302
    iput-object p11, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 303
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 304
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 305
    iput-object p5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 307
    iput-object p12, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 308
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 309
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 310
    nop

    .line 311
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 312
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 321
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 322
    return-void
.end method

.method private bindInputInternal()V
    .registers 5

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1836
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_32

    .line 1838
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1839
    const-string v1, "bindInput"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->bindInput()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 1845
    goto :goto_32

    .line 1842
    :catch_17
    move-exception v1

    .line 1843
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding input to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1847
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-void
.end method

.method private createImeSessionInternal()V
    .registers 5

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1804
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_38

    .line 1806
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1807
    const-string v1, "createImeSession"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_13
    new-instance v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback-IA;)V

    .line 1810
    .local v1, "callback":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_1d

    .line 1814
    .end local v1    # "callback":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;
    goto :goto_38

    .line 1811
    :catch_1d
    move-exception v1

    .line 1812
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting IME session from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    return-void
.end method

.method private ensureWindowsAvailableTimedLocked(I)V
    .registers 10
    .param p1, "displayId"    # I

    .line 1910
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1911
    return-void

    .line 1914
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1915
    return-void

    .line 1919
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1921
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 1924
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1925
    return-void

    .line 1929
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1930
    .local v0, "startMillis":J
    :goto_28
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_47

    .line 1931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1932
    .local v2, "elapsedMillis":J
    const-wide/16 v4, 0x1388

    sub-long/2addr v4, v2

    .line 1933
    .local v4, "remainMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3f

    .line 1934
    return-void

    .line 1937
    :cond_3f
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_44} :catch_45

    .line 1940
    goto :goto_46

    .line 1938
    :catch_45
    move-exception v6

    .line 1941
    .end local v2    # "elapsedMillis":J
    .end local v4    # "remainMillis":J
    :goto_46
    goto :goto_28

    .line 1942
    :cond_47
    return-void
.end method

.method private getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .registers 3
    .param p1, "resolvedWindowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "[F",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getWindowsByDisplayLocked(I)Ljava/util/List;
    .registers 9
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2051
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    .line 2052
    .local v0, "internalWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v0, :cond_a

    .line 2053
    const/4 v1, 0x0

    return-object v1

    .line 2055
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .local v1, "returnedWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2057
    .local v2, "windowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2c

    .line 2058
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2059
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    nop

    .line 2060
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 2061
    .local v5, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 2062
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2064
    .end local v3    # "i":I
    :cond_2c
    return-object v1
.end method

.method static synthetic lambda$sendScreenshotFailure$1(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 5
    .param p0, "errorCode"    # I
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "nonArg"    # Ljava/lang/Object;

    .line 1325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1326
    .local v0, "payload":Landroid/os/Bundle;
    const-string/jumbo v1, "screenshot_status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1329
    return-void
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 6
    .param p1, "available"    # Z

    .line 1735
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    .line 1737
    return-void

    .line 1739
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1740
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1742
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_43

    .line 1744
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1745
    const-string/jumbo v1, "onAccessibilityButtonAvailabilityChanged"

    .line 1746
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1745
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :cond_24
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    .line 1753
    goto :goto_43

    .line 1749
    :catch_28
    move-exception v1

    .line 1750
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button availability change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1721
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_35

    .line 1723
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1724
    const-string/jumbo v1, "onAccessibilityButtonClicked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 1729
    goto :goto_35

    .line 1727
    :catch_1a
    move-exception v1

    .line 1728
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button click to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 9
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "serviceWantsEvent"    # Z

    .line 1557
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1558
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1562
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_9

    .line 1563
    monitor-exit v0

    return-void

    .line 1569
    :cond_9
    if-nez p2, :cond_1d

    .line 1586
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v2

    .line 1587
    if-nez p2, :cond_18

    .line 1588
    monitor-exit v0

    return-void

    .line 1590
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1592
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1593
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_32

    .line 1595
    :cond_2b
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1597
    :goto_32
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1598
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_98

    .line 1601
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1602
    const-string/jumbo v0, "onAccessibilityEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_5a
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5d} :catch_6e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_37 .. :try_end_5d} :catch_64
    .catchall {:try_start_37 .. :try_end_5d} :catchall_62

    .line 1615
    nop

    :goto_5e
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1616
    goto :goto_93

    .line 1615
    :catchall_62
    move-exception v0

    goto :goto_94

    .line 1611
    :catch_64
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_65
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during write strings to Parcel."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    nop

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_5e

    .line 1608
    :catch_6e
    move-exception v0

    .line 1609
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_65 .. :try_end_91} :catchall_62

    .line 1615
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_5e

    .line 1617
    :goto_93
    return-void

    .line 1615
    :goto_94
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1616
    throw v0

    .line 1598
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .registers 5

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1789
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_1f

    .line 1791
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1792
    const-string v1, "clearAccessibilityCache"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :cond_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 1798
    goto :goto_1f

    .line 1795
    :catch_17
    move-exception v1

    .line 1796
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1800
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method private notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 6
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1759
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_3f

    .line 1761
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1762
    const-string/jumbo v1, "onGesture"

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 1768
    goto :goto_3f

    .line 1765
    :catch_1a
    move-exception v1

    .line 1766
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during sending gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1770
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    return-void
.end method

.method private notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1686
    const-string v0, ", "

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 1687
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v1, :cond_54

    .line 1689
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1690
    const-string/jumbo v2, "onMagnificationChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1691
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_35
    invoke-interface {v1, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_38} :catch_39

    .line 1696
    goto :goto_54

    .line 1694
    :catch_39
    move-exception v0

    .line 1695
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending magnification changes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1698
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 6
    .param p1, "showState"    # I

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1706
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_35

    .line 1708
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1709
    const-string/jumbo v1, "onSoftKeyboardShowModeChanged"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 1715
    goto :goto_35

    .line 1712
    :catch_1a
    move-exception v1

    .line 1713
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    return-void
.end method

.method private notifySystemActionsChangedInternal()V
    .registers 5

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1774
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_33

    .line 1776
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1777
    const-string/jumbo v1, "onSystemActionsChanged"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_14
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSystemActionsChanged()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 1783
    goto :goto_33

    .line 1780
    :catch_18
    move-exception v1

    .line 1781
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending system actions change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method private performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 36
    .param p1, "userId"    # I
    .param p2, "resolvedWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;
    .param p7, "interactionId"    # I
    .param p8, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p9, "fetchFlags"    # I
    .param p10, "interrogatingTid"    # J

    .line 1957
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v15, p5

    const/4 v4, 0x0

    .line 1958
    .local v4, "activityToken":Landroid/os/IBinder;
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1959
    :try_start_c
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v0

    .line 1960
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    const/4 v13, 0x0

    if-nez v0, :cond_17

    .line 1961
    monitor-exit v5

    return v13

    .line 1963
    :cond_17
    const/16 v6, 0x40

    const/16 v16, 0x1

    if-eq v15, v6, :cond_24

    const/16 v6, 0x80

    if-ne v15, v6, :cond_22

    goto :goto_24

    :cond_22
    move v6, v13

    goto :goto_26

    :cond_24
    :goto_24
    move/from16 v6, v16

    .line 1965
    .local v6, "isA11yFocusAction":Z
    :goto_26
    if-nez v6, :cond_35

    .line 1966
    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1967
    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v7

    .line 1968
    .local v7, "windowInfo":Landroid/view/WindowInfo;
    if-eqz v7, :cond_35

    iget-object v8, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_19d

    move-object v4, v8

    move-object v14, v4

    goto :goto_36

    .line 1970
    .end local v7    # "windowInfo":Landroid/view/WindowInfo;
    :cond_35
    move-object v14, v4

    .end local v4    # "activityToken":Landroid/os/IBinder;
    .local v14, "activityToken":Landroid/os/IBinder;
    :goto_36
    :try_start_36
    iget-object v4, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1971
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_195

    .line 1972
    .local v4, "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_5e

    :try_start_3e
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1973
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v7

    if-eqz v7, :cond_5e

    if-nez v6, :cond_5e

    .line 1975
    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v7
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_58

    move-object v0, v7

    move-object/from16 v17, v0

    goto :goto_60

    .line 1977
    .end local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v4    # "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "isA11yFocusAction":Z
    :catchall_58
    move-exception v0

    move-wide/from16 v2, p10

    move-object v4, v14

    goto/16 :goto_1a0

    .restart local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_5e
    move-object/from16 v17, v0

    .end local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .local v17, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :goto_60
    :try_start_60
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_195

    .line 1978
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1980
    .local v12, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1982
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1986
    .local v18, "identityToken":J
    :try_start_6d
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1989
    const/16 v0, 0x10

    if-eq v15, v0, :cond_7f

    const/16 v0, 0x20

    if-ne v15, v0, :cond_84

    .line 1990
    :cond_7f
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->notifyOutsideTouch(II)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_84} :catch_185
    .catchall {:try_start_6d .. :try_end_84} :catchall_178

    .line 1992
    :cond_84
    if-eqz v14, :cond_aa

    .line 1993
    :try_start_86
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1994
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_91} :catch_9d
    .catchall {:try_start_86 .. :try_end_91} :catchall_92

    goto :goto_aa

    .line 2014
    :catchall_92
    move-exception v0

    :goto_93
    move-wide/from16 v2, p10

    :goto_95
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v14

    goto/16 :goto_181

    .line 2008
    :catch_9d
    move-exception v0

    :goto_9e
    move-wide/from16 v2, p10

    :goto_a0
    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move-object/from16 v22, v14

    goto/16 :goto_190

    .line 1996
    :cond_aa
    :goto_aa
    :try_start_aa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_ae} :catch_185
    .catchall {:try_start_aa .. :try_end_ae} :catchall_178

    if-eqz v0, :cond_13d

    .line 1997
    :try_start_b0
    const-string/jumbo v0, "performAccessibilityAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b8} :catch_132
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_127

    move-wide/from16 v9, p3

    :try_start_ba
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_ce} :catch_125
    .catchall {:try_start_ba .. :try_end_ce} :catchall_123

    move-object/from16 v8, p6

    :try_start_d0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_da} :catch_121
    .catchall {:try_start_d0 .. :try_end_da} :catchall_11f

    move/from16 v7, p7

    :try_start_dc
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e6} :catch_11d
    .catchall {:try_start_dc .. :try_end_e6} :catchall_11b

    move-object/from16 v5, p8

    :try_start_e8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_108} :catch_9d
    .catchall {:try_start_e8 .. :try_end_108} :catchall_92

    move-wide/from16 v2, p10

    :try_start_10a
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_115} :catch_119
    .catchall {:try_start_10a .. :try_end_115} :catchall_116

    goto :goto_147

    .line 2014
    :catchall_116
    move-exception v0

    goto/16 :goto_95

    .line 2008
    :catch_119
    move-exception v0

    goto :goto_a0

    .line 2014
    :catchall_11b
    move-exception v0

    goto :goto_12e

    .line 2008
    :catch_11d
    move-exception v0

    goto :goto_139

    .line 2014
    :catchall_11f
    move-exception v0

    goto :goto_12c

    .line 2008
    :catch_121
    move-exception v0

    goto :goto_137

    .line 2014
    :catchall_123
    move-exception v0

    goto :goto_12a

    .line 2008
    :catch_125
    move-exception v0

    goto :goto_135

    .line 2014
    :catchall_127
    move-exception v0

    move-wide/from16 v9, p3

    :goto_12a
    move-object/from16 v8, p6

    :goto_12c
    move/from16 v7, p7

    :goto_12e
    move-object/from16 v5, p8

    goto/16 :goto_93

    .line 2008
    :catch_132
    move-exception v0

    move-wide/from16 v9, p3

    :goto_135
    move-object/from16 v8, p6

    :goto_137
    move/from16 v7, p7

    :goto_139
    move-object/from16 v5, p8

    goto/16 :goto_9e

    .line 1996
    :cond_13d
    move-wide/from16 v9, p3

    move-object/from16 v8, p6

    move/from16 v7, p7

    move-object/from16 v5, p8

    move-wide/from16 v2, p10

    .line 2003
    :goto_147
    :try_start_147
    invoke-static {}, Lcom/miui/server/security/SafetyDetectManagerStub;->getInstance()Lcom/miui/server/security/SafetyDetectManagerStub;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/miui/server/security/SafetyDetectManagerStub;->stampPerformAccessibilityAction(I)V

    .line 2005
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_152} :catch_176
    .catchall {:try_start_147 .. :try_end_152} :catchall_174

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v20, v11

    .end local v11    # "callingUid":I
    .local v20, "callingUid":I
    move/from16 v11, p9

    move/from16 v21, v12

    .end local v12    # "interrogatingPid":I
    .local v21, "interrogatingPid":I
    move/from16 v23, v13

    move-object/from16 v22, v14

    .end local v14    # "activityToken":Landroid/os/IBinder;
    .local v22, "activityToken":Landroid/os/IBinder;
    move-wide/from16 v13, p10

    :try_start_168
    invoke-interface/range {v4 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_16b} :catch_172
    .catchall {:try_start_168 .. :try_end_16b} :catchall_170

    .line 2014
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    nop

    .line 2016
    return v16

    .line 2014
    :catchall_170
    move-exception v0

    goto :goto_181

    .line 2008
    :catch_172
    move-exception v0

    goto :goto_190

    .line 2014
    .end local v20    # "callingUid":I
    .end local v21    # "interrogatingPid":I
    .end local v22    # "activityToken":Landroid/os/IBinder;
    .restart local v11    # "callingUid":I
    .restart local v12    # "interrogatingPid":I
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catchall_174
    move-exception v0

    goto :goto_17b

    .line 2008
    :catch_176
    move-exception v0

    goto :goto_188

    .line 2014
    :catchall_178
    move-exception v0

    move-wide/from16 v2, p10

    :goto_17b
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v14

    .end local v11    # "callingUid":I
    .end local v12    # "interrogatingPid":I
    .end local v14    # "activityToken":Landroid/os/IBinder;
    .restart local v20    # "callingUid":I
    .restart local v21    # "interrogatingPid":I
    .restart local v22    # "activityToken":Landroid/os/IBinder;
    :goto_181
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    throw v0

    .line 2008
    .end local v20    # "callingUid":I
    .end local v21    # "interrogatingPid":I
    .end local v22    # "activityToken":Landroid/os/IBinder;
    .restart local v11    # "callingUid":I
    .restart local v12    # "interrogatingPid":I
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catch_185
    move-exception v0

    move-wide/from16 v2, p10

    :goto_188
    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v23, v13

    move-object/from16 v22, v14

    .line 2012
    .end local v11    # "callingUid":I
    .end local v12    # "interrogatingPid":I
    .end local v14    # "activityToken":Landroid/os/IBinder;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v20    # "callingUid":I
    .restart local v21    # "interrogatingPid":I
    .restart local v22    # "activityToken":Landroid/os/IBinder;
    :goto_190
    nop

    .line 2014
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2012
    return v23

    .line 1977
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v18    # "identityToken":J
    .end local v20    # "callingUid":I
    .end local v21    # "interrogatingPid":I
    .end local v22    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catchall_195
    move-exception v0

    move-wide/from16 v2, p10

    move-object/from16 v22, v14

    move-object/from16 v4, v22

    .end local v14    # "activityToken":Landroid/os/IBinder;
    .restart local v22    # "activityToken":Landroid/os/IBinder;
    goto :goto_1a0

    .end local v22    # "activityToken":Landroid/os/IBinder;
    .local v4, "activityToken":Landroid/os/IBinder;
    :catchall_19d
    move-exception v0

    move-wide/from16 v2, p10

    :goto_1a0
    :try_start_1a0
    monitor-exit v5
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a2

    throw v0

    :catchall_1a2
    move-exception v0

    goto :goto_1a0
.end method

.method private replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 20
    .param p1, "originalCallback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p2, "resolvedWindowId"    # I
    .param p3, "interactionId"    # I
    .param p4, "interrogatingPid"    # I
    .param p5, "interrogatingTid"    # J

    .line 2034
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2035
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v2

    .line 2036
    .local v2, "pipActionReplacingConnection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2037
    :try_start_a
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_33

    .line 2038
    move v4, p2

    :try_start_d
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 2039
    .local v0, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v5

    if-eqz v5, :cond_2f

    if-nez v2, :cond_1c

    goto :goto_2f

    .line 2043
    .end local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_31

    .line 2044
    new-instance v0, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 2045
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    move-object v6, v0

    move-object v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    .line 2044
    return-object v0

    .line 2041
    .restart local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v3

    return-object p1

    .line 2043
    .end local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_31
    move-exception v0

    goto :goto_35

    :catchall_33
    move-exception v0

    move v4, p2

    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_31

    throw v0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 5
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .line 1895
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_12

    .line 1896
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v0

    return v0

    .line 1898
    :cond_12
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1c

    .line 1899
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(I)I

    move-result v0

    return v0

    .line 1901
    :cond_1c
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .registers 4
    .param p1, "accessibilityWindowId"    # I

    .line 1888
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_12

    .line 1889
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v0

    return v0

    .line 1891
    :cond_12
    return p1
.end method

.method private sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1324
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;-><init>(ILandroid/os/RemoteCallback;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1329
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1324
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    return-void
.end method

.method private sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1304
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 1305
    .local v0, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v1, Landroid/graphics/ParcelableColorSpace;

    .line 1306
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 1308
    .local v1, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1309
    .local v2, "payload":Landroid/os/Bundle;
    const-string/jumbo v3, "screenshot_status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    const-string/jumbo v3, "screenshot_hardwareBuffer"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1313
    const-string/jumbo v3, "screenshot_colorSpace"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1314
    nop

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1314
    const-string/jumbo v5, "screenshot_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1318
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1319
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1320
    return-void
.end method

.method private setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 7
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 1820
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1821
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 1823
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1824
    const-string v1, "createImeSession"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_15
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    .line 1830
    goto :goto_34

    .line 1827
    :catch_19
    move-exception v1

    .line 1828
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting IME session from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1832
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_34
    :goto_34
    return-void
.end method

.method private startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1867
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_4e

    .line 1869
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1870
    const-string/jumbo v1, "startInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restarting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :cond_2f
    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_32} :catch_33

    .line 1877
    goto :goto_4e

    .line 1874
    :catch_33
    move-exception v1

    .line 1875
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting input to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1879
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private unbindInputInternal()V
    .registers 5

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1851
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_33

    .line 1853
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1854
    const-string/jumbo v1, "unbindInput"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_14
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->unbindInput()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 1860
    goto :goto_33

    .line 1857
    :catch_18
    move-exception v1

    .line 1858
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unbinding input to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1862
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1525
    return v1

    .line 1528
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 1529
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1c

    .line 1531
    return v1

    .line 1534
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1535
    .local v0, "eventType":I
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_26

    .line 1536
    return v1

    .line 1539
    :cond_26
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1540
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1541
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 1543
    .local v3, "packageName":Ljava/lang/String;
    :goto_38
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1
.end method


# virtual methods
.method public bindInputLocked()V
    .registers 2

    .line 1662
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->bindInputLocked()V

    .line 1663
    return-void
.end method

.method public canReceiveEventsLocked()Z
    .registers 2

    .line 400
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public createImeSessionLocked()V
    .registers 2

    .line 1653
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->createImeSessionLocked()V

    .line 1654
    return-void
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "displayId"    # I

    .line 937
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";gestureSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispatchGesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_33
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1334
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1335
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 1337
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 1339
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 1342
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", requestA11yBtn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1345
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1346
    monitor-exit v0

    .line 1347
    return-void

    .line 1346
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_e .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 38
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    move-object/from16 v8, p0

    move-wide/from16 v14, p2

    move/from16 v13, p4

    move/from16 v12, p6

    move-wide/from16 v10, p7

    move-object/from16 v9, p9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 702
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";arguments="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 701
    :cond_6b
    move/from16 v6, p1

    move-object/from16 v7, p5

    .line 710
    :goto_6f
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 711
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 712
    const/4 v0, 0x1

    :try_start_77
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/16 v22, 0x0

    if-nez v0, :cond_83

    .line 714
    monitor-exit v2

    return-object v22

    .line 716
    :cond_83
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v5, v0

    .line 717
    .local v5, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 719
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 718
    invoke-virtual {v0, v3, v8, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 720
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_98

    .line 721
    monitor-exit v2

    return-object v22

    .line 723
    :cond_98
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 724
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 723
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v23, v3

    .line 725
    .local v23, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v23, :cond_aa

    .line 726
    monitor-exit v2

    return-object v22

    .line 729
    :cond_aa
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v5, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 731
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_b5
    .catchall {:try_start_77 .. :try_end_b5} :catchall_1eb

    .line 732
    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_b9

    .line 729
    :cond_b8
    move-object v4, v1

    .line 734
    .end local v0    # "permissionGranted":Z
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v4, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_b9
    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_1e7

    .line 735
    nop

    .line 736
    invoke-direct {v8, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v3

    .line 737
    .local v3, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [F

    .line 738
    .local v24, "transformMatrix":[F
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/MagnificationSpec;

    .line 739
    .local v2, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 740
    return-object v22

    .line 742
    :cond_d3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 743
    .local v1, "interrogatingPid":I
    move/from16 v25, v1

    .end local v1    # "interrogatingPid":I
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object v9, v2

    .end local v2    # "spec":Landroid/view/MagnificationSpec;
    .local v9, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v2, p5

    move-object/from16 v26, v3

    .end local v3    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v26, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    move v3, v5

    move-object/from16 v16, v9

    move-object v9, v4

    .end local v4    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v16, "spec":Landroid/view/MagnificationSpec;
    move/from16 v4, p4

    move/from16 v27, v5

    .end local v5    # "resolvedWindowId":I
    .local v27, "resolvedWindowId":I
    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 745
    .end local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 746
    .local v2, "identityToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 747
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/2addr v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v25

    .end local v25    # "interrogatingPid":I
    .local v5, "interrogatingPid":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v16

    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 750
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v7, v6

    move-object/from16 v6, p9

    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-virtual {v8, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17b

    .line 746
    .end local v5    # "interrogatingPid":I
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v25    # "interrogatingPid":I
    :cond_175
    move-object/from16 v6, p9

    move-object/from16 v7, v16

    move/from16 v5, v25

    .line 754
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local v5    # "interrogatingPid":I
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_17b
    :try_start_17b
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    iget v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_181
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_181} :catch_1d2
    .catchall {:try_start_17b .. :try_end_181} :catchall_1bd

    or-int/2addr v4, v12

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object v9, v0

    move-wide/from16 v10, p2

    move-object v12, v6

    move/from16 v13, p4

    move-object v14, v1

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v17, p7

    move-object/from16 v19, v7

    move-object/from16 v20, v24

    move-object/from16 v21, p9

    :try_start_195
    invoke-interface/range {v9 .. v21}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 758
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 759
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 758
    invoke-virtual {v0, v4, v9}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_195 .. :try_end_1a6} :catch_1bb
    .catchall {:try_start_195 .. :try_end_1a6} :catchall_1b9

    .line 765
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    if-eqz v6, :cond_1b8

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1b8

    .line 768
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 758
    :cond_1b8
    return-object v0

    .line 765
    :catchall_1b9
    move-exception v0

    goto :goto_1bf

    .line 760
    :catch_1bb
    move-exception v0

    goto :goto_1d4

    .line 765
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1bd
    move-exception v0

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_1bf
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    if-eqz v6, :cond_1d1

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 768
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 770
    :cond_1d1
    throw v0

    .line 760
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catch_1d2
    move-exception v0

    move-object v6, v9

    .line 765
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_1d4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    if-eqz v6, :cond_1e6

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 768
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 771
    :cond_1e6
    return-object v22

    .line 734
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v5    # "interrogatingPid":I
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .end local v23    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v24    # "transformMatrix":[F
    .end local v26    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .end local v27    # "resolvedWindowId":I
    .restart local v4    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1e7
    move-exception v0

    move-object v6, v4

    move-object v1, v6

    .end local v4    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_1ec

    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1eb
    move-exception v0

    :goto_1ec
    :try_start_1ec
    monitor-exit v2
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_1eb

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 37
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    move-object/from16 v8, p0

    move-wide/from16 v14, p2

    move-object/from16 v13, p4

    move/from16 v12, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 627
    const-string v0, "findAccessibilityNodeInfosByText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 626
    :cond_5f
    move/from16 v9, p1

    move-object/from16 v6, p6

    .line 634
    :goto_63
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 635
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    const/4 v0, 0x1

    :try_start_6b
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/16 v22, 0x0

    if-nez v0, :cond_77

    .line 638
    monitor-exit v2

    return-object v22

    .line 640
    :cond_77
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v7, v0

    .line 641
    .local v7, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 643
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 642
    invoke-virtual {v0, v3, v8, v7}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 644
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_8c

    .line 645
    monitor-exit v2

    return-object v22

    .line 647
    :cond_8c
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 648
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 647
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v23, v3

    .line 649
    .local v23, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v23, :cond_9e

    .line 650
    monitor-exit v2

    return-object v22

    .line 653
    :cond_9e
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 655
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_a9
    .catchall {:try_start_6b .. :try_end_a9} :catchall_1dc

    .line 656
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_ad

    .line 653
    :cond_ac
    move-object v5, v1

    .line 658
    .end local v0    # "permissionGranted":Z
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_ad
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_1d8

    .line 659
    nop

    .line 660
    invoke-direct {v8, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v4

    .line 661
    .local v4, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [F

    .line 662
    .local v24, "transformMatrix":[F
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 663
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 664
    return-object v22

    .line 666
    :cond_c7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 667
    .local v2, "interrogatingPid":I
    move-object/from16 v1, p0

    move/from16 v25, v2

    .end local v2    # "interrogatingPid":I
    .local v25, "interrogatingPid":I
    move-object/from16 v2, p6

    move-object v9, v3

    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    .local v9, "spec":Landroid/view/MagnificationSpec;
    move v3, v7

    move-object/from16 v26, v4

    .end local v4    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v26, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    move/from16 v4, p5

    move-object/from16 v16, v9

    move-object v9, v5

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v16, "spec":Landroid/view/MagnificationSpec;
    move/from16 v5, v25

    move/from16 v27, v7

    .end local v7    # "resolvedWindowId":I
    .local v27, "resolvedWindowId":I
    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 669
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 670
    .local v2, "identityToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 671
    const-string v0, "findAccessibilityNodeInfosByText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v25

    .end local v25    # "interrogatingPid":I
    .local v5, "interrogatingPid":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v16

    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 674
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-virtual {v8, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_169

    .line 670
    .end local v5    # "interrogatingPid":I
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v25    # "interrogatingPid":I
    :cond_165
    move-object/from16 v6, v16

    move/from16 v5, v25

    .line 677
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local v5    # "interrogatingPid":I
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    :goto_169
    :try_start_169
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    iget v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_16f} :catch_1c2
    .catchall {:try_start_169 .. :try_end_16f} :catchall_1ac

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    move-object v9, v0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object v13, v6

    move/from16 v14, p5

    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, p7

    move-object/from16 v20, v7

    move-object/from16 v21, v24

    :try_start_184
    invoke-interface/range {v9 .. v21}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 680
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 681
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 680
    invoke-virtual {v0, v4, v9}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_195} :catch_1aa
    .catchall {:try_start_184 .. :try_end_195} :catchall_1a8

    .line 687
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    if-eqz v6, :cond_1a7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 690
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 680
    :cond_1a7
    return-object v0

    .line 687
    :catchall_1a8
    move-exception v0

    goto :goto_1af

    .line 682
    :catch_1aa
    move-exception v0

    goto :goto_1c5

    .line 687
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1ac
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1af
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    if-eqz v6, :cond_1c1

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 690
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 692
    :cond_1c1
    throw v0

    .line 682
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catch_1c2
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .line 687
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1c5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    if-eqz v6, :cond_1d7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 690
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 693
    :cond_1d7
    return-object v22

    .line 658
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .end local v23    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v24    # "transformMatrix":[F
    .end local v26    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .end local v27    # "resolvedWindowId":I
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1d8
    move-exception v0

    move-object v6, v5

    move-object v1, v6

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_1dd

    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1dc
    move-exception v0

    :goto_1dd
    :try_start_1dd
    monitor-exit v2
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 37
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    move-object/from16 v8, p0

    move-wide/from16 v14, p2

    move-object/from16 v13, p4

    move/from16 v12, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 551
    const-string v0, "findAccessibilityNodeInfosByViewId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";viewIdResName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 550
    :cond_5f
    move/from16 v9, p1

    move-object/from16 v6, p6

    .line 559
    :goto_63
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 560
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 561
    const/4 v0, 0x1

    :try_start_6b
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/16 v22, 0x0

    if-nez v0, :cond_77

    .line 563
    monitor-exit v2

    return-object v22

    .line 565
    :cond_77
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v7, v0

    .line 566
    .local v7, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 568
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 567
    invoke-virtual {v0, v3, v8, v7}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 569
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_8c

    .line 570
    monitor-exit v2

    return-object v22

    .line 572
    :cond_8c
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 573
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 572
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v23, v3

    .line 574
    .local v23, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v23, :cond_9e

    .line 575
    monitor-exit v2

    return-object v22

    .line 578
    :cond_9e
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 580
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_a9
    .catchall {:try_start_6b .. :try_end_a9} :catchall_1dc

    .line 581
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_ad

    .line 578
    :cond_ac
    move-object v5, v1

    .line 583
    .end local v0    # "permissionGranted":Z
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_ad
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_1d8

    .line 584
    nop

    .line 585
    invoke-direct {v8, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v4

    .line 586
    .local v4, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [F

    .line 587
    .local v24, "transformMatrix":[F
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 588
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 589
    return-object v22

    .line 591
    :cond_c7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 592
    .local v2, "interrogatingPid":I
    move-object/from16 v1, p0

    move/from16 v25, v2

    .end local v2    # "interrogatingPid":I
    .local v25, "interrogatingPid":I
    move-object/from16 v2, p6

    move-object v9, v3

    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    .local v9, "spec":Landroid/view/MagnificationSpec;
    move v3, v7

    move-object/from16 v26, v4

    .end local v4    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v26, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    move/from16 v4, p5

    move-object/from16 v16, v9

    move-object v9, v5

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v16, "spec":Landroid/view/MagnificationSpec;
    move/from16 v5, v25

    move/from16 v27, v7

    .end local v7    # "resolvedWindowId":I
    .local v27, "resolvedWindowId":I
    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 594
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 595
    .local v2, "identityToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 596
    const-string v0, "findAccessibilityNodeInfosByViewId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v25

    .end local v25    # "interrogatingPid":I
    .local v5, "interrogatingPid":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v16

    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-virtual {v8, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_169

    .line 595
    .end local v5    # "interrogatingPid":I
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v25    # "interrogatingPid":I
    :cond_165
    move-object/from16 v6, v16

    move/from16 v5, v25

    .line 602
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local v5    # "interrogatingPid":I
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    :goto_169
    :try_start_169
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    iget v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_16f} :catch_1c2
    .catchall {:try_start_169 .. :try_end_16f} :catchall_1ac

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    move-object v9, v0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object v13, v6

    move/from16 v14, p5

    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, p7

    move-object/from16 v20, v7

    move-object/from16 v21, v24

    :try_start_184
    invoke-interface/range {v9 .. v21}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 605
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 606
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 605
    invoke-virtual {v0, v4, v9}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_195} :catch_1aa
    .catchall {:try_start_184 .. :try_end_195} :catchall_1a8

    .line 612
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    if-eqz v6, :cond_1a7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 615
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 605
    :cond_1a7
    return-object v0

    .line 612
    :catchall_1a8
    move-exception v0

    goto :goto_1af

    .line 607
    :catch_1aa
    move-exception v0

    goto :goto_1c5

    .line 612
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1ac
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1af
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    if-eqz v6, :cond_1c1

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 615
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 617
    :cond_1c1
    throw v0

    .line 607
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catch_1c2
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .line 612
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1c5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    if-eqz v6, :cond_1d7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 615
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 618
    :cond_1d7
    return-object v22

    .line 583
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .end local v23    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v24    # "transformMatrix":[F
    .end local v26    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .end local v27    # "resolvedWindowId":I
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1d8
    move-exception v0

    move-object v6, v5

    move-object v1, v6

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_1dd

    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1dc
    move-exception v0

    :goto_1dd
    :try_start_1dd
    monitor-exit v2
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 38
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-wide/from16 v6, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 780
    const-string v0, "findFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";focusType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 779
    :cond_5f
    move-object/from16 v10, p6

    .line 788
    :goto_61
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 789
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 790
    :try_start_68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/16 v23, 0x0

    if-nez v0, :cond_72

    .line 791
    monitor-exit v2

    return-object v23

    .line 793
    :cond_72
    invoke-direct {v8, v9, v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v0

    move v12, v0

    .line 795
    .local v12, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 797
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 796
    invoke-virtual {v0, v3, v8, v12}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 798
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_87

    .line 799
    monitor-exit v2

    return-object v23

    .line 801
    :cond_87
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 802
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 801
    invoke-virtual {v3, v4, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v24, v3

    .line 803
    .local v24, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v24, :cond_99

    .line 804
    monitor-exit v2

    return-object v23

    .line 807
    :cond_99
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v12, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 809
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_a4
    .catchall {:try_start_68 .. :try_end_a4} :catchall_1dc

    .line 810
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_a8

    .line 807
    :cond_a7
    move-object v5, v1

    .line 812
    .end local v0    # "permissionGranted":Z
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_a8
    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_1d8

    .line 813
    nop

    .line 814
    invoke-direct {v8, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v4

    .line 815
    .local v4, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [F

    .line 816
    .local v25, "transformMatrix":[F
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 817
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 818
    return-object v23

    .line 820
    :cond_c2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 821
    .local v2, "interrogatingPid":I
    move-object/from16 v1, p0

    move/from16 v26, v2

    .end local v2    # "interrogatingPid":I
    .local v26, "interrogatingPid":I
    move-object/from16 v2, p6

    move-object v9, v3

    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    .local v9, "spec":Landroid/view/MagnificationSpec;
    move v3, v12

    move-object/from16 v27, v4

    .end local v4    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v27, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    move/from16 v4, p5

    move/from16 v16, v12

    move-object v12, v5

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v12, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v16, "resolvedWindowId":I
    move/from16 v5, v26

    move-object/from16 v28, v9

    move-wide v9, v6

    .end local v9    # "spec":Landroid/view/MagnificationSpec;
    .local v28, "spec":Landroid/view/MagnificationSpec;
    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 823
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 824
    .local v2, "identityToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 825
    const-string v0, "findFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v26

    .end local v26    # "interrogatingPid":I
    .local v5, "interrogatingPid":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v28

    .end local v28    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 829
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    invoke-virtual {v8, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_165

    .line 824
    .end local v5    # "interrogatingPid":I
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v26    # "interrogatingPid":I
    .restart local v28    # "spec":Landroid/view/MagnificationSpec;
    :cond_161
    move/from16 v5, v26

    move-object/from16 v6, v28

    .line 832
    .end local v26    # "interrogatingPid":I
    .end local v28    # "spec":Landroid/view/MagnificationSpec;
    .restart local v5    # "interrogatingPid":I
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    :goto_165
    :try_start_165
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    iget v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_165 .. :try_end_16b} :catch_1c1
    .catchall {:try_start_165 .. :try_end_16b} :catchall_1aa

    move-object v10, v0

    move-object v9, v12

    move/from16 v7, v16

    .end local v12    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v16    # "resolvedWindowId":I
    .local v7, "resolvedWindowId":I
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-wide/from16 v11, p2

    move/from16 v13, p4

    move-object v14, v9

    move/from16 v15, p5

    move-object/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, p7

    move-object/from16 v21, v6

    move-object/from16 v22, v25

    :try_start_182
    invoke-interface/range {v10 .. v22}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 835
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 836
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v10

    .line 835
    invoke-virtual {v0, v4, v10}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_193} :catch_1a8
    .catchall {:try_start_182 .. :try_end_193} :catchall_1a6

    .line 842
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    if-eqz v9, :cond_1a5

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 845
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 835
    :cond_1a5
    return-object v0

    .line 842
    :catchall_1a6
    move-exception v0

    goto :goto_1ae

    .line 837
    :catch_1a8
    move-exception v0

    goto :goto_1c5

    .line 842
    .end local v7    # "resolvedWindowId":I
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v12    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v16    # "resolvedWindowId":I
    :catchall_1aa
    move-exception v0

    move-object v9, v12

    move/from16 v7, v16

    .end local v12    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v16    # "resolvedWindowId":I
    .restart local v7    # "resolvedWindowId":I
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_1ae
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    if-eqz v9, :cond_1c0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 845
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 847
    :cond_1c0
    throw v0

    .line 837
    .end local v7    # "resolvedWindowId":I
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v12    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v16    # "resolvedWindowId":I
    :catch_1c1
    move-exception v0

    move-object v9, v12

    move/from16 v7, v16

    .line 842
    .end local v12    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v16    # "resolvedWindowId":I
    .restart local v7    # "resolvedWindowId":I
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_1c5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    if-eqz v9, :cond_1d7

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 845
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 848
    :cond_1d7
    return-object v23

    .line 812
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .end local v7    # "resolvedWindowId":I
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v24    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v25    # "transformMatrix":[F
    .end local v27    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1d8
    move-exception v0

    move-object v9, v5

    move-object v1, v9

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_1dd

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1dc
    move-exception v0

    :goto_1dd
    :try_start_1dd
    monitor-exit v2
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw v0
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 37
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    move-object/from16 v8, p0

    move-wide/from16 v14, p2

    move/from16 v13, p4

    move/from16 v12, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 857
    const-string v0, "focusSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 856
    :cond_5f
    move/from16 v9, p1

    move-object/from16 v6, p6

    .line 865
    :goto_63
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 866
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 867
    :try_start_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/16 v22, 0x0

    if-nez v0, :cond_74

    .line 868
    monitor-exit v2

    return-object v22

    .line 870
    :cond_74
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v7, v0

    .line 871
    .local v7, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 873
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 872
    invoke-virtual {v0, v3, v8, v7}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 874
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_89

    .line 875
    monitor-exit v2

    return-object v22

    .line 877
    :cond_89
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 878
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 877
    invoke-virtual {v3, v4, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v23, v3

    .line 879
    .local v23, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v23, :cond_9b

    .line 880
    monitor-exit v2

    return-object v22

    .line 883
    :cond_9b
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 885
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_a6
    .catchall {:try_start_6a .. :try_end_a6} :catchall_1d9

    .line 886
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_aa

    .line 883
    :cond_a9
    move-object v5, v1

    .line 888
    .end local v0    # "permissionGranted":Z
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_aa
    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_1d5

    .line 889
    nop

    .line 890
    invoke-direct {v8, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v4

    .line 891
    .local v4, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [F

    .line 892
    .local v24, "transformMatrix":[F
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 893
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 894
    return-object v22

    .line 896
    :cond_c4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 897
    .local v2, "interrogatingPid":I
    move-object/from16 v1, p0

    move/from16 v25, v2

    .end local v2    # "interrogatingPid":I
    .local v25, "interrogatingPid":I
    move-object/from16 v2, p6

    move-object v9, v3

    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    .local v9, "spec":Landroid/view/MagnificationSpec;
    move v3, v7

    move-object/from16 v26, v4

    .end local v4    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .local v26, "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    move/from16 v4, p5

    move-object/from16 v16, v9

    move-object v9, v5

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v16, "spec":Landroid/view/MagnificationSpec;
    move/from16 v5, v25

    move/from16 v27, v7

    .end local v7    # "resolvedWindowId":I
    .local v27, "resolvedWindowId":I
    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 899
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 900
    .local v2, "identityToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 901
    const-string v0, "focusSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v25

    .end local v25    # "interrogatingPid":I
    .local v5, "interrogatingPid":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v16

    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 905
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-virtual {v8, v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 900
    .end local v5    # "interrogatingPid":I
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v25    # "interrogatingPid":I
    :cond_162
    move-object/from16 v6, v16

    move/from16 v5, v25

    .line 908
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local v5    # "interrogatingPid":I
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    :goto_166
    :try_start_166
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    iget v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_16c} :catch_1bf
    .catchall {:try_start_166 .. :try_end_16c} :catchall_1a9

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    move-object v9, v0

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object v13, v6

    move/from16 v14, p5

    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, p7

    move-object/from16 v20, v7

    move-object/from16 v21, v24

    :try_start_181
    invoke-interface/range {v9 .. v21}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 911
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 912
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 911
    invoke-virtual {v0, v4, v9}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_192} :catch_1a7
    .catchall {:try_start_181 .. :try_end_192} :catchall_1a5

    .line 918
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    if-eqz v6, :cond_1a4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 921
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 911
    :cond_1a4
    return-object v0

    .line 918
    :catchall_1a5
    move-exception v0

    goto :goto_1ac

    .line 913
    :catch_1a7
    move-exception v0

    goto :goto_1c2

    .line 918
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1a9
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1ac
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    if-eqz v6, :cond_1be

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 921
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 923
    :cond_1be
    throw v0

    .line 913
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catch_1bf
    move-exception v0

    move-object v7, v6

    move-object v6, v9

    .line 918
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v6, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :goto_1c2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    if-eqz v6, :cond_1d4

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 921
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    .line 924
    :cond_1d4
    return-object v22

    .line 888
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .end local v23    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v24    # "transformMatrix":[F
    .end local v26    # "transformMatrixAndSpec":Landroid/util/Pair;, "Landroid/util/Pair<[FLandroid/view/MagnificationSpec;>;"
    .end local v27    # "resolvedWindowId":I
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1d5
    move-exception v0

    move-object v6, v5

    move-object v1, v6

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    goto :goto_1da

    .end local v6    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_1d9
    move-exception v0

    :goto_1da
    :try_start_1da
    monitor-exit v2
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    throw v0
.end method

.method getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()I
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 2068
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8
    .param p1, "displayId"    # I

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1080
    const-string v0, "getCurrentMagnificationRegion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1083
    :try_start_21
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1084
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1085
    monitor-exit v0

    return-object v1

    .line 1087
    :cond_2d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1088
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1089
    .local v2, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_4c

    .line 1091
    .local v3, "identity":J
    :try_start_37
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1092
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v5

    .line 1091
    invoke-virtual {v2, p1, v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_46

    .line 1093
    nop

    .line 1095
    :try_start_41
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1093
    return-object v1

    .line 1095
    :catchall_46
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 1097
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getMagnificationCenterX(I)F
    .registers 7
    .param p1, "displayId"    # I

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1103
    const-string v0, "getMagnificationCenterX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1107
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1109
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1110
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1111
    .local v1, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_49

    .line 1113
    .local v2, "identity":J
    :try_start_34
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1114
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    .line 1113
    invoke-virtual {v1, p1, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterX(IZ)F

    move-result v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_43

    .line 1116
    :try_start_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1113
    return v4

    .line 1116
    :catchall_43
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v4

    .line 1118
    .end local v1    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public getMagnificationCenterY(I)F
    .registers 7
    .param p1, "displayId"    # I

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1124
    const-string v0, "getMagnificationCenterY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1128
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1130
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1131
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1132
    .local v1, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_49

    .line 1134
    .local v2, "identity":J
    :try_start_34
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1135
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    .line 1134
    invoke-virtual {v1, p1, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterY(IZ)F

    move-result v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_43

    .line 1137
    :try_start_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1134
    return v4

    .line 1137
    :catchall_43
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v4

    .line 1139
    .end local v1    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .registers 5
    .param p1, "displayId"    # I

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1020
    const-string v0, "getMagnificationConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1024
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1026
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_42

    .line 1027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1029
    .local v0, "identity":J
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3d

    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    return-object v2

    .line 1031
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1032
    throw v2

    .line 1026
    .end local v0    # "identity":J
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8
    .param p1, "displayId"    # I

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1056
    const-string v0, "getMagnificationRegion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_21
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1060
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1061
    monitor-exit v0

    return-object v1

    .line 1063
    :cond_2d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1064
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1065
    .local v2, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_4c

    .line 1067
    .local v3, "identity":J
    :try_start_37
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1068
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v5

    .line 1067
    invoke-virtual {v2, p1, v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_46

    .line 1069
    nop

    .line 1071
    :try_start_41
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1069
    return-object v1

    .line 1071
    :catchall_46
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1072
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 1073
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getMagnificationScale(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1038
    const-string v0, "getMagnificationScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1042
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 1044
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_43

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1047
    .local v0, "identity":J
    :try_start_30
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getScale(I)F

    move-result v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    .line 1049
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    return v2

    .line 1049
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    throw v2

    .line 1044
    .end local v0    # "identity":J
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public getOverlayWindowToken(I)Landroid/os/IBinder;
    .registers 5
    .param p1, "displayId"    # I

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1421
    const-string v0, "getOverlayWindowToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1424
    :try_start_21
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 1425
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 426
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_a

    .line 427
    :cond_8
    const/16 v0, 0x20

    :goto_a
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    .line 426
    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 413
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 414
    const-string/jumbo v0, "getServiceInfo"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 418
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    .line 1882
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1883
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1884
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSystemActions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 990
    const-string/jumbo v0, "getSystemActions"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 993
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 996
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_25

    .line 997
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SystemActionPerformer;->getSystemActions()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 996
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 8
    .param p1, "windowId"    # I

    .line 512
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 513
    const-string/jumbo v0, "getWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    const/4 v1, -0x1

    .line 517
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_34

    .line 518
    :try_start_27
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 519
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 518
    invoke-virtual {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowIdLocked(II)I

    move-result v2

    move v1, v2

    .line 521
    :cond_34
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 523
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_40

    .line 524
    monitor-exit v0

    return-object v3

    .line 526
    :cond_40
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 527
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    .line 528
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_4a

    .line 529
    monitor-exit v0

    return-object v3

    .line 531
    :cond_4a
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 532
    monitor-exit v0

    return-object v3

    .line 534
    :cond_54
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 535
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 536
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_67

    .line 537
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 538
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 539
    monitor-exit v0

    return-object v3

    .line 541
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_67
    monitor-exit v0

    return-object v3

    .line 542
    .end local v1    # "displayId":I
    .end local v2    # "permissionGranted":Z
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_27 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1437
    const-string/jumbo v0, "getWindowIdForLeashToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_20
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1440
    :try_start_23
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1441
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .registers 9

    .line 475
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 476
    const-string/jumbo v0, "getWindows"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 480
    monitor-exit v0

    return-object v2

    .line 482
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 483
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 484
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_24

    .line 485
    monitor-exit v0

    return-object v2

    .line 487
    :cond_24
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 488
    monitor-exit v0

    return-object v2

    .line 490
    :cond_2e
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 492
    .local v2, "allWindows":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayListLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 493
    .local v3, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 494
    .local v4, "displayListCounts":I
    if-lez v4, :cond_5b

    .line 495
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    if-ge v5, v4, :cond_5b

    .line 496
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 497
    .local v6, "displayId":I
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 499
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    move-result-object v7

    .line 501
    .local v7, "windowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v7, :cond_58

    .line 502
    invoke-virtual {v2, v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    .line 495
    .end local v6    # "displayId":I
    .end local v7    # "windowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 506
    .end local v5    # "i":I
    :cond_5b
    monitor-exit v0

    return-object v2

    .line 507
    .end local v1    # "permissionGranted":Z
    .end local v2    # "allWindows":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .end local v3    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "displayListCounts":I
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method protected abstract hasRightsToCurrentUserLocked()Z
.end method

.method protected intConnTracingEnabled()Z
    .registers 4

    .line 2343
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v1, 0x10

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method public isConnectedLocked()Z
    .registers 2

    .line 1472
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 4

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1003
    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1006
    return v1

    .line 1008
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1009
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1010
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 1011
    .local v0, "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1

    .line 1013
    .end local v0    # "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    :cond_34
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1227
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isMultiFingerGesturesEnabled()Z
    .registers 2

    .line 2259
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    return v0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 2

    .line 2267
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .registers 2

    .line 2255
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method public isTwoFingerPassthroughEnabled()Z
    .registers 2

    .line 2263
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    return v0
.end method

.method synthetic lambda$takeScreenshot$0$com-android-server-accessibility-AbstractAccessibilityServiceConnection(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "nonArg"    # Ljava/lang/Object;

    .line 1288
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1289
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 1290
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v0, :cond_12

    .line 1291
    invoke-direct {p0, v0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    goto :goto_16

    .line 1293
    :cond_12
    const/4 v1, 0x4

    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1296
    :goto_16
    return-void
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .registers 30
    .param p1, "timestamp"    # J
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "loggingTypes"    # J
    .param p6, "callingParams"    # Ljava/lang/String;
    .param p7, "processId"    # I
    .param p8, "threadId"    # J
    .param p10, "callingUid"    # I
    .param p11, "callingStack"    # Landroid/os/Bundle;

    .line 2314
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    move-wide/from16 v14, p4

    invoke-interface {v2, v14, v15}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2315
    nop

    .line 2316
    const-string v2, "call_stack"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2317
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    nop

    .line 2318
    const-string/jumbo v3, "ignore_call_stack"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/util/HashSet;

    .line 2319
    .local v16, "ignoreList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2320
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, [Ljava/lang/StackTraceElement;

    .line 2319
    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    invoke-interface/range {v3 .. v15}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    .line 2322
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    .end local v16    # "ignoreList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_48
    return-void
.end method

.method protected logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 2347
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractAccessibilityServiceConnection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2349
    return-void
.end method

.method protected logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 2329
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2331
    return-void
.end method

.method protected logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 2338
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2340
    return-void
.end method

.method protected logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 2356
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManagerInternal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x200

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2357
    return-void
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 1649
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1650
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1645
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked(I)V

    .line 1646
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1476
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1477
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1479
    .local v1, "eventType":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1480
    .local v2, "serviceWantsEvent":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_19

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_1a

    :cond_19
    move v3, v5

    .line 1482
    .local v3, "requiredForCacheConsistency":Z
    :goto_1a
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 1483
    monitor-exit v0

    return-void

    .line 1486
    :cond_20
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1487
    monitor-exit v0

    return-void

    .line 1492
    :cond_2a
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1494
    .local v6, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_59

    const/16 v7, 0x800

    if-eq v1, v7, :cond_59

    .line 1497
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 1498
    .local v7, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1499
    if-eqz v7, :cond_51

    .line 1500
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1503
    :cond_51
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v7, v8

    .line 1504
    .local v7, "message":Landroid/os/Message;
    goto :goto_5f

    .line 1506
    .end local v7    # "message":Landroid/os/Message;
    :cond_59
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1508
    .restart local v7    # "message":Landroid/os/Message;
    :goto_5f
    if-eqz v2, :cond_62

    goto :goto_63

    :cond_62
    move v4, v5

    :goto_63
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 1510
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1511
    nop

    .end local v1    # "eventType":I
    .end local v2    # "serviceWantsEvent":Z
    .end local v3    # "requiredForCacheConsistency":Z
    .end local v6    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v7    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 1512
    return-void

    .line 1511
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 3

    .line 1630
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1632
    return-void
.end method

.method public notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 4
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 1620
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1622
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1636
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1637
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1638
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 3
    .param p1, "showState"    # I

    .line 1641
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1642
    return-void
.end method

.method public notifySystemActionsChangedLocked()V
    .registers 3

    .line 1625
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1627
    return-void
.end method

.method public onAdded()V
    .registers 4

    .line 1350
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1351
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 1352
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1353
    .local v2, "displayId":I
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayAdded(I)V

    .line 1351
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1355
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 1364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1366
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1367
    .local v2, "overlayWindowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1368
    const-string v3, "addWindowToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";TYPE_ACCESSIBILITY_OVERLAY;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_31
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, p1, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1373
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_4a

    .line 1374
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1375
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_47

    .line 1377
    .end local v2    # "overlayWindowToken":Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    nop

    .line 1379
    return-void

    .line 1375
    .restart local v2    # "overlayWindowToken":Landroid/os/IBinder;
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    :try_start_49
    throw v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 1377
    .end local v2    # "overlayWindowToken":Landroid/os/IBinder;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw v2
.end method

.method public onDisplayRemoved(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 1396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1397
    .local v0, "identity":J
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1398
    const-string v2, "addWindowToken"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 1399
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";true;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1398
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 1404
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_4b

    .line 1405
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1406
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_48

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    nop

    .line 1410
    return-void

    .line 1406
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    :try_start_4a
    throw v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 1408
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    throw v2
.end method

.method public onDoubleTap(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2376
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTap(I)V

    .line 2377
    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2380
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTapAndHold(I)V

    .line 2381
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceNumber"    # I

    .line 326
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_4b

    .line 329
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 331
    return v1

    .line 333
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 334
    return v1

    .line 337
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 338
    const-string/jumbo v0, "onKeyEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_41
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_46} :catch_49

    .line 343
    nop

    .line 344
    const/4 v0, 0x1

    return v0

    .line 341
    :catch_49
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    return v1
.end method

.method public onRemoved()V
    .registers 4

    .line 1382
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1383
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 1384
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1385
    .local v2, "displayId":I
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 1383
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1387
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 27
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 949
    const-string/jumbo v0, "performAccessibilityAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessibilityWindowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v11, p2

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";arguments="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";interrogatingTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v6, p8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 948
    :cond_6c
    move/from16 v14, p1

    move-wide/from16 v11, p2

    move/from16 v15, p4

    move-object/from16 v10, p5

    move/from16 v9, p6

    move-object/from16 v8, p7

    move-wide/from16 v6, p8

    .line 956
    :goto_7a
    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_86

    .line 958
    monitor-exit v1

    return v2

    .line 960
    :cond_86
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    .line 961
    .local v0, "resolvedWindowId":I
    iget-object v3, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v4, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 962
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 961
    invoke-virtual {v3, v4, v13, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 963
    monitor-exit v1

    return v2

    .line 965
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_7d .. :try_end_9b} :catchall_c4

    .line 966
    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v13}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 967
    return v2

    .line 969
    :cond_a4
    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 970
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v2

    iget v4, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 969
    move-object/from16 v1, p0

    move v3, v0

    move/from16 v16, v4

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, v16

    move-wide/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v1

    return v1

    .line 965
    .end local v0    # "resolvedWindowId":I
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 5
    .param p1, "action"    # I

    .line 976
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 977
    const-string/jumbo v0, "performGlobalAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 981
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 983
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_33

    .line 984
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    move-result v0

    return v0

    .line 983
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public requestDelegating(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2372
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDelegating(I)V

    .line 2373
    return-void
.end method

.method public requestDragging(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "pointerId"    # I

    .line 2368
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDragging(II)V

    .line 2369
    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2364
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestTouchExploration(I)V

    .line 2365
    return-void
.end method

.method public resetCurrentMagnification(IZ)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1169
    const-string/jumbo v0, "resetCurrentMagnification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    .line 1174
    monitor-exit v0

    return v2

    .line 1176
    :cond_35
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1177
    monitor-exit v0

    return v2

    .line 1179
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_60

    .line 1180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1182
    .local v0, "identity":J
    :try_start_44
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1183
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v3

    .line 1184
    .local v3, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetCurrentMagnification(IZ)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1185
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result v4
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_5b

    if-nez v4, :cond_57

    :cond_56
    const/4 v2, 0x1

    .line 1187
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    return v2

    .line 1187
    .end local v3    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    throw v2

    .line 1179
    .end local v0    # "identity":J
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public resetLocked()V
    .registers 6

    .line 1445
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 1449
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_3d

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1451
    const-string/jumbo v1, "init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_36
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3d} :catch_3e

    .line 1457
    :cond_3d
    goto :goto_3f

    .line 1455
    :catch_3e
    move-exception v1

    .line 1458
    :goto_3f
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 1460
    :try_start_44
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_47
    .catch Ljava/util/NoSuchElementException; {:try_start_44 .. :try_end_47} :catch_48

    .line 1463
    goto :goto_50

    .line 1461
    :catch_48
    move-exception v1

    .line 1462
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AbstractAccessibilityServiceConnection"

    const-string v4, "Failed unregistering death link"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_50
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 1467
    :cond_52
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1468
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1469
    return-void
.end method

.method public resetMagnification(IZ)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1145
    const-string/jumbo v0, "resetMagnification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    .line 1149
    monitor-exit v0

    return v2

    .line 1151
    :cond_35
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1152
    monitor-exit v0

    return v2

    .line 1154
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_60

    .line 1155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1157
    .local v0, "identity":J
    :try_start_44
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1158
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v3

    .line 1159
    .local v3, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetFullscreenMagnification(IZ)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1160
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result v4
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_5b

    if-nez v4, :cond_57

    :cond_56
    const/4 v2, 0x1

    .line 1162
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    return v2

    .line 1162
    .end local v3    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    throw v2

    .line 1154
    .end local v0    # "identity":J
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 929
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";gestureSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sendGesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_2a
    return-void
.end method

.method public setAnimationScale(F)V
    .registers 6
    .param p1, "scale"    # F

    .line 2387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2389
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2390
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    .line 2389
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2391
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2392
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    .line 2391
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2395
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2396
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    .line 2395
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2c

    .line 2398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    nop

    .line 2400
    return-void

    .line 2398
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    throw v2
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 463
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setCacheEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2298
    const-string/jumbo v0, "setCacheEnabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2302
    .local v0, "identity":J
    :try_start_23
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_37

    .line 2303
    :try_start_26
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 2304
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 2305
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_34

    .line 2307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2308
    nop

    .line 2309
    return-void

    .line 2305
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "enabled":Z
    :try_start_36
    throw v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 2307
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "enabled":Z
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2308
    throw v2
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 348
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 349
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 350
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 351
    .local v0, "packageNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 352
    if-eqz v0, :cond_1a

    .line 353
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_1a
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 356
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 359
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3d

    .line 360
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_43

    .line 362
    :cond_3d
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 366
    :cond_43
    :goto_43
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_50

    .line 367
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_56

    .line 369
    :cond_50
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 372
    :goto_56
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5e

    move v1, v2

    goto :goto_5f

    :cond_5e
    move v1, v3

    :goto_5f
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 374
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_69

    move v1, v2

    goto :goto_6a

    :cond_69
    move v1, v3

    :goto_6a
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    .line 376
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_74

    move v1, v2

    goto :goto_75

    :cond_74
    move v1, v3

    :goto_75
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    .line 378
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7f

    move v1, v2

    goto :goto_80

    :cond_7f
    move v1, v3

    :goto_80
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    .line 380
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_8a

    move v1, v2

    goto :goto_8b

    :cond_8a
    move v1, v3

    :goto_8b
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    .line 382
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_95

    move v1, v2

    goto :goto_96

    :cond_95
    move v1, v3

    :goto_96
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 384
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a0

    move v1, v2

    goto :goto_a1

    :cond_a0
    move v1, v3

    :goto_a1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 386
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_ab

    move v1, v2

    goto :goto_ac

    :cond_ab
    move v1, v3

    :goto_ac
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 388
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b6

    move v1, v2

    goto :goto_b7

    :cond_b6
    move v1, v3

    :goto_b7
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 390
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v4, 0x8000

    and-int/2addr v1, v4

    if-eqz v1, :cond_c2

    goto :goto_c3

    :cond_c2
    move v2, v3

    :goto_c3
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 392
    return-void
.end method

.method public setFocusAppearance(II)V
    .registers 5
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 2290
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setFocusAppearance"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    :cond_2a
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setGestureDetectionPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 2277
    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 4
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 1658
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    .line 1659
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setMagnificationCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    .line 1224
    return-void
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1195
    const-string/jumbo v0, "setMagnificationSpec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1196
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 1200
    monitor-exit v0

    return v2

    .line 1202
    :cond_39
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1203
    monitor-exit v0

    return v2

    .line 1205
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_5e

    .line 1207
    .local v1, "identity":J
    :try_start_47
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1208
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v3

    .line 1209
    .local v3, "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    move-result v4
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_58

    .line 1212
    :try_start_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1209
    return v4

    .line 1212
    .end local v3    # "magnificationProcessor":Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    :catchall_58
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    .end local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local p3    # "animate":Z
    throw v3

    .line 1214
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    .restart local p2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .restart local p3    # "animate":Z
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 5
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .line 405
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setOnKeyEventResult"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 409
    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # Z

    .line 2360
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setServiceDetectsGesturesEnabled(IZ)V

    .line 2361
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 432
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 433
    const-string/jumbo v0, "setServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 437
    .local v0, "identity":J
    :try_start_24
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_5f

    .line 441
    :try_start_27
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 442
    .local v3, "oldRequestIme":Z
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 443
    .local v4, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v4, :cond_36

    .line 444
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-virtual {v4, v5, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 445
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_39

    .line 447
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 449
    :goto_39
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 450
    if-nez v3, :cond_4b

    iget-boolean v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-eqz v5, :cond_4b

    .line 451
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_56

    .line 452
    :cond_4b
    if-eqz v3, :cond_56

    iget-boolean v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-nez v5, :cond_56

    .line 453
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 455
    .end local v3    # "oldRequestIme":Z
    .end local v4    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_56
    :goto_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_5c

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    nop

    .line 459
    return-void

    .line 455
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_start_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 457
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_5f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSoftKeyboardCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 1236
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTouchExplorationPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 2286
    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 1671
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1672
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 395
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected svcClientTracingEnabled()Z
    .registers 4

    .line 2325
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method protected svcConnTracingEnabled()Z
    .registers 4

    .line 2334
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1241
    const-string/jumbo v0, "takeScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1244
    .local v0, "currentTimestamp":J
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_42

    sub-long v2, v0, v2

    const-wide/16 v4, 0x14d

    cmp-long v2, v2, v4

    if-gtz v2, :cond_42

    .line 1247
    const/4 v2, 0x3

    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1249
    return-void

    .line 1251
    :cond_42
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 1253
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1254
    :try_start_47
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1255
    const/4 v3, 0x1

    invoke-direct {p0, v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1257
    monitor-exit v2

    return-void

    .line 1260
    :cond_53
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 1264
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_b6

    .line 1266
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 1267
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1270
    return-void

    .line 1275
    :cond_69
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v3, "display"

    .line 1276
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 1277
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 1278
    .local v3, "display":Landroid/view/Display;
    const/4 v4, 0x4

    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_89

    .line 1279
    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_89

    goto :goto_aa

    .line 1285
    :cond_89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1287
    .local v4, "identity":J
    :try_start_8d
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v7

    .line 1296
    invoke-interface {v7}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v7

    .line 1287
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_a5

    .line 1298
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1299
    nop

    .line 1300
    return-void

    .line 1298
    :catchall_a5
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1299
    throw v6

    .line 1280
    .end local v4    # "identity":J
    :cond_aa
    :goto_aa
    invoke-direct {p0, v4, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1282
    return-void

    .line 1261
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "display":Landroid/view/Display;
    :cond_ae
    :try_start_ae
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Services don\'t have the capability of taking the screenshot."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTimestamp":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    .end local p2    # "callback":Landroid/os/RemoteCallback;
    throw v3

    .line 1264
    .restart local v0    # "currentTimestamp":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    .restart local p2    # "callback":Landroid/os/RemoteCallback;
    :catchall_b6
    move-exception v3

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_ae .. :try_end_b8} :catchall_b6

    throw v3
.end method

.method public unbindInputLocked()V
    .registers 2

    .line 1666
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->unbindInputLocked()V

    .line 1667
    return-void
.end method

.method protected wmTracingEnabled()Z
    .registers 4

    .line 2352
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v1, 0x200

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    return v0
.end method
