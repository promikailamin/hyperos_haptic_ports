.class public abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# instance fields
.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public mCaptureFingerprintGestures:Z

.field public mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public mClientBinder:Landroid/os/IBinder;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayTypes:I

.field public mEventDispatchHandler:Landroid/os/Handler;

.field public mEventTypes:I

.field public mFeedbackType:I

.field public mFetchFlags:I

.field public mGenericMotionEventSources:I

.field public final mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field public mIsDefault:Z

.field public mLastAccessibilityButtonCallbackState:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationTimeout:J

.field public mObservedMotionEventSources:I

.field public final mOverlayWindowTokens:Landroid/util/SparseArray;

.field public mOverlays:Ljava/util/List;

.field public mPackageNames:Ljava/util/Set;

.field public final mPendingEvents:Landroid/util/SparseArray;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mReceivedAccessibilityButtonCallbackSinceBind:Z

.field public mRequestAccessibilityButton:Z

.field public mRequestFilterKeyEvents:Z

.field public mRequestImeApis:Z

.field public mRequestMultiFingerGestures:Z

.field public mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

.field public mRequestTakeScreenshotTimestampMs:J

.field public mRequestTouchExplorationMode:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mRetrieveInteractiveWindows:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public mSendMotionEvents:Z

.field public mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mServiceHandlesDoubleTap:Z

.field public final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field public final mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field public mUsesAccessibilityCache:Z

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$Nv4_Qh1fAqCkHZEv5tCu4GdCf0o(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 4

    .line 1621
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1622
    const-string/jumbo v0, "screenshot_status"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1624
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W-j4Xn7yZInUPF9yC9lezdemB3M(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 6

    .line 1599
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    .line 1600
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    .line 1601
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 1603
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1604
    const-string/jumbo v1, "screenshot_status"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1606
    const-string/jumbo v1, "screenshot_hardwareBuffer"

    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1608
    const-string/jumbo v1, "screenshot_colorSpace"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1609
    const-string/jumbo v0, "screenshot_timestamp"

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1609
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1613
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1614
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V

    return-void
.end method

.method public static synthetic $r8$lambda$x2I790QoUft0mqWwii11-yFYn0w(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/RemoteCallback;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->lambda$takeScreenshot$0(Landroid/os/RemoteCallback;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcanCaptureSecureLayers(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canCaptureSecureLayers()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityEventInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 15

    .line 362
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 238
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    .line 363
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 364
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 365
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 366
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 367
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 368
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 369
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 370
    iput-object p11, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 371
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 372
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 373
    iput-object p5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 374
    new-instance p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 375
    iput-object p12, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 376
    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 377
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 378
    const-string/jumbo p1, "platform_compat"

    .line 379
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 378
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 380
    new-instance p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 381
    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 390
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method


# virtual methods
.method public addWindowTokenForDisplay(I)V
    .registers 8

    .line 1683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1685
    :try_start_4
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1687
    const-string v3, "addWindowToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";TYPE_ACCESSIBILITY_OVERLAY;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_48

    .line 1690
    :cond_30
    :goto_30
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, p1, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1692
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_2e

    .line 1693
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1694
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_45

    .line 1696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception p0

    .line 1694
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_2e

    .line 1696
    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    throw p0
.end method

.method public addWindowTokensForAllDisplays()V
    .registers 5

    const/4 v0, 0x0

    .line 1659
    new-array v1, v0, [Landroid/view/Display;

    .line 1660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1662
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_20

    .line 1664
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    :goto_10
    array-length v1, v3

    if-ge v0, v1, :cond_1f

    .line 1667
    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 1668
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokenForDisplay(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    .line 1664
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1665
    throw p0
.end method

.method public attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 8

    .line 2821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2823
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 2830
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    new-instance p1, Landroid/view/SurfaceControl;

    const-string p2, "attachAccessibilityOverlayToDisplay"

    invoke-direct {p1, p3, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 2835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2836
    throw p0
.end method

.method public attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 10

    .line 2847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2849
    :try_start_4
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v3, 0x1

    .line 2850
    invoke-virtual {v2, p3, v3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2851
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 2852
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_47

    .line 2853
    :try_start_17
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 2855
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 2856
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result p2

    .line 2854
    invoke-virtual {v3, v4, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object p2

    if-nez p2, :cond_34

    const/4 p0, 0x2

    .line 2858
    invoke-interface {p4, p0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V

    .line 2860
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_32

    .line 2869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    goto :goto_45

    .line 2863
    :cond_34
    :try_start_34
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p2

    .line 2864
    invoke-interface {p2, p3, p1, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->attachAccessibilityOverlayToWindow(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 2865
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2866
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_32

    .line 2869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2866
    :goto_45
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_32

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 2869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2870
    throw p0
.end method

.method public final bindInputInternal()V
    .registers 4

    .line 2170
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2173
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2174
    const-string v1, "bindInput"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_14
    move-exception v0

    goto :goto_1a

    .line 2176
    :cond_16
    :goto_16
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->bindInput()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_14

    return-void

    .line 2178
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error binding input to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return-void
.end method

.method public bindInputLocked()V
    .registers 1

    .line 2001
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->bindInputLocked()V

    return-void
.end method

.method public final canCaptureSecureLayers()Z
    .registers 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1630
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1631
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public canReceiveEventsLocked()Z
    .registers 2

    .line 479
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final clientWantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1865
    :cond_8
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1867
    :goto_12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    .line 1868
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v3

    if-nez v3, :cond_22

    if-nez v0, :cond_22

    return v1

    .line 1873
    :cond_22
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isAccessibilityDataSensitive()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2f

    return v1

    .line 1878
    :cond_2f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1879
    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_39

    return v1

    .line 1883
    :cond_39
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1884
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1885
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    .line 1887
    :goto_4b
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_59

    :cond_58
    return v1

    :cond_59
    :goto_59
    return v2
.end method

.method public connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .registers 3

    .line 2890
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectBluetoothBrailleDisplay_enforcePermission()V

    .line 2891
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .registers 3

    .line 2898
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createImeSessionInternal()V
    .registers 1

    .line 0
    return-void
.end method

.method public createImeSessionLocked()V
    .registers 1

    .line 1992
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->createImeSessionLocked()V

    return-void
.end method

.method public detachAllOverlays()V
    .registers 5

    .line 2874
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2875
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 2876
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 2877
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2878
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    goto :goto_b

    .line 2881
    :cond_25
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2882
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 2883
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";gestureSteps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";displayId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dispatchGesture"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1637
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "AbstractAccessibilityServiceConnection"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1638
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1639
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service[label="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 1640
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1639
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1641
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", feedbackType"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 1642
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1641
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1643
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", capabilities="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1644
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 1645
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1644
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1646
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1647
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", requestA11yBtn="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1648
    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1649
    monitor-exit p1

    return-void

    :catchall_b3
    move-exception p0

    monitor-exit p1
    :try_end_b5
    .catchall {:try_start_e .. :try_end_b5} :catchall_b3

    throw p0
.end method

.method public final ensureWindowsAvailableTimedLocked(I)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_45

    .line 2257
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_45

    .line 2262
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2264
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 2267
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_45

    .line 2272
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2273
    :catch_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_45

    .line 2274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_3f

    goto :goto_45

    .line 2280
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_44} :catch_28

    goto :goto_28

    :cond_45
    :goto_45
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move/from16 v3, p4

    move/from16 v9, p6

    move-wide/from16 v5, p7

    move-object/from16 v12, p9

    .line 833
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 834
    const-string v1, "findAccessibilityNodeInfoByAccessibilityId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessibilityWindowId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";accessibilityNodeId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ";interactionId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";callback="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";flags="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";interrogatingTid="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ";arguments="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_5d
    move/from16 v4, p1

    move-object/from16 v10, p5

    .line 842
    :goto_61
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 843
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v11, 0x1

    .line 844
    :try_start_69
    iput-boolean v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 845
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_77

    .line 846
    monitor-exit v2

    return-object v13

    :catchall_74
    move-exception v0

    goto/16 :goto_1a0

    .line 848
    :cond_77
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v4

    .line 849
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v14, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 851
    invoke-interface {v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v14

    .line 850
    invoke-virtual {v11, v14, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v11

    if-nez v11, :cond_8b

    .line 853
    monitor-exit v2

    return-object v13

    .line 855
    :cond_8b
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v14, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 856
    invoke-interface {v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v14

    .line 855
    invoke-virtual {v11, v14, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v14

    if-nez v14, :cond_9b

    .line 858
    monitor-exit v2

    return-object v13

    .line 861
    :cond_9b
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v11, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_a8

    .line 863
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v11, v13

    goto :goto_a9

    :cond_a8
    move-object v11, v1

    .line 866
    :goto_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_69 .. :try_end_aa} :catchall_74

    .line 868
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 869
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [F

    .line 870
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 871
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_c0

    return-object v13

    :cond_c0
    move v2, v4

    .line 874
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v19, v10

    move-object v10, v1

    move-object/from16 v1, v19

    .line 875
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 878
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 879
    const-string v2, "findAccessibilityNodeInfoByAccessibilityId"

    move-object/from16 v18, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/2addr v7, v9

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-static {v15}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 879
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    :cond_13b
    move-object/from16 v18, v13

    .line 886
    :goto_13d
    :try_start_13d
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_143} :catch_178
    .catchall {:try_start_13d .. :try_end_143} :catchall_175

    or-int/2addr v7, v9

    move-object v13, v0

    move-object v0, v2

    move-wide v8, v5

    move v6, v7

    move-object v5, v1

    move v7, v4

    move-wide/from16 v1, p2

    move v4, v3

    move-object v3, v11

    move-object v11, v15

    :try_start_14f
    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 890
    iget-object v0, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 891
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 890
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_160} :catch_18d
    .catchall {:try_start_14f .. :try_end_160} :catchall_173

    .line 897
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_172

    .line 899
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 900
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    :cond_172
    return-object v0

    :catchall_173
    move-exception v0

    goto :goto_17a

    :catchall_175
    move-exception v0

    move-object v3, v11

    goto :goto_17a

    :catch_178
    move-object v3, v11

    goto :goto_18d

    .line 897
    :goto_17a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_18c

    .line 899
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 900
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    .line 902
    :cond_18c
    throw v0

    .line 897
    :catch_18d
    :goto_18d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_19f

    .line 899
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 900
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    :cond_19f
    return-object v18

    .line 866
    :goto_1a0
    :try_start_1a0
    monitor-exit v2
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_74

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v3, p5

    move-wide/from16 v5, p7

    .line 757
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 758
    const-string v1, "findAccessibilityNodeInfosByText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessibilityWindowId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";accessibilityNodeId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ";text="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";interactionId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";callback="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";interrogatingTid="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v4, p1

    move-object/from16 v10, p6

    .line 765
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 766
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v11, 0x1

    .line 767
    :try_start_5f
    iput-boolean v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 768
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_6d

    .line 769
    monitor-exit v2

    return-object v13

    :catchall_6a
    move-exception v0

    goto/16 :goto_194

    .line 771
    :cond_6d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v4

    .line 772
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 774
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 773
    invoke-virtual {v11, v12, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v11

    if-nez v11, :cond_81

    .line 776
    monitor-exit v2

    return-object v13

    .line 778
    :cond_81
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 779
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 778
    invoke-virtual {v11, v12, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v14

    if-nez v14, :cond_91

    .line 781
    monitor-exit v2

    return-object v13

    .line 784
    :cond_91
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v11, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_9e

    .line 786
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v11, v13

    goto :goto_9f

    :cond_9e
    move-object v11, v1

    .line 789
    :goto_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_5f .. :try_end_a0} :catchall_6a

    .line 791
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 792
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, [F

    .line 793
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 794
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b7

    return-object v13

    :cond_b7
    move v2, v4

    .line 797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, v10

    .line 798
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 801
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 802
    const-string v2, "findAccessibilityNodeInfosByText"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 802
    invoke-virtual {v0, v2, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    :cond_12d
    move-object/from16 v18, v13

    .line 808
    :goto_12f
    :try_start_12f
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_135} :catch_16c
    .catchall {:try_start_12f .. :try_end_135} :catchall_169

    move-wide/from16 v19, v5

    move v5, v3

    move-object v3, v9

    move-wide/from16 v9, v19

    move-object v13, v0

    move-object v6, v1

    move-object v0, v2

    move v8, v4

    move-object v4, v11

    move-object v11, v15

    move-wide/from16 v1, p2

    :try_start_143
    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 811
    iget-object v0, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 812
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 811
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_154} :catch_181
    .catchall {:try_start_143 .. :try_end_154} :catchall_167

    .line 818
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_166

    .line 820
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 821
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_166
    return-object v0

    :catchall_167
    move-exception v0

    goto :goto_16e

    :catchall_169
    move-exception v0

    move-object v4, v11

    goto :goto_16e

    :catch_16c
    move-object v4, v11

    goto :goto_181

    .line 818
    :goto_16e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_180

    .line 820
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 821
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 823
    :cond_180
    throw v0

    .line 818
    :catch_181
    :goto_181
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_193

    .line 820
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 821
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_193
    return-object v18

    .line 789
    :goto_194
    :try_start_194
    monitor-exit v2
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_6a

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v3, p5

    move-wide/from16 v5, p7

    .line 680
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 681
    const-string v1, "findAccessibilityNodeInfosByViewId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessibilityWindowId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";accessibilityNodeId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ";viewIdResName="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";interactionId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";callback="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";interrogatingTid="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v4, p1

    move-object/from16 v10, p6

    .line 689
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 690
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v11, 0x1

    .line 691
    :try_start_5f
    iput-boolean v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 692
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_6d

    .line 693
    monitor-exit v2

    return-object v13

    :catchall_6a
    move-exception v0

    goto/16 :goto_194

    .line 695
    :cond_6d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v4

    .line 696
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 698
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 697
    invoke-virtual {v11, v12, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v11

    if-nez v11, :cond_81

    .line 700
    monitor-exit v2

    return-object v13

    .line 702
    :cond_81
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 703
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 702
    invoke-virtual {v11, v12, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v14

    if-nez v14, :cond_91

    .line 705
    monitor-exit v2

    return-object v13

    .line 708
    :cond_91
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v11, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_9e

    .line 710
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v11, v13

    goto :goto_9f

    :cond_9e
    move-object v11, v1

    .line 713
    :goto_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_5f .. :try_end_a0} :catchall_6a

    .line 715
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 716
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, [F

    .line 717
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 718
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b7

    return-object v13

    :cond_b7
    move v2, v4

    .line 721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, v10

    .line 722
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 725
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 726
    const-string v2, "findAccessibilityNodeInfosByViewId"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 726
    invoke-virtual {v0, v2, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    :cond_12d
    move-object/from16 v18, v13

    .line 732
    :goto_12f
    :try_start_12f
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_135} :catch_16c
    .catchall {:try_start_12f .. :try_end_135} :catchall_169

    move-wide/from16 v19, v5

    move v5, v3

    move-object v3, v9

    move-wide/from16 v9, v19

    move-object v13, v0

    move-object v6, v1

    move-object v0, v2

    move v8, v4

    move-object v4, v11

    move-object v11, v15

    move-wide/from16 v1, p2

    :try_start_143
    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 735
    iget-object v0, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 736
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 735
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_154} :catch_181
    .catchall {:try_start_143 .. :try_end_154} :catchall_167

    .line 742
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_166

    .line 744
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 745
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_166
    return-object v0

    :catchall_167
    move-exception v0

    goto :goto_16e

    :catchall_169
    move-exception v0

    move-object v4, v11

    goto :goto_16e

    :catch_16c
    move-object v4, v11

    goto :goto_181

    .line 742
    :goto_16e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_180

    .line 744
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 745
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 747
    :cond_180
    throw v0

    .line 742
    :catch_181
    :goto_181
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_193

    .line 744
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 745
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_193
    return-object v18

    .line 713
    :goto_194
    :try_start_194
    monitor-exit v2
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_6a

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move/from16 v3, p5

    move-wide/from16 v5, p7

    .line 912
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 913
    const-string v2, "findFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "accessibilityWindowId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";accessibilityNodeId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ";focusType="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";interactionId="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";callback="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";interrogatingTid="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_53
    move-object/from16 v10, p6

    .line 921
    :goto_55
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 922
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 923
    :try_start_5c
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_68

    .line 924
    monitor-exit v4

    return-object v13

    :catchall_65
    move-exception v0

    goto/16 :goto_18f

    .line 926
    :cond_68
    invoke-virtual {v0, v1, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v1

    .line 928
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 930
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 929
    invoke-virtual {v11, v12, v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v11

    if-nez v11, :cond_7c

    .line 932
    monitor-exit v4

    return-object v13

    .line 934
    :cond_7c
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 935
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 934
    invoke-virtual {v11, v12, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v14

    if-nez v14, :cond_8c

    .line 937
    monitor-exit v4

    return-object v13

    .line 940
    :cond_8c
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v11, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_99

    .line 942
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    move-object v11, v13

    goto :goto_9a

    :cond_99
    move-object v11, v2

    .line 945
    :goto_9a
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_5c .. :try_end_9b} :catchall_65

    .line 947
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v2

    .line 948
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, [F

    .line 949
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 950
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_b2

    return-object v13

    .line 953
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move v2, v1

    move-object v1, v10

    .line 954
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 956
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 957
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 958
    const-string v2, "findFocus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 958
    invoke-virtual {v0, v2, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12a

    :cond_128
    move-object/from16 v18, v13

    .line 965
    :goto_12a
    :try_start_12a
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_130} :catch_167
    .catchall {:try_start_12a .. :try_end_130} :catchall_164

    move-wide/from16 v19, v5

    move v5, v3

    move v3, v9

    move-wide/from16 v9, v19

    move-object v13, v0

    move-object v6, v1

    move-object v0, v2

    move v8, v4

    move-object v4, v11

    move-object v11, v15

    move-wide/from16 v1, p2

    :try_start_13e
    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 968
    iget-object v0, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 969
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 968
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_14f} :catch_17c
    .catchall {:try_start_13e .. :try_end_14f} :catchall_162

    .line 975
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_161

    .line 977
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 978
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_161
    return-object v0

    :catchall_162
    move-exception v0

    goto :goto_169

    :catchall_164
    move-exception v0

    move-object v4, v11

    goto :goto_169

    :catch_167
    move-object v4, v11

    goto :goto_17c

    .line 975
    :goto_169
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_17b

    .line 977
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 978
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 980
    :cond_17b
    throw v0

    .line 975
    :catch_17c
    :goto_17c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_18e

    .line 977
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 978
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_18e
    return-object v18

    .line 945
    :goto_18f
    :try_start_18f
    monitor-exit v4
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_65

    throw v0
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move/from16 v3, p5

    move-wide/from16 v5, p7

    .line 990
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 991
    const-string v1, "focusSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessibilityWindowId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";accessibilityNodeId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ";direction="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";interactionId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";callback="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ";interrogatingTid="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v4, p1

    move-object/from16 v10, p6

    .line 999
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1000
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1001
    :try_start_5e
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_6a

    .line 1002
    monitor-exit v2

    return-object v13

    :catchall_67
    move-exception v0

    goto/16 :goto_191

    .line 1004
    :cond_6a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v4

    .line 1005
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1007
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 1006
    invoke-virtual {v11, v12, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v11

    if-nez v11, :cond_7e

    .line 1009
    monitor-exit v2

    return-object v13

    .line 1011
    :cond_7e
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1012
    invoke-interface {v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v12

    .line 1011
    invoke-virtual {v11, v12, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v14

    if-nez v14, :cond_8e

    .line 1014
    monitor-exit v2

    return-object v13

    .line 1017
    :cond_8e
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v11, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 1019
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v11, v13

    goto :goto_9c

    :cond_9b
    move-object v11, v1

    .line 1022
    :goto_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_5e .. :try_end_9d} :catchall_67

    .line 1024
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 1025
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, [F

    .line 1026
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 1027
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b4

    return-object v13

    :cond_b4
    move v2, v4

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, v10

    .line 1031
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 1033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1034
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 1035
    const-string v2, "focusSearch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1035
    invoke-virtual {v0, v2, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    :cond_12a
    move-object/from16 v18, v13

    .line 1042
    :goto_12c
    :try_start_12c
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    iget v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_132} :catch_169
    .catchall {:try_start_12c .. :try_end_132} :catchall_166

    move-wide/from16 v19, v5

    move v5, v3

    move v3, v9

    move-wide/from16 v9, v19

    move-object v13, v0

    move-object v6, v1

    move-object v0, v2

    move v8, v4

    move-object v4, v11

    move-object v11, v15

    move-wide/from16 v1, p2

    :try_start_140
    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 1045
    iget-object v0, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1046
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 1045
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_151} :catch_17e
    .catchall {:try_start_140 .. :try_end_151} :catchall_164

    .line 1052
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_163

    .line 1054
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 1055
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_163
    return-object v0

    :catchall_164
    move-exception v0

    goto :goto_16b

    :catchall_166
    move-exception v0

    move-object v4, v11

    goto :goto_16b

    :catch_169
    move-object v4, v11

    goto :goto_17e

    .line 1052
    :goto_16b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_17d

    .line 1054
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 1055
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 1057
    :cond_17d
    throw v0

    .line 1052
    :catch_17e
    :goto_17e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_190

    .line 1054
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 1055
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    :cond_190
    return-object v18

    .line 1022
    :goto_191
    :try_start_191
    monitor-exit v2
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_67

    throw v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 1

    .line 578
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getCapabilities()I
    .registers 1

    .line 508
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result p0

    return p0
.end method

.method public getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 2

    .line 2214
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2216
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 2403
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1240
    const-string v0, "getCurrentMagnificationRegion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_1f
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1245
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p0

    goto :goto_4a

    .line 1247
    :cond_2d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1248
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_2b

    .line 1251
    :try_start_37
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1252
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1251
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_45

    .line 1255
    :try_start_40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v1

    :catchall_45
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    throw p0

    .line 1257
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_2b

    throw p0
.end method

.method public getInstalledAndEnabledServices()Ljava/util/List;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMagnificationCenterX(I)F
    .registers 7

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1264
    const-string v0, "getMagnificationCenterX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 p0, 0x0

    .line 1268
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    goto :goto_48

    .line 1270
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1271
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_28

    .line 1274
    :try_start_34
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1275
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1274
    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterX(IZ)F

    move-result p0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_43

    .line 1277
    :try_start_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_43
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    throw p0

    .line 1279
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_28

    throw p0
.end method

.method public getMagnificationCenterY(I)F
    .registers 7

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1286
    const-string v0, "getMagnificationCenterY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 p0, 0x0

    .line 1290
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    goto :goto_48

    .line 1292
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1293
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_28

    .line 1296
    :try_start_34
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1297
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1296
    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterY(IZ)F

    move-result p0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_43

    .line 1299
    :try_start_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_43
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    throw p0

    .line 1301
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_28

    throw p0
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .registers 5

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1177
    const-string v0, "getMagnificationConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 p0, 0x0

    .line 1181
    monitor-exit v0

    return-object p0

    :catchall_28
    move-exception p0

    goto :goto_42

    .line 1183
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_28

    .line 1184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1186
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3d

    .line 1188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw p0

    .line 1183
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_28

    throw p0
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1215
    const-string v0, "getMagnificationRegion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_1f
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1220
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p0

    goto :goto_4a

    .line 1222
    :cond_2d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1223
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_2b

    .line 1226
    :try_start_37
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1227
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1226
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_45

    .line 1230
    :try_start_40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v1

    :catchall_45
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1231
    throw p0

    .line 1232
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_2b

    throw p0
.end method

.method public getMagnificationScale(I)F
    .registers 5

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1196
    const-string v0, "getMagnificationScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2b

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1200
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    goto :goto_43

    .line 1202
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_29

    .line 1203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1205
    :try_start_30
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getScale(I)F

    move-result p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    .line 1207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    throw p0

    .line 1202
    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_29

    throw p0
.end method

.method public getOverlayWindowToken(I)Landroid/os/IBinder;
    .registers 5

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1748
    const-string v0, "getOverlayWindowToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_30

    .line 1753
    :try_start_23
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_32

    .line 1755
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1756
    throw p0

    .line 1757
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_30

    throw p0
.end method

.method public getRelevantEventTypes()I
    .registers 2

    .line 512
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_a

    :cond_8
    const/16 v0, 0x20

    .line 513
    :goto_a
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 499
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 500
    const-string v0, "getServiceInfo"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_10
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 504
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .registers 3

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1135
    const-string v0, "getSystemActions"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1139
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_30

    .line 1141
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1a

    .line 1142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1144
    :try_start_21
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->getSystemActions()Ljava/util/List;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2b

    .line 1146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    throw p0

    .line 1141
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1a

    throw p0
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7

    .line 636
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 637
    const-string v0, "getWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    .line 641
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 642
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    .line 641
    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowId(II)I

    move-result v0

    .line 644
    :cond_2c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_2f
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    .line 648
    monitor-exit v1

    return-object v2

    :catchall_3b
    move-exception p0

    goto :goto_76

    .line 650
    :cond_3d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 651
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 653
    monitor-exit v1

    return-object v2

    .line 655
    :cond_47
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 656
    monitor-exit v1

    return-object v2

    .line 658
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_3b

    .line 660
    :try_start_55
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 661
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 663
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    .line 664
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_6b

    .line 669
    :try_start_66
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object p1

    :catchall_6b
    move-exception p0

    goto :goto_72

    :cond_6d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object v2

    :goto_72
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    throw p0

    .line 671
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_3b

    throw p0
.end method

.method public getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .registers 5

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1770
    const-string v0, "getWindowIdForLeashToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2f

    .line 1775
    :try_start_24
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result p0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_31

    .line 1777
    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_36

    :catchall_31
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1778
    throw p0

    .line 1779
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_2f

    throw p0
.end method

.method public final getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .registers 2

    .line 2016
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .registers 10

    .line 587
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 588
    const-string v0, "getWindows"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 592
    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception p0

    goto :goto_6e

    .line 594
    :cond_1b
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 595
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 597
    monitor-exit v0

    return-object v2

    .line 599
    :cond_25
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 600
    monitor-exit v0

    return-object v2

    .line 603
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_19

    .line 605
    :try_start_33
    new-instance v3, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 607
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayListLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 609
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_65

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v5, :cond_65

    .line 612
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 613
    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 615
    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_62

    .line 618
    invoke-virtual {v3, v7, v8}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_33 .. :try_end_5f} :catchall_60

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_6a

    :cond_62
    :goto_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 624
    :cond_65
    :try_start_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v3

    :goto_6a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    throw p0

    .line 626
    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_19

    throw p0
.end method

.method public final getWindowsByDisplayLocked(I)Ljava/util/List;
    .registers 7

    .line 2385
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2386
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2390
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2b

    .line 2393
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2395
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 2396
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 2397
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    return-object v0
.end method

.method public abstract hasRightsToCurrentUserLocked()Z
.end method

.method public intConnTracingEnabled()Z
    .registers 3

    .line 2702
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x10

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public isConnectedLocked()Z
    .registers 1

    .line 1811
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 5

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1154
    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    return v1

    .line 1159
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1161
    :try_start_22
    invoke-interface {p0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1162
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1163
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result p0
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_38

    if-eqz p0, :cond_3a

    const/4 v1, 0x1

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_42

    .line 1168
    :cond_3a
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    throw p0
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 2

    .line 1398
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMultiFingerGesturesEnabled()Z
    .registers 1

    .line 2596
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 1

    .line 2604
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    return p0
.end method

.method public isServiceDetectsGesturesEnabled(I)Z
    .registers 3

    .line 2731
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2732
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .registers 1

    .line 2592
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    return p0
.end method

.method public isTwoFingerPassthroughEnabled()Z
    .registers 1

    .line 2600
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    return p0
.end method

.method public final synthetic lambda$takeScreenshot$0(Landroid/os/RemoteCallback;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;I)V
    .registers 4

    if-eqz p2, :cond_8

    if-nez p3, :cond_8

    .line 1571
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotSuccess(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    return-void

    :cond_8
    const/4 p2, 0x4

    .line 1573
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    .line 2666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2668
    :try_start_8
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    move-wide/from16 v9, p4

    invoke-interface {v4, v9, v10}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2669
    const-string v4, "call_stack"

    const-class v5, Ljava/util/ArrayList;

    .line 2670
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2672
    const-string v5, "ignore_call_stack"

    const-class v6, Ljava/util/HashSet;

    .line 2673
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/HashSet;

    .line 2675
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2676
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/StackTraceElement;

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    .line 2675
    invoke-interface/range {v5 .. v17}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception v0

    goto :goto_4e

    .line 2679
    :cond_4a
    :goto_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2680
    throw v0
.end method

.method public logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2706
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2688
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2697
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2715
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 5

    .line 2081
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    goto :goto_43

    :cond_9
    const/4 v0, 0x1

    .line 2085
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 2086
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 2090
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2091
    const-string/jumbo v1, "onAccessibilityButtonAvailabilityChanged"

    .line 2092
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 2091
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_25
    move-exception p1

    goto :goto_2b

    .line 2094
    :cond_27
    :goto_27
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2a} :catch_25

    return-void

    .line 2096
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending accessibility button availability change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 2

    .line 1988
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    return-void
.end method

.method public final notifyAccessibilityButtonClickedInternal(I)V
    .registers 5

    .line 2066
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2069
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2070
    const-string/jumbo v1, "onAccessibilityButtonClicked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_17
    move-exception p1

    goto :goto_1d

    .line 2072
    :cond_19
    :goto_19
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_17

    return-void

    .line 2074
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending accessibility button click to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 2

    .line 1984
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked(I)V

    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9

    .line 1815
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1816
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1818
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->clientWantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1819
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v3, :cond_17

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 1822
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_69

    .line 1825
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1826
    monitor-exit v0

    return-void

    .line 1831
    :cond_2a
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1833
    iget-wide v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_58

    const/16 v3, 0x800

    if-eq v1, v3, :cond_58

    .line 1836
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 1837
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v3, :cond_51

    .line 1839
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1840
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1842
    :cond_51
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_5e

    .line 1845
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1847
    :goto_5e
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 1849
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1850
    monitor-exit v0

    return-void

    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_1e

    throw p0
.end method

.method public final notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 7

    .line 1899
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v1, :cond_c

    .line 1905
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_88

    :cond_c
    if-nez p2, :cond_1f

    .line 1928
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    if-nez p2, :cond_1a

    .line 1930
    monitor-exit v0

    return-void

    .line 1932
    :cond_1a
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1934
    :cond_1f
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1935
    iget p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_31

    :cond_2d
    const/4 p1, 0x0

    .line 1937
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :goto_31
    const/4 p1, 0x1

    .line 1939
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1940
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_9

    .line 1943
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1944
    const-string/jumbo p1, "onAccessibilityEvent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :catchall_57
    move-exception p0

    goto :goto_84

    :catch_59
    move-exception p0

    goto :goto_62

    .line 1946
    :cond_5b
    :goto_5b
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_5e} :catch_59
    .catchall {:try_start_36 .. :try_end_5e} :catchall_57

    .line 1953
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    .line 1951
    :goto_62
    :try_start_62
    const-string p1, "AbstractAccessibilityServiceConnection"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during sending "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_57

    .line 1953
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    :goto_84
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1954
    throw p0

    .line 1940
    :goto_88
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_9

    throw p0
.end method

.method public final notifyClearAccessibilityCacheInternal()V
    .registers 4

    .line 2137
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2140
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2141
    const-string v1, "clearAccessibilityCache"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    :cond_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 2145
    const-string v0, "AbstractAccessibilityServiceConnection"

    const-string v1, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return-void
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 2

    .line 1969
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 3

    .line 1959
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v0, 0x1

    .line 1960
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->copyForAsync()Landroid/accessibilityservice/AccessibilityGestureEvent;

    move-result-object p1

    .line 1959
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1960
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 5

    .line 2106
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2109
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2110
    const-string/jumbo v1, "onGesture"

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_17
    move-exception v0

    goto :goto_1d

    .line 2112
    :cond_19
    :goto_19
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_17

    return-void

    .line 2114
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during sending gesture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractAccessibilityServiceConnection"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    return-void
.end method

.method public final notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 8

    .line 2030
    const-string v0, ", "

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 2033
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2034
    const-string/jumbo v2, "onMagnificationChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2034
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :catch_31
    move-exception p1

    goto :goto_37

    .line 2037
    :cond_33
    :goto_33
    invoke-interface {v1, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_36} :catch_31

    return-void

    .line 2039
    :goto_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending magnification changes to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    .line 1975
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1976
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public final notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 5

    .line 2049
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2052
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2053
    const-string/jumbo v1, "onSoftKeyboardShowModeChanged"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_17
    move-exception p1

    goto :goto_1d

    .line 2055
    :cond_19
    :goto_19
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_17

    return-void

    .line 2057
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 2

    .line 1980
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method public final notifySystemActionsChangedInternal()V
    .registers 4

    .line 2123
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2126
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2127
    const-string/jumbo v1, "onSystemActionsChanged"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_15
    move-exception v0

    goto :goto_1b

    .line 2129
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSystemActionsChanged()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_15

    return-void

    .line 2131
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending system actions change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return-void
.end method

.method public notifySystemActionsChangedLocked()V
    .registers 2

    .line 1964
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 7

    .line 1722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1724
    const-string v2, "addWindowToken"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 1725
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";true;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1724
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 1730
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_47

    .line 1731
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1732
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_44

    .line 1734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    .line 1732
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 1734
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    throw p0
.end method

.method public onDoubleTap(I)V
    .registers 4

    .line 2773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2775
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTap(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2777
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2778
    throw p0
.end method

.method public onDoubleTapAndHold(I)V
    .registers 4

    .line 2784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2786
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTapAndHold(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2788
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2789
    throw p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 7

    .line 395
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_45

    .line 398
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    return v1

    .line 402
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 406
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 407
    const-string/jumbo v0, "onKeyEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_3e
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {p0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_43} :catch_45

    const/4 p0, 0x1

    return p0

    :catch_45
    :cond_45
    :goto_45
    return v1
.end method

.method public onRemoved()V
    .registers 5

    const/4 v0, 0x0

    .line 1701
    new-array v1, v0, [Landroid/view/Display;

    .line 1702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1704
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_23

    .line 1706
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1708
    :goto_10
    array-length v1, v3

    if-ge v0, v1, :cond_1f

    .line 1709
    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 1710
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1712
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->detachAllOverlays()V

    return-void

    :catchall_23
    move-exception p0

    .line 1706
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    throw p0
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 24

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1086
    const-string/jumbo v1, "performAccessibilityAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";action="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";arguments="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ";interactionId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";callback="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ";interrogatingTid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p8

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_5a
    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    .line 1093
    :goto_66
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1094
    :try_start_69
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_74

    .line 1095
    monitor-exit v1

    return v12

    :catchall_72
    move-exception v0

    goto :goto_a6

    .line 1097
    :cond_74
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v2

    .line 1098
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v13, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1099
    invoke-interface {v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v13

    .line 1098
    invoke-virtual {v3, v13, p0, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_88

    .line 1100
    monitor-exit v1

    return v12

    .line 1102
    :cond_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_72

    .line 1103
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_92

    return v12

    .line 1106
    :cond_92
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1107
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    iget v9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-object v0, p0

    move-wide v3, v4

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, p7

    .line 1106
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v0

    return v0

    .line 1102
    :goto_a6
    :try_start_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_72

    throw v0
.end method

.method public final performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    .line 2301
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2302
    :try_start_b
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    const/4 v11, 0x0

    if-nez v5, :cond_19

    .line 2304
    monitor-exit v4

    return v11

    :catchall_16
    move-exception v0

    goto/16 :goto_101

    :cond_19
    const/16 v6, 0x40

    if-eq v3, v6, :cond_24

    const/16 v6, 0x80

    if-ne v3, v6, :cond_22

    goto :goto_24

    :cond_22
    move v6, v11

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v6, 0x1

    :goto_25
    if-nez v6, :cond_2e

    .line 2309
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    .line 2312
    :goto_2f
    iget-object v8, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2313
    invoke-virtual {v8, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v8

    if-eqz v8, :cond_4d

    .line 2314
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-object v8, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2315
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v8

    if-eqz v8, :cond_4d

    if-nez v6, :cond_4d

    .line 2317
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    .line 2319
    :cond_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_16

    .line 2320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2325
    :try_start_56
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v6, 0x3

    invoke-virtual {v4, v9, v10, v6, v11}, Landroid/os/PowerManager;->userActivity(JII)V

    const/16 v4, 0x10

    if-eq v3, v4, :cond_68

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6d

    .line 2329
    :cond_68
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->notifyOutsideTouch(II)V

    :cond_6d
    if-eqz v7, :cond_7b

    .line 2332
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerInternal;->requestWindowFocus(Landroid/os/IBinder;)V

    goto :goto_7b

    :catchall_75
    move-exception v0

    goto/16 :goto_f9

    :catch_78
    move v15, v11

    goto/16 :goto_fd

    .line 2334
    :cond_7b
    :goto_7b
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2335
    const-string/jumbo v1, "performAccessibilityAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v6, p3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_cb} :catch_78
    .catchall {:try_start_56 .. :try_end_cb} :catchall_75

    move v15, v11

    const/16 v16, 0x1

    move-wide/from16 v11, p10

    :try_start_d0
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_db
    move-wide/from16 v6, p3

    move-object/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move v15, v11

    const/16 v16, 0x1

    move-wide/from16 v11, p10

    .line 2340
    :goto_e8
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    move-wide v1, v6

    move v5, v9

    move-object v6, v10

    move-wide v9, v11

    move/from16 v7, p9

    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_f5} :catch_fd
    .catchall {:try_start_d0 .. :try_end_f5} :catchall_75

    .line 2349
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :goto_f9
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2350
    throw v0

    .line 2349
    :catch_fd
    :goto_fd
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    .line 2319
    :goto_101
    :try_start_101
    monitor-exit v4
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_16

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 5

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1115
    const-string/jumbo v0, "performGlobalAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1118
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 p0, 0x0

    .line 1119
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    goto :goto_42

    .line 1121
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_29

    .line 1122
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1125
    :try_start_33
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    move-result p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3d

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    throw p0

    .line 1121
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_29

    throw p0
.end method

.method public final replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 16

    .line 2369
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2370
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v0

    .line 2371
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2372
    :try_start_9
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2373
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2374
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result p0

    if-eqz p0, :cond_19

    if-nez v0, :cond_1b

    :cond_19
    move-object v3, p1

    goto :goto_2d

    .line 2378
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2a

    .line 2379
    new-instance v2, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 2380
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    return-object v2

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_2f

    .line 2376
    :goto_2d
    :try_start_2d
    monitor-exit v1

    return-object v3

    .line 2378
    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    throw p0
.end method

.method public requestDelegating(I)V
    .registers 4

    .line 2762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2764
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDelegating(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2767
    throw p0
.end method

.method public requestDragging(II)V
    .registers 5

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2753
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDragging(II)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2756
    throw p0
.end method

.method public requestTouchExploration(I)V
    .registers 4

    .line 2740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2742
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestTouchExploration(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    throw p0
.end method

.method public resetCurrentMagnification(IZ)Z
    .registers 6

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1333
    const-string/jumbo v0, "resetCurrentMagnification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1337
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 1338
    monitor-exit v0

    return v2

    :catchall_31
    move-exception p0

    goto :goto_60

    .line 1340
    :cond_33
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1341
    monitor-exit v0

    return v2

    .line 1343
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_31

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    :try_start_42
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1347
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetCurrentMagnification(IZ)Z

    move-result p2

    if-nez p2, :cond_57

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result p0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_55

    if-nez p0, :cond_58

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_5c

    :cond_57
    :goto_57
    const/4 v2, 0x1

    .line 1351
    :cond_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    throw p0

    .line 1343
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_31

    throw p0
.end method

.method public resetLocked()V
    .registers 5

    .line 1783
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->resetDynamicallyConfigurableProperties()V

    .line 1784
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    const/4 v0, 0x0

    .line 1788
    :try_start_f
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_3e

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1790
    const-string v1, "init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    :cond_37
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3e} :catch_3e

    .line 1797
    :catch_3e
    :cond_3e
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 1799
    :try_start_43
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_46
    .catch Ljava/util/NoSuchElementException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4e

    .line 1801
    :catch_47
    const-string v1, "AbstractAccessibilityServiceConnection"

    const-string v3, "Failed unregistering death link"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :goto_4e
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 1806
    :cond_50
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1807
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    return-void
.end method

.method public resetMagnification(IZ)Z
    .registers 6

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1308
    const-string/jumbo v0, "resetMagnification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 1312
    monitor-exit v0

    return v2

    :catchall_31
    move-exception p0

    goto :goto_60

    .line 1314
    :cond_33
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1315
    monitor-exit v0

    return v2

    .line 1317
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_31

    .line 1318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1320
    :try_start_42
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1321
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    .line 1322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetFullscreenMagnification(IZ)Z

    move-result p2

    if-nez p2, :cond_57

    .line 1323
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result p0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_55

    if-nez p0, :cond_58

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_5c

    :cond_57
    :goto_57
    const/4 v2, 0x1

    .line 1325
    :cond_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    throw p0

    .line 1317
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_31

    throw p0
.end method

.method public resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_15

    .line 2233
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(I)I

    move-result p1

    .line 2239
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    invoke-virtual {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    return p1
.end method

.method public final resolveAccessibilityWindowIdLocked(I)I
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1d

    .line 2221
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 2222
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p1

    .line 2223
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, -0x1

    return p0

    :cond_1d
    return p1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 5

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";gestureSteps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sendGesture"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    .registers 4

    .line 1620
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;-><init>(ILandroid/os/RemoteCallback;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1625
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1620
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendScreenshotSuccess(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .registers 4

    .line 1598
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;-><init>(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1615
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1598
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnimationScale(F)V
    .registers 6

    .line 2798
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 2799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2801
    :try_start_7
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2802
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    .line 2801
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2803
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2804
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    .line 2803
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2807
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2808
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "animator_duration_scale"

    .line 2807
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2e

    .line 2810
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2811
    throw p0
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method public setCacheEnabled(Z)V
    .registers 5

    .line 2648
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2649
    const-string/jumbo v0, "setCacheEnabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2653
    :try_start_21
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    .line 2654
    :try_start_24
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 2655
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 2656
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 2658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    .line 2656
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 2658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2659
    throw p0
.end method

.method public setDisplayTypes(I)V
    .registers 2

    .line 630
    iput p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5

    .line 417
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 418
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 419
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz v0, :cond_1a

    .line 422
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_1a
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 425
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 426
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getMotionEventSources()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    .line 427
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getObservedMotionEventSources()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mObservedMotionEventSources:I

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 430
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_49

    .line 431
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_4f

    .line 434
    :cond_49
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 439
    :cond_4f
    :goto_4f
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5c

    .line 440
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_62

    .line 442
    :cond_5c
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 445
    :goto_62
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 446
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_77

    .line 448
    :cond_71
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 451
    :goto_77
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7f

    move v0, v1

    goto :goto_80

    :cond_7f
    move v0, v2

    :goto_80
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_88

    move v0, v1

    goto :goto_89

    :cond_88
    move v0, v2

    .line 453
    :goto_89
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_91

    move v0, v1

    goto :goto_92

    :cond_91
    move v0, v2

    .line 455
    :goto_92
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_9a

    move v0, v1

    goto :goto_9b

    :cond_9a
    move v0, v2

    .line 457
    :goto_9b
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_a3

    move v0, v1

    goto :goto_a4

    :cond_a3
    move v0, v2

    .line 459
    :goto_a4
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_ac

    move v0, v1

    goto :goto_ad

    :cond_ac
    move v0, v2

    .line 461
    :goto_ad
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_b5

    move v0, v1

    goto :goto_b6

    :cond_b5
    move v0, v2

    .line 463
    :goto_b6
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_be

    move v0, v1

    goto :goto_bf

    :cond_be
    move v0, v2

    .line 465
    :goto_bf
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_c7

    move v0, v1

    goto :goto_c8

    :cond_c7
    move v0, v2

    .line 467
    :goto_c8
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_d1

    goto :goto_d2

    :cond_d1
    move v1, v2

    .line 469
    :goto_d2
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    return-void
.end method

.method public setFocusAppearance(II)V
    .registers 5

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";color="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setFocusAppearance"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 2610
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setGestureDetectionPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2616
    :try_start_29
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 2618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2619
    throw p0
.end method

.method public final setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 6

    .line 2156
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 2159
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2160
    const-string v1, "createImeSession"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :catch_16
    move-exception p1

    goto :goto_1c

    .line 2162
    :cond_18
    :goto_18
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_16

    return-void

    .line 2164
    :goto_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error requesting IME session from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 3

    .line 1997
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public setInstalledAndEnabledServices(Ljava/util/List;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 5

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setMagnificationCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1391
    :try_start_29
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 1393
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    throw p0
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .registers 8

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1360
    const-string/jumbo v0, "setMagnificationSpec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1360
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    .line 1365
    monitor-exit v0

    return v2

    :catchall_35
    move-exception p0

    goto :goto_5b

    .line 1367
    :cond_37
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1368
    monitor-exit v0

    return v2

    .line 1370
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_35

    .line 1372
    :try_start_45
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1373
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v3

    .line 1374
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, p1, p2, p3, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    move-result p0
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_56

    .line 1377
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw p0

    .line 1379
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_35

    throw p0
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 6

    .line 485
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setOnKeyEventResult"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    :try_start_29
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_36

    .line 492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    throw p0
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 7

    .line 2721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2723
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2724
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setServiceDetectsGesturesEnabled(IZ)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 2726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    throw p0
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8

    .line 519
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 520
    const-string/jumbo v0, "setServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1d
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 526
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getObservedMotionEventSources()I

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING"

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 529
    const-string v0, "AbstractAccessibilityServiceConnection"

    const-string v1, "Observing motion events requires permission android.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setObservedMotionEventSources(I)V

    .line 533
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 535
    :try_start_42
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7d

    .line 539
    :try_start_45
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 540
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v4, :cond_56

    .line 542
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-virtual {v4, v5, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 543
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_59

    :catchall_54
    move-exception p0

    goto :goto_7b

    .line 545
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 547
    :goto_59
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    if-nez v3, :cond_6b

    .line 548
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-eqz p1, :cond_6b

    .line 549
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_76

    :cond_6b
    if-eqz v3, :cond_76

    .line 550
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-nez p1, :cond_76

    .line 551
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 553
    :cond_76
    :goto_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_45 .. :try_end_77} :catchall_54

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 553
    :goto_7b
    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_54

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p0

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    throw p0

    .line 523
    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot update service info: size is larger than safe parcelable limits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 4

    .line 1404
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSoftKeyboardCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1409
    :try_start_21
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2a

    .line 1411
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    throw p0
.end method

.method public setTestBrailleDisplayData(Ljava/util/List;)V
    .registers 2

    .line 2904
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTestBrailleDisplayData_enforcePermission()V

    .line 2905
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 2625
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTouchExplorationPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2631
    :try_start_29
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 2633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2634
    throw p0
.end method

.method public final startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8

    .line 2199
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2202
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2203
    const-string/jumbo v1, "startInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " restarting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :catch_2c
    move-exception p1

    goto :goto_32

    .line 2206
    :cond_2e
    :goto_2e
    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_31} :catch_2c

    return-void

    .line 2208
    :goto_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error starting input to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 2010
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    .line 474
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public svcClientTracingEnabled()Z
    .registers 3

    .line 2684
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x2

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public svcConnTracingEnabled()Z
    .registers 3

    .line 2693
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 10

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1522
    const-string/jumbo v0, "takeScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1525
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3e

    sub-long v2, v0, v2

    const-wide/16 v4, 0x14d

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3e

    const/4 p1, 0x3

    .line 1528
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1532
    :cond_3e
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 1534
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1535
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_52

    const/4 p1, 0x1

    .line 1536
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1538
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    goto/16 :goto_c9

    .line 1541
    :cond_52
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 1545
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_4f

    .line 1547
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_68

    const/4 p1, 0x2

    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1556
    :cond_68
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 1557
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1558
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_bd

    .line 1559
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_88

    .line 1560
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_88

    goto :goto_bd

    .line 1565
    :cond_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1567
    :try_start_8c
    new-instance v0, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;

    new-instance v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/RemoteCallback;)V

    invoke-direct {v0, v4}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;-><init>(Ljava/util/function/ObjIntConsumer;)V

    .line 1580
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canCaptureSecureLayers()Z

    move-result v4

    .line 1582
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v6, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    invoke-direct {v6}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;-><init>()V

    .line 1585
    invoke-virtual {v6, v4}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object v4

    .line 1586
    invoke-virtual {v4}, Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$CaptureArgs;

    move-result-object v4

    .line 1582
    invoke-virtual {v5, p1, v4, v0}, Lcom/android/server/wm/WindowManagerInternal;->captureDisplay(ILandroid/window/ScreenCaptureInternal$CaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ac} :catch_b2
    .catchall {:try_start_8c .. :try_end_ac} :catchall_b0

    .line 1592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b0
    move-exception p0

    goto :goto_b9

    .line 1589
    :catch_b2
    :try_start_b2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b0

    .line 1592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_b9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    throw p0

    .line 1561
    :cond_bd
    :goto_bd
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1542
    :cond_c1
    :try_start_c1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Services don\'t have the capability of taking the screenshot."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1545
    :goto_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_4f

    throw p0
.end method

.method public takeScreenshotOfWindow(IILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 11

    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1424
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    const-wide/16 v3, 0x0

    .line 1425
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x14d

    cmp-long v2, v2, v4

    if-gtz v2, :cond_23

    const/4 p0, 0x3

    .line 1427
    invoke-interface {p4, p0, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    return-void

    .line 1431
    :cond_23
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 p0, 0x1

    .line 1435
    invoke-interface {p4, p0, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 1437
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_8c

    .line 1439
    :cond_3d
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_4b

    .line 1440
    invoke-interface {p4, v2, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 1443
    monitor-exit v0

    return-void

    .line 1445
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_3b

    .line 1446
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1447
    invoke-interface {p4, v2, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    return-void

    .line 1453
    :cond_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1455
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1456
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result p1

    .line 1455
    invoke-virtual {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object p1

    if-nez p1, :cond_78

    const/4 p0, 0x5

    .line 1459
    invoke-interface {p4, p0, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_76

    .line 1514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_76
    move-exception p0

    goto :goto_88

    .line 1463
    :cond_78
    :try_start_78
    new-instance v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V

    .line 1512
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->getWindowSurfaceInfo(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_76

    .line 1514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1515
    throw p0

    .line 1445
    :goto_8c
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_3b

    throw p0
.end method

.method public final unbindInputInternal()V
    .registers 4

    .line 2184
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getClientSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2187
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2188
    const-string/jumbo v1, "unbindInput"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_15
    move-exception v0

    goto :goto_1b

    .line 2190
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->unbindInput()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_15

    return-void

    .line 2192
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error unbinding input to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return-void
.end method

.method public unbindInputLocked()V
    .registers 1

    .line 2005
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->unbindInputLocked()V

    return-void
.end method

.method public wantsGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 2020
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, -0x100

    .line 2021
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public wmTracingEnabled()Z
    .registers 3

    .line 2711
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x200

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method
