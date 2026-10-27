.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
.implements Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
.implements Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
.implements Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
.implements Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;
.implements Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;
.implements Lcom/android/server/accessibility/ProxyManager$SystemSupport;


# static fields
.field static final ACTION_LAUNCH_HEARING_DEVICES_DIALOG:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_HEARING_DEVICES_DIALOG"

.field static final ACTION_LAUNCH_KEY_GESTURE_CONFIRM_DIALOG:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_KEY_GESTURE_CONFIRM_DIALOG"

.field public static final OWN_PROCESS_ID:I

.field public static sIdCounter:I


# instance fields
.field public final mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

.field public mA11yOverlayLayers:Landroid/util/SparseArray;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public mAccessibilityContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

.field public final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field public mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field public final mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

.field public final mGlobalClients:Landroid/os/RemoteCallbackList;

.field public mHasInputFilter:Z

.field public final mHearingDeviceNotificationController:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

.field public mInitialized:Z

.field public mInputBound:Z

.field public mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public mInputFilterInstalled:Z

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mInputSessionRequested:Z

.field public mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field public mIsAccessibilityButtonShown:Z

.field public mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field public mKeyGestureEventHandler:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMotionEventInjectors:Landroid/util/SparseArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mProxyManager:Lcom/android/server/accessibility/ProxyManager;

.field public mRealCurrentUserId:I

.field public mRegisteredBroadcaseReveivers:Ljava/util/List;

.field public mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mRestarting:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public final mSendWindowStateChangedEventRunnables:Ljava/util/List;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mTempComponentNameSet:Ljava/util/Set;

.field public final mTempIntArray:Landroid/util/IntArray;

.field public mTempPoint:Landroid/graphics/Point;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public mTrustedAccessibilityServiceForTesting:Landroid/content/ComponentName;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;

.field final mUserInitializationCompleteCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/accessibility/IUserInitializationCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            ">;"
        }
    .end annotation
.end field

.field public final mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-7gbg4UkAhpWUIGBu6jNB6GUM5A(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$-GB1y0gd8LNs9Vp3jGe9WBDySM0(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 3

    .line 1086
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda55;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0O2rQTJlkLko4GWdb9xa8O-RN88(Landroid/util/ArraySet;Landroid/content/ComponentName;)Z
    .registers 2

    .line 1923
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$1PR6ml_tL6uKaEr5vn8_vVPfceM(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestDelegatingInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3A9hneVPHj-v9nsapppXSomCkUc(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 2

    .line 4774
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$3VvH2ROFG9nWjiZB3GRL2PX2LM4(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 1087
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4K0rAuNRNDvTCfE3_X7CWSl61C4(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    .line 2982
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5xHpaNUCOA2l74Zy0beLPKMnKW4(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6m1VITGT1Rakbxsv4ZB-hc6Ilrs(Ljava/util/Set;Landroid/content/ComponentName;)Z
    .registers 2

    .line 1063
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$6tGwoXtIjAeHlao4k1yN9Ukl9RE(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$84sgY8WFtCTY_76Cw4-OTIF0RW0(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateFocusAppearanceDataLocked$47(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ADpUV2h0nBJSk2XiSOlXooRDUBA(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 2990
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DBNnc0I15ULL6evwYXObdY31_gU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$EHrBudcq4yFlHS_l05G9N-k-DjY(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateServicesLocked$25(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FCnKv_Ut84T3aNcEnU4D12D8l6Y(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$FZfN9LRCsw7mw2X7kb_ztm4bFMA(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    .line 2967
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GuQD9pwKX4BrUGgbNCGIj3S_RHU(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateFocusAppearanceDataLocked$46(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I16i94Vd-6mCSk8nNtVdIuBn5r4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$21(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IYiIYgT70pzq1oGOPaTeKJOw2d4(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    .line 4020
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$JB6TZPFG0N2h7zdKOCgM4OOCpf8(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDkUkVoir8xr8jfeezF_ApFpPrE(Lcom/android/server/accessibility/AccessibilityManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$new$1(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KFC275e1a0Nf4HzkH5ujj0liXIg(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKtWQeRvNaOH_t_VLCH1i-lf_FE(Lcom/android/server/accessibility/AccessibilityManagerService;ILjava/lang/Object;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$sendStateToClients$27(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUdW9WWPg_0AZd-g9ONMSwqzpeE(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$NnE01Yr1pVYuCQHn2ZgmQmyq-RQ(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->bindAndStartInputForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OkBmdc4YBk21wEp9qXhLJJPapUg(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestDraggingInternal(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6uzmPhPhWASJwsXLnMVS9R3SdY(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$QYLnaFcFlQzCtPI_ONAV9-gcLSE(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$enableMagnificationAndZoomIn$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qha0yO4BlErsZ1OeDWa1PxGEaNA(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/ArraySet;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->createImeSession(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYloOZKnSw95qXlUUOV8qactrVA(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$RexcBeq-vRIqlSnY_M-NSroyMQ8(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->createSessionForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SknwGcwcMDmGxwG60sVoT7zfy1c(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$new$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tk_RRv93n7-B6eTcDpjSdRUZ-O4(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V
    .registers 8

    if-eqz p0, :cond_f

    if-eqz p5, :cond_f

    .line 4132
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_74

    .line 4136
    :cond_f
    invoke-virtual {p1, p5}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_74

    .line 4140
    :cond_16
    iget p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 4142
    :goto_1f
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_74

    if-nez p1, :cond_30

    goto :goto_74

    .line 4146
    :cond_30
    invoke-virtual {p5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 4147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_74

    .line 4150
    :cond_3b
    invoke-static {p2, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    goto :goto_74

    .line 4156
    :cond_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A enabled service requesting a11y button "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " should be assign to the button or shortcut."

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "AccessibilityManagerService"

    invoke-static {p5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 4160
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result p0

    if-nez p2, :cond_71

    if-eqz p0, :cond_71

    .line 4162
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 4164
    :cond_71
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    return-void
.end method

.method public static synthetic $r8$lambda$UNs_lJpq-hli2-6MIRQkxPwYXLc(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindInputForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQpB_CeHDaZrTZwc4tNcn1T9J8g(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;Ljava/lang/String;)V
    .registers 6

    .line 4778
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4780
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_20

    .line 4785
    :cond_d
    sget-object p1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 4791
    :cond_16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 4790
    invoke-interface {p2, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->removeQsTile(Landroid/content/ComponentName;)V

    return-void

    .line 4781
    :cond_20
    :goto_20
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$V76o2h8DkZ6fVUjmy5UlpLRhgCo(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateServicesLocked$26(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Whte7PSa5Ig8KoUhtaFoVm3QBC0(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xcu9w-_QlqFivJmxolP340kirOQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$XpL8pm9VEQwLAqYA1AVZJvP4ZkA(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->bindInput()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3w54xED7XVYtOWOW0empDazmx0(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onDoubleTapInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YlT_cQFJkDvmLSRcxA4KbKan2IM(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZO1FPMFwVLgFh3JWhQTzytWozv4(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$persistMagnificationModeSettingsLocked$45(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZQ18NCDGqpbjIwaHP7owqjTuT4(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$_gBIiOvr-Vr0gJkDVFAi3JBURXE(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aEE8NeOeH3NuOiOGAXduArN-Eb0(Ljava/util/Set;Landroid/content/ComponentName;)Z
    .registers 2

    .line 1928
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$bIxfnirbMYclJRjCJy0nNZ-Npp4(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 2

    .line 4751
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$c2sb4fePdTUn6QD12AOuX4CLSEw(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdI3OcmvsNty1w3wrHNu7w2p9FI(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$20(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dOVnKwLQY4teiSI-cT2j-rx4jug(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$dY4yIRypTdlwjnc0yXrQf16UUpA(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindInput()V

    return-void
.end method

.method public static synthetic $r8$lambda$e6eW_ym__fQCvOlQBxYrv5wx2VI(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$fVgcwwCbIB6pV8sFlk2TYvFf4dg(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/util/Set;Ljava/util/Set;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateA11yTileServicesInQuickSettingsPanel(Ljava/util/Set;Ljava/util/Set;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$foBFhwDRlWbn_g-FDknUjGU0yfo(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hjThYoGwY7xmgnm7dq5ajQfwgHE(Ljava/util/List;Landroid/accessibilityservice/AccessibilityShortcutInfo;)Z
    .registers 2

    .line 2758
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$iForz27SmnHdFkTiQkYU5Ftznfg(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$showAccessibilityTargetsSelection$17(Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iR8DsRkilHf9uZb0muHsJdQFDKI(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestTouchExplorationInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEG8sFpIF3FdGhR-GkWQ8zIQ1to(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 7

    if-eqz p0, :cond_b

    if-eqz p2, :cond_b

    .line 4095
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_6c

    .line 4098
    :cond_b
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_6c

    .line 4103
    :cond_12
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p2

    if-nez p2, :cond_19

    goto :goto_6c

    .line 4107
    :cond_19
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const-string v3, "AccessibilityManagerService"

    if-gt v0, v1, :cond_44

    .line 4110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Legacy service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should not in the button"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4114
    :cond_44
    iget p2, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_6c

    .line 4116
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 4119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Service requesting a11y button and be assigned to the button"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should be enabled state"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kp3fgsHTBBLzC-HVvW2i-RcSijI(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;Ljava/lang/String;)V
    .registers 6

    .line 4755
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4757
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_21

    .line 4762
    :cond_d
    sget-object p1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 4768
    :cond_16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 4767
    invoke-interface {p2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    return-void

    .line 4758
    :cond_21
    :goto_21
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$n1v0EHa3vGwtD1eUDHqBlQnLIho(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nrua3enkMb2_cNQG8nUuoZiUGqE(Lcom/android/server/accessibility/AccessibilityManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setServiceDetectsGesturesInternal(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1awZzkw3tQaXOYBFrrZx5_PAC0(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToAllClients(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptXpwZbTMPwvXra334xH3tejUb0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$qVXwVz5kwbGQqyOhKn52nbOV-WI(Lcom/android/server/accessibility/AccessibilityManagerService;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutInternal(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qwfMWuTPaxocNgMRjX4jLzO9YUs(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$rpqmcpakiPBgnyfwrh5AxTq-amY(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    .line 1057
    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$sMt2_5gu0TFU5w4cmS1Bt5488-s(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 1009
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$sSou1oMwVRrho7XCqJlxd3Rev64(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$sqvHmgUA4_3bPY9fhY5KyeAhJBk(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onDoubleTapAndHoldInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxVKXyw8mckNQzwIYYhvME9YCMI(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 2

    .line 2406
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uVOmoDA11QjjfpyIEueIo_YSUWM(Landroid/accessibilityservice/AccessibilityShortcutInfo;)Ljava/lang/String;
    .registers 1

    .line 2759
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ueoPsoHYMcBSrKXKUn8sY1fMIuo(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 2

    .line 4633
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 4634
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wYPfPbaBszuUF6sjhczksiy53FI(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyRefreshMagnificationModeToInputFilter(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzI89o1ZSqHSpD2alxOg4dTqKeo(Lcom/android/server/accessibility/AccessibilityManagerService;JLjava/lang/Object;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$notifyClientsOfServicesStateChange$28(JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmA11yOverlayLayers(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmA11yWindowManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnificationController(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/magnification/MagnificationController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/ProxyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecurityPolicy(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendWindowStateChangedEventRunnables(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempPoint(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRect(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRect1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcomputeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchAccessibilityEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemActionPerformer(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/SystemActionPerformer;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misServiceInitializedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isServiceInitializedLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmigrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onPackageRemovedLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSomePackagesChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onSomePackagesChangedLocked(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mparseAccessibilityServiceInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mparseAccessibilityShortcutInfos(Lcom/android/server/accessibility/AccessibilityManagerService;I)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityShortcutInfos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreShortcutTargets(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreShortcutTargets(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNonA11yToolNotificationToMatchSafetyCenter(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsIdCounter()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputsIdCounter(I)V
    .registers 1

    .line 0
    sput p0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 296
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    const/4 v0, 0x1

    .line 304
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 615
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 322
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 324
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 372
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 374
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 376
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 384
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 392
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserInitializationCompleteCallbacks:Ljava/util/HashSet;

    .line 397
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v1, -0x2

    .line 405
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 419
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 426
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    const/4 v9, 0x0

    .line 427
    iput-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTrustedAccessibilityServiceForTesting:Landroid/content/ComponentName;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRegisteredBroadcaseReveivers:Ljava/util/List;

    .line 555
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyGestureEventHandler:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 616
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 617
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 618
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    .line 619
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 621
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v1

    .line 620
    invoke-static {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 622
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 623
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 625
    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v5, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-direct {v5, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v3, p1, v5}, Lcom/android/server/accessibility/PolicyWarningUIController;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    .line 628
    new-instance v6, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 629
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v6, v1, p1, p0, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Landroid/content/pm/PackageManagerInternal;)V

    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 630
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v7, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;-><init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    move-object v8, v1

    move-object p0, v3

    move-object v3, v2

    move-object v2, v5

    iput-object v8, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 632
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;Landroid/os/Handler;)V

    iput-object v1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 634
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationController;

    new-instance v5, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-direct {v5, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    iput-object v1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 642
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 643
    new-instance p1, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {p1, v4}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 644
    new-instance v1, Lcom/android/server/accessibility/ProxyManager;

    move-object v5, p0

    move-object v6, v0

    move-object v7, v2

    move-object v2, v3

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/ProxyManager;-><init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V

    move-object v2, v7

    iput-object v1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 646
    new-instance p0, Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;)V

    iput-object p0, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 647
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    iput-object p0, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 648
    const-class p1, Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 650
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p1

    if-eqz p1, :cond_154

    .line 651
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 652
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda69;

    invoke-direct {p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V

    goto :goto_156

    .line 654
    :cond_154
    iput-object v9, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 657
    :goto_156
    new-instance p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;-><init>(Landroid/content/Context;)V

    iput-object p0, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mHearingDeviceNotificationController:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

    .line 663
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/pm/PackageManager;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/ProxyManager;Landroid/os/PermissionEnforcer;Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;)V
    .registers 15

    .line 572
    invoke-direct {p0, p11}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 322
    new-instance p11, Ljava/lang/Object;

    invoke-direct {p11}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 324
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 372
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 374
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 376
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 384
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v0, p11}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserInitializationCompleteCallbacks:Ljava/util/HashSet;

    .line 397
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v0, -0x2

    .line 405
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 419
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 426
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTrustedAccessibilityServiceForTesting:Landroid/content/ComponentName;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRegisteredBroadcaseReveivers:Ljava/util/List;

    .line 555
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyGestureEventHandler:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 573
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 574
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 575
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    .line 576
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 578
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v1

    .line 577
    invoke-static {v1, p0, p11}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object p11

    iput-object p11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 579
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 580
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 581
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 582
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 583
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 584
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 585
    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 586
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    invoke-direct {p2, p0, p7, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener$DisplayManagerWrapper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 587
    iput-object p8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 588
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {p2, p8}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 589
    new-instance p2, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 590
    iput-object p10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    if-eqz p9, :cond_df

    .line 592
    iput-object p9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/4 p2, 0x1

    .line 593
    iput-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 595
    :cond_df
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 596
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 598
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 599
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 601
    iput-object p12, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHearingDeviceNotificationController:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

    .line 606
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public static isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2926
    :cond_4
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 2927
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    .line 2929
    array-length v2, p1

    :goto_11
    if-ge v0, v2, :cond_22

    aget-object v3, p1, v0

    .line 2930
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    return v1
.end method


# virtual methods
.method public accessibilityFocusOnlyInActiveWindow()Z
    .registers 2

    .line 2215
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2216
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->accessibilityFocusOnlyInActiveWindowLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2217
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 11

    .line 1667
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1668
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "windowToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "leashToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";connection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.addAccessibilityInteractionConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1674
    :cond_44
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .registers 12

    .line 1276
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1277
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.addClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1281
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1286
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 1288
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v6

    .line 1291
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1291
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v7

    .line 1293
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;ILcom/android/server/accessibility/AccessibilityManagerService-IA;)V

    .line 1297
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 1298
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 1304
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result p0

    iget p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :catchall_6b
    move-exception v0

    move-object p0, v0

    goto :goto_a1

    .line 1307
    :cond_6e
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v4, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_8f

    .line 1313
    :cond_74
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 1319
    iget-object p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result p0

    iget p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    .line 1322
    :cond_8a
    iget-object p0, v6, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v4, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1332
    :goto_8f
    iget p0, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, p0, :cond_98

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result p0

    goto :goto_99

    :cond_98
    const/4 p0, 0x0

    :goto_99
    iget p1, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1331
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    .line 1334
    :goto_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_2d .. :try_end_a2} :catchall_6b

    throw p0
.end method

.method public final assertNoTapShortcut(I)V
    .registers 2

    and-int/lit8 p0, p1, 0xc

    if-nez p0, :cond_5

    return-void

    .line 7170
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tap shortcuts are not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 9

    .line 5129
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5130
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.associateEmbeddedHierarchy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";embedded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 5134
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5135
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 5136
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw p0
.end method

.method public attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 12

    .line 7084
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>()V

    .line 7088
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7089
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    .line 7085
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7084
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    .registers 10

    .line 7066
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachAccessibilityOverlayToDisplay_enforcePermission()V

    .line 7067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>()V

    const/4 v2, -0x1

    .line 7071
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7072
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p2

    .line 7068
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7067
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public attachAccessibilityOverlayToDisplayInternal(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 7

    .line 7115
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 7116
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getA11yOverlayLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7118
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 7119
    const-string v1, "AccessibilityManagerService"

    if-nez v0, :cond_2b

    .line 7120
    const-string v0, "Unable to get accessibility overlay SurfaceControl."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7121
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x2

    goto :goto_40

    .line 7124
    :cond_2b
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7125
    invoke-virtual {p0, p3, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 7126
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 p0, 0x0

    .line 7131
    :goto_40
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->release()V

    if-eqz p4, :cond_4f

    .line 7137
    :try_start_45
    invoke-interface {p4, p0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p0

    .line 7139
    const-string p1, "Exception while attaching overlay."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    return-void
.end method

.method public final bindAndStartInputForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 5

    .line 6615
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6616
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    if-eqz v1, :cond_16

    .line 6617
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputLocked()V

    .line 6618
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 6620
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public final bindInput()V
    .registers 5

    .line 6670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6672
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 6673
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 6674
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_11
    if-ltz v2, :cond_2a

    .line 6675
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6676
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 6677
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputLocked()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2c

    :cond_27
    :goto_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 6680
    :cond_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_25

    throw p0
.end method

.method public final broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V
    .registers 3

    .line 2951
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 2952
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3840
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_c

    goto :goto_4c

    .line 3843
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-gt v0, v2, :cond_43

    .line 3848
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    return v3

    .line 3850
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_34

    .line 3851
    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 3852
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4c

    .line 3860
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    :goto_4c
    return v1
.end method

.method public final changeCurrentUserForTestAutomationIfNeededLocked(I)V
    .registers 5

    .line 1741
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    const-string v1, "AccessibilityManagerService"

    if-nez v0, :cond_14

    .line 1743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1742
    const-string p1, "changeCurrentUserForTestAutomationIfNeededLocked(%d): ignoring because device doesn\'t support visible background users"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1746
    :cond_14
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1747
    const-string p1, "changeCurrentUserForTestAutomationIfNeededLocked(): cannot change current user to %d as it\'s not visible (mVisibleUsers=%s)"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1752
    :cond_2a
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_3c

    .line 1755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1753
    const-string p1, "changeCurrentUserForTestAutomationIfNeededLocked(): NOT changing current user for test automation purposes as it is already %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1759
    :cond_3c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1758
    const-string v2, "changeCurrentUserForTestAutomationIfNeededLocked(): changing current user from %d to %d for test automation purposes"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 1761
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method public changeMagnificationMode(II)V
    .registers 6

    .line 448
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_b

    .line 450
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    goto :goto_1b

    :catchall_9
    move-exception p0

    goto :goto_1d

    .line 452
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 453
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v2

    if-eq p2, v2, :cond_1b

    .line 455
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    .line 456
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 459
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_9

    throw p0
.end method

.method public final computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 9

    .line 2857
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_27

    .line 2859
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2860
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2861
    invoke-virtual {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2865
    :cond_27
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2866
    invoke-virtual {p1}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    .line 2865
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 2867
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v1

    :cond_39
    or-int p0, v3, v1

    return p0
.end method

.method public final createImeSession(Landroid/util/ArraySet;)V
    .registers 6

    .line 6739
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6740
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    .line 6741
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 6742
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_11
    if-ltz v2, :cond_36

    .line 6743
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6744
    iget v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 6745
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionLocked()V

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_38

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 6748
    :cond_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_31

    throw p0
.end method

.method public final createSessionForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 3

    .line 6607
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6608
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    if-eqz p0, :cond_d

    .line 6609
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 6611
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public final disableAccessibilityMenuToMigrateIfNeeded()V
    .registers 4

    .line 1217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1219
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    .line 1220
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1221
    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityMenuComponentToMigrate(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1226
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1227
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1229
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    .line 1219
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 4960
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4961
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 4963
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4964
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 4967
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 4968
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4969
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_25
    return-void
.end method

.method public disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .registers 8

    .line 5142
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5143
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.disassociateEmbeddedHierarchy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 5147
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5148
    :try_start_26
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V

    .line 5149
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1460
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1461
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ProxyManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1a

    :cond_12
    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    const/4 v0, 0x1

    .line 1464
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 1466
    :goto_1a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 5436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5437
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5438
    :try_start_e
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5439
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5440
    const-string v1, "currentUserId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 5441
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_47

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v2, v1, :cond_47

    .line 5443
    const-string v1, " (set for UiAutomation purposes; \"real\" current user is "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 5444
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_47

    :catchall_44
    move-exception p0

    goto/16 :goto_f6

    .line 5446
    :cond_47
    :goto_47
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5447
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_61

    .line 5448
    const-string/jumbo v1, "visibleBgUserIds="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 5449
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5451
    :cond_61
    const-string v1, "hasMagnificationConnection="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 5452
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 5451
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 5453
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5454
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 5455
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8a
    if-ge v3, v1, :cond_9a

    .line 5457
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 5459
    :cond_9a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 5460
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5461
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5463
    :cond_aa
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5464
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_ba

    .line 5465
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5467
    :cond_ba
    const-string v1, "Global client list info:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5468
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    const-string v3, "    Client list "

    invoke-virtual {v1, p2, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5469
    const-string v1, "    Registered clients:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5470
    :goto_cb
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v2, v1, :cond_e7

    .line 5471
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 5472
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 5473
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 5475
    :cond_e7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5476
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/ProxyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5477
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5478
    monitor-exit v0

    return-void

    :goto_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_e .. :try_end_f7} :catchall_44

    throw p0
.end method

.method public final enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 4943
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4944
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 4946
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4947
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 4950
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 4951
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4952
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_25
    return-void
.end method

.method public enableMagnificationAndZoomIn(I)V
    .registers 4

    .line 1987
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableMagnificationAndZoomIn_enforcePermission()V

    .line 1989
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 1990
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final enableShortcutForTargets(ZILjava/util/List;I)V
    .registers 15

    .line 4560
    const-string v0, "AccessibilityManagerService"

    const-string v1, "enableShortcutForTargets: enable %s, shortcutType: %s, shortcutTargets: %s, userId: %s"

    .line 4563
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, p3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 4560
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x40

    if-ne p2, v0, :cond_4d

    .line 4573
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040273

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4575
    const-string p0, "AccessibilityManagerService"

    const-string p1, "KEY_GESTURE type select to speak shortcuts are disabled by feature flag"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4580
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104024e

    .line 4581
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4583
    const-string p0, "AccessibilityManagerService"

    const-string p1, "KEY_GESTURE type TalkBack shortcuts are disabled by feature flag"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4596
    :cond_4d
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_58

    const/16 v0, 0x8

    if-ne p2, v0, :cond_5c

    :cond_58
    move-object v0, p0

    move v2, p4

    goto/16 :goto_158

    .line 4616
    :cond_5c
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    move-result-object v0

    .line 4617
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4618
    :try_start_63
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v7

    .line 4619
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4620
    invoke-static {v2, p2, p4}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v8

    .line 4622
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_7c

    .line 4624
    invoke-interface {v2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7f

    :catchall_78
    move-exception v0

    move-object p0, v0

    goto/16 :goto_156

    .line 4626
    :cond_7c
    invoke-interface {v2, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :goto_7f
    const/16 v9, 0x10

    if-ne p2, v9, :cond_9b

    .line 4632
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4635
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    :cond_9b
    move-object v3, v2

    .line 4638
    invoke-interface {v8, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 4639
    const-string p0, "AccessibilityManagerService"

    const-string/jumbo p1, "shortcutTargets are the same: skip modifying: target: %s, shortcutType: %s, userId: %s"

    .line 4643
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v3, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 4640
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4639
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    monitor-exit v6

    return-void

    .line 4646
    :cond_bc
    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v2, "writing new shortcut targets: target: %s, shortcutType: %s, userId: %s"

    .line 4650
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 4647
    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4646
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>()V

    const-string v5, ""

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    if-ne p2, v9, :cond_fb

    .line 4661
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result p0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p4

    sub-int/2addr p0, p4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 4662
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->logMetricForQsShortcutConfiguration(ZI)V

    .line 4664
    invoke-virtual {v7, v3, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    .line 4665
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 4666
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 4674
    :cond_fb
    monitor-exit v6
    :try_end_fc
    .catchall {:try_start_63 .. :try_end_fc} :catchall_78

    .line 4675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4677
    :try_start_100
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p4, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_150

    .line 4680
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ne p2, v9, :cond_121

    .line 4685
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 4687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4685
    invoke-static {p4, v0, v3, v8, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_121
    if-nez p1, :cond_124

    goto :goto_18b

    :cond_124
    const/4 p0, 0x2

    const/4 p1, 0x1

    if-ne p2, p0, :cond_131

    .line 4694
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->skipVolumeShortcutDialogTimeoutRestriction(I)V

    .line 4695
    const-string p0, "accessibility_shortcut_dialog_shown"

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(ILjava/lang/String;I)V

    return-void

    :cond_131
    if-ne p2, p1, :cond_18b

    .line 4703
    const-string p0, "com.android.server.accessibility.MagnificationController"

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18b

    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "accessibility_floating_menu_size"

    const/4 p3, -0x1

    invoke-static {p0, p2, p3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, p3, :cond_18b

    .line 4707
    const-string p0, "accessibility_floating_menu_size"

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(ILjava/lang/String;I)V

    return-void

    :catchall_150
    move-exception v0

    move-object p0, v0

    .line 4680
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4681
    throw p0

    .line 4674
    :goto_156
    :try_start_156
    monitor-exit v6
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_78

    throw p0

    .line 4599
    :goto_158
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4600
    const-string p3, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_174

    .line 4601
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(ILjava/lang/String;I)V

    goto :goto_15c

    .line 4606
    :cond_174
    const-string p3, "AccessibilityManagerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triple tap or two-fingers double-tap is not supported for "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    :cond_18b
    :goto_18b
    return-void
.end method

.method public enableShortcutsForTargets(ZILjava/util/List;I)V
    .registers 10

    .line 4548
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableShortcutsForTargets_enforcePermission()V

    .line 4550
    sget-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, v0, v2

    and-int v4, p2, v3

    if-ne v4, v3, :cond_12

    .line 4552
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(ZILjava/util/List;I)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public enableTrustedAccessibilityService(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 5

    .line 6269
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->isValidMagnificationModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 6272
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalid magnification mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6273
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6272
    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6274
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result v0

    .line 6275
    invoke-virtual {p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    if-nez p2, :cond_36

    .line 6277
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public getA11yFeatureToTileMap(I)Landroid/os/Bundle;
    .registers 4

    .line 4805
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getA11yFeatureToTileMap_enforcePermission()V

    .line 4806
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4808
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    move-result-object p0

    .line 4809
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 4810
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_14

    :cond_34
    return-object v0
.end method

.method public final getA11yFeatureToTileMapInternal(I)Ljava/util/Map;
    .registers 8

    .line 4832
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4835
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4836
    :try_start_8
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 4837
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 4838
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4839
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    move-result-object p0

    .line 4840
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_6b

    .line 4841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    if-eq v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 4842
    :goto_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4843
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 4847
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v1, :cond_55

    .line 4850
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4849
    invoke-virtual {v3, v5, v2, p1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_36

    .line 4853
    :cond_55
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 4856
    :cond_65
    sget-object p0, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    :catchall_6b
    move-exception p0

    .line 4840
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .registers 2

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityShortcutTargets(II)Ljava/util/List;
    .registers 6

    .line 4864
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets_enforcePermission()V

    const/4 v0, -0x2

    if-ne p2, v0, :cond_10

    .line 4866
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4867
    :try_start_9
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4868
    monitor-exit v0

    goto :goto_10

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw p0

    .line 4870
    :cond_10
    :goto_10
    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".getAccessibilityShortcutTargets {shortcutType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAccessibilityShortcutTargetsInternal(II)Ljava/util/List;
    .registers 8

    .line 4877
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4878
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4879
    new-instance p2, Ljava/util/ArrayList;

    .line 4880
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_17

    .line 4882
    monitor-exit v0

    return-object p2

    :catchall_15
    move-exception p0

    goto :goto_5c

    .line 4885
    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1e
    if-ltz v2, :cond_53

    .line 4886
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4887
    iget-boolean v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_50

    .line 4888
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-le v3, v4, :cond_3f

    goto :goto_50

    .line 4892
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 4893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 4894
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 4897
    :cond_53
    invoke-static {p2}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    .line 4898
    monitor-exit v0

    return-object p2

    .line 4899
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_15

    throw p0
.end method

.method public getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 8

    .line 5033
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5034
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getAccessibilityWindowId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 5038
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5039
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3e

    .line 5043
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3c
    move-exception p0

    goto :goto_46

    .line 5040
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only SYSTEM can call getAccessibilityWindowId"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5044
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_3c

    throw p0
.end method

.method public getActiveWindowId()I
    .registers 2

    .line 2242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p0

    return p0
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 3

    .line 973
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 975
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 976
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I
    .registers 3

    .line 2443
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2444
    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canIntrospect()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2445
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getTraceStateForAccessibilityManagerClientState()I

    move-result p0

    .line 2443
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getClientStateLocked(ZI)I

    move-result p0

    return p0
.end method

.method public getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;
    .registers 1

    .line 5573
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getCurrentUserIdLocked()I
    .registers 1

    .line 738
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return p0
.end method

.method public getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 2

    .line 950
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 952
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 2

    .line 438
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 9

    .line 1569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1570
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getEnabledAccessibilityServiceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feedbackType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1575
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1576
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1576
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 1578
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1579
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_47
    move-exception p0

    goto :goto_87

    .line 1585
    :cond_49
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1586
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1589
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 1590
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 1591
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 1594
    :cond_5f
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1595
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 1596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_6b
    if-ge v2, p2, :cond_85

    .line 1598
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1599
    iget v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v4, p1

    if-nez v4, :cond_7b

    const/4 v4, -0x1

    if-ne p1, v4, :cond_82

    .line 1601
    :cond_7b
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 1604
    :cond_85
    monitor-exit v0

    return-object v1

    .line 1605
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_2d .. :try_end_88} :catchall_47

    throw p0
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .registers 1

    .line 904
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object p0
.end method

.method public getFocusColor()I
    .registers 5

    .line 5181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5182
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getFocusColor"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 5184
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5185
    :try_start_14
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 5186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5185
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 5187
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5188
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getFocusColorLocked(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    goto :goto_3a

    .line 5190
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 5192
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusColorLocked()I

    move-result p0

    monitor-exit v0

    return p0

    .line 5193
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_2e

    throw p0
.end method

.method public getFocusStrokeWidth()I
    .registers 5

    .line 5159
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5160
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getFocusStrokeWidth"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 5162
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5163
    :try_start_14
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 5164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5163
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 5165
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5166
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getFocusStrokeWidthLocked(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    goto :goto_3a

    .line 5168
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 5170
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusStrokeWidthLocked()I

    move-result p0

    monitor-exit v0

    return p0

    .line 5171
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_2e

    throw p0
.end method

.method public getGlobalClientsLocked()Landroid/os/RemoteCallbackList;
    .registers 1

    .line 5568
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;
    .registers 8

    .line 1525
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1526
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getInstalledAccessibilityServiceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1532
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_26
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1533
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 1535
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1536
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    const/4 v2, -0x1

    .line 1537
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/ProxyManager;->getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    :catchall_46
    move-exception p0

    goto :goto_9c

    .line 1543
    :cond_48
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1544
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1545
    new-instance v1, Ljava/util/ArrayList;

    .line 1546
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1547
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_46

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    if-ne p0, v0, :cond_68

    .line 1550
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1552
    :cond_68
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1555
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_7a
    if-ltz v2, :cond_96

    .line 1556
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1557
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1559
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_93
    add-int/lit8 v2, v2, -0x1

    goto :goto_7a

    .line 1562
    :cond_96
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 1547
    :goto_9c
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_46

    throw p0
.end method

.method public final getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 3

    .line 2449
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2450
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_11

    .line 2451
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 2453
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object p0

    .line 2454
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .registers 6

    .line 4288
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_13

    .line 4289
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 4293
    :cond_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object p0
.end method

.method public getLastNonProxyTopFocusedDisplayId()I
    .registers 1

    .line 2091
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getLastNonProxyTopFocusedDisplayId()I

    move-result p0

    return p0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 946
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .registers 2

    .line 5112
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5113
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 5114
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;
    .registers 1

    .line 5123
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-object p0
.end method

.method public getMagnificationCursorFollowingMode()I
    .registers 2

    .line 6341
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6342
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCursorFollowingMode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 6343
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getMagnificationMode(I)I
    .registers 3

    .line 6302
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6303
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 6304
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .registers 1

    .line 5506
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    return-object p0
.end method

.method public getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;
    .registers 7

    .line 2168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 2170
    :catch_7
    :goto_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1f

    .line 2172
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_7

    goto :goto_7

    .line 2177
    :cond_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez p0, :cond_2c

    .line 2178
    const-string p0, "AccessibilityManagerService"

    const-string p1, "MotionEventInjector installation timed out"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_32

    .line 2180
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/MotionEventInjector;

    :goto_32
    return-object p0
.end method

.method public getPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .registers 1

    .line 1101
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-object p0
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 4300
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final getRawShortcutSetting(II)Ljava/lang/String;
    .registers 3

    .line 2425
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2426
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p2

    .line 2425
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendedTimeoutMillis()J
    .registers 5

    .line 5056
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5057
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getRecommendedTimeoutMillis"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 5061
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5062
    :try_start_14
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 5063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5062
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 5064
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5065
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_2e
    move-exception p0

    goto :goto_3a

    .line 5067
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 5068
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 5070
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_2e

    throw p0
.end method

.method public final getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J
    .registers 2

    .line 5074
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInteractiveUiTimeoutLocked()I

    move-result p0

    .line 5075
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getNonInteractiveUiTimeoutLocked()I

    move-result p1

    .line 5074
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShortcutTypeForGenericShortcutCalls(I)I
    .registers 4

    .line 7103
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 7104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_mode"

    const/4 v1, -0x1

    .line 7103
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_14

    const/16 p0, 0x20

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public final getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;
    .registers 8

    .line 1514
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    if-nez v0, :cond_13

    .line 1515
    new-instance v1, Lcom/android/server/accessibility/SystemActionPerformer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x0

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V

    iput-object v1, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    goto :goto_14

    :cond_13
    move-object v5, p0

    .line 1518
    :goto_14
    iget-object p0, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    return-object p0
.end method

.method public final getTargetNameFromKeyGestureType(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_23

    const/16 v0, 0x49

    if-eq p1, v0, :cond_19

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_f

    .line 760
    const-string p0, ""

    return-object p0

    .line 756
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const p1, 0x104027b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 754
    :cond_19
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const p1, 0x1040273

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 758
    :cond_23
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const p1, 0x104024e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopFocusedDisplayId()I
    .registers 1

    .line 2095
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getTopFocusedDisplayId()I

    move-result p0

    return p0
.end method

.method public getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    .line 6659
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public final getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 3

    .line 956
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 958
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 4

    .line 964
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v0, :cond_16

    .line 966
    new-instance v0, Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;-><init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V

    .line 967
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    return-object v0
.end method

.method public getValidDisplayList()Ljava/util/ArrayList;
    .registers 1

    .line 5734
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .registers 9

    .line 1788
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken_enforcePermission()V

    .line 1789
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1790
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getWindowToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1794
    :cond_2e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_31
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1799
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1800
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_40

    .line 1801
    monitor-exit v0

    return-object v3

    :catchall_3e
    move-exception p0

    goto :goto_56

    .line 1803
    :cond_40
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1804
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-nez p1, :cond_4a

    .line 1806
    monitor-exit v0

    return-object v3

    .line 1814
    :cond_4a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1815
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result p1

    .line 1814
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1816
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_3e

    throw p0
.end method

.method public getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .registers 5

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    .line 853
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    if-eqz v1, :cond_1e

    .line 855
    new-instance p0, Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 856
    iget-object p1, v1, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 857
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 863
    :cond_1e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_21
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1

    .line 866
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_5b

    .line 867
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;

    move-result-object p0

    const/16 p1, 0x9

    .line 869
    new-array p1, p1, [F

    .line 870
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    .line 871
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 872
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 873
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 874
    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 876
    :cond_4e
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 878
    new-instance v0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/MagnificationSpec;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_5b
    move-exception p0

    .line 866
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    :catchall_5e
    move-exception p0

    .line 853
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .registers 3

    .line 886
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    invoke-direct {v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;-><init>()V

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object p0

    .line 890
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [F

    iput-object p1, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    .line 891
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/MagnificationSpec;

    iput-object p0, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V
    .registers 12

    .line 767
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_11

    .line 768
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_12

    :cond_11
    move v0, v2

    .line 769
    :goto_12
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v5

    if-nez v0, :cond_19

    goto :goto_6e

    :cond_19
    const/16 v0, 0x3f

    if-eq v5, v0, :cond_49

    const/16 v0, 0x4c

    if-eq v5, v0, :cond_49

    const/16 v0, 0x48

    if-eq v5, v0, :cond_45

    const/16 v0, 0x49

    if-eq v5, v0, :cond_49

    .line 810
    const-string p0, "AccessibilityManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a key gesture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 777
    :cond_45
    const-string v0, "com.android.server.accessibility.MagnificationController"

    :cond_47
    move-object v8, v0

    goto :goto_7d

    .line 782
    :cond_49
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTargetNameFromKeyGestureType(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_6e

    .line 787
    :cond_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x0

    goto :goto_60

    .line 788
    :cond_5c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 790
    :goto_60
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 791
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v6

    .line 793
    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 794
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_d4

    if-nez v1, :cond_6f

    :goto_6e
    return-void

    .line 802
    :cond_6f
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 803
    const-string p0, "AccessibilityManagerService"

    const-string p1, "Accessibility warning is required before this service can be activated automatically via KEY_GESTURE shortcut."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 816
    :goto_7d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 817
    :try_start_80
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 818
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_d0

    .line 821
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_90

    .line 822
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v1

    :goto_8e
    move v9, v1

    goto :goto_95

    .line 823
    :cond_90
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLastNonProxyTopFocusedDisplayId()I

    move-result v1

    goto :goto_8e

    :goto_95
    const/16 v1, 0x40

    .line 824
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargets(II)Ljava/util/List;

    move-result-object v0

    .line 826
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 828
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v0

    .line 829
    array-length v1, v0

    if-eq v1, v3, :cond_c0

    .line 830
    const-string p0, "AccessibilityManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t continue launching the dialog, because there should be one and only one keyCode for the gesture type instead of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_c0
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v6

    aget v7, v0, v2

    move-object v4, p0

    .line 839
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchKeyGestureConfirmDialog(IIILjava/lang/String;I)V

    return-void

    :cond_cb
    move-object v4, p0

    .line 844
    invoke-virtual {v4, v9, v1, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutInternal(IILjava/lang/String;)V

    return-void

    :catchall_d0
    move-exception v0

    move-object p0, v0

    .line 818
    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d0

    throw p0

    :catchall_d4
    move-exception v0

    move-object p0, v0

    .line 794
    :try_start_d6
    monitor-exit v4
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d4

    throw p0
.end method

.method public final init()V
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 669
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAccessibilityContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    .line 670
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x48

    .line 677
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4c

    .line 683
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 686
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyGestureEventHandler:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 690
    :cond_40
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHearingDeviceNotificationController:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

    if-eqz v0, :cond_47

    .line 691
    invoke-virtual {v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->startListenForCallState()V

    .line 694
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityMenuToMigrateIfNeeded()V

    return-void
.end method

.method public injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    .registers 3

    .line 6810
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->injectInputEventToInputFilter_enforcePermission()V

    .line 6812
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->waitForInputFilterInstalled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6813
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    .line 6816
    :cond_11
    const-string p0, "AccessibilityManagerService"

    const-string p1, "Cannot injectInputEventToInputFilter because the AccessibilityInputFilter is not installed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interrupt(I)V
    .registers 8

    .line 1611
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1612
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.interrupt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1617
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1621
    :try_start_26
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1622
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1624
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_35

    .line 1625
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    goto/16 :goto_c1

    .line 1628
    :cond_35
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 1629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1628
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    move-result v1

    .line 1630
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    .line 1631
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->addServiceInterfacesLocked(Ljava/util/List;I)V

    goto :goto_7e

    .line 1635
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1636
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    .line 1637
    :goto_63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7d

    .line 1638
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1639
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    .line 1640
    iget-object v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v5, :cond_7a

    if-eqz v4, :cond_7a

    .line 1642
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_7d
    move-object p1, v1

    .line 1646
    :goto_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_26 .. :try_end_7f} :catchall_32

    .line 1647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_83
    if-ge v3, v0, :cond_c0

    .line 1649
    :try_start_85
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v4, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1651
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v2, "AccessibilityManagerService.IAccessibilityServiceClient.onInterrupt"

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    goto :goto_99

    :catch_97
    move-exception v1

    goto :goto_a3

    .line 1654
    :cond_99
    :goto_99
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_a2} :catch_97

    goto :goto_bd

    .line 1656
    :goto_a3
    const-string v2, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending interrupt request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1656
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_c0
    return-void

    .line 1646
    :goto_c1
    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_32

    throw p0
.end method

.method public isAccessibilityButtonShown()Z
    .registers 1

    .line 749
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return p0
.end method

.method public final isAccessibilityServicePreinstalledAndTrusted(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 5

    .line 5414
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5415
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTrustedAccessibilityServiceForTesting:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 5419
    :cond_e
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 5421
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5422
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700f1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 5424
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;-><init>()V

    .line 5425
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 5426
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;

    invoke-direct {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_42

    return v2

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 11

    .line 5379
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityServiceWarningRequired_enforcePermission()V

    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 5381
    const-string p0, "AccessibilityManagerService"

    const-string p1, "Called isAccessibilityServiceWarningRequired with null service info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5385
    :cond_e
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 5389
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5390
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v3

    .line 5391
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_28

    .line 5392
    monitor-exit v2

    return v5

    :catchall_26
    move-exception p0

    goto :goto_4d

    .line 5394
    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_26

    .line 5396
    sget-object v2, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v4, v2

    move v6, v5

    :goto_2d
    if-ge v6, v4, :cond_45

    aget v7, v2, v6

    .line 5397
    iget v8, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargets(II)Ljava/util/List;

    move-result-object v7

    .line 5398
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 5397
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    return v5

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 5405
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityServicePreinstalledAndTrusted(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v5

    :cond_4c
    return v0

    .line 5394
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_26

    throw p0
.end method

.method public isAccessibilityTargetAllowed(Ljava/lang/String;II)Z
    .registers 6

    .line 5330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5332
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 5333
    invoke-virtual {p0, p3}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 5336
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1b

    goto :goto_1f

    :cond_1b
    const/4 p0, 0x0

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_24

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 5338
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5339
    throw p0
.end method

.method public isAudioDescriptionByDefaultEnabled()Z
    .registers 5

    .line 5203
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5204
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.isAudioDescriptionByDefaultEnabled"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 5207
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5208
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 5210
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isAudioDescriptionByDefaultEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 5211
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isDisplayProxyed(I)Z
    .registers 2

    .line 5301
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    move-result p0

    return p0
.end method

.method public final isServiceInitializedLocked()Z
    .registers 1

    .line 733
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    return p0
.end method

.method public isSystemAudioCaptioningUiEnabled(I)Z
    .registers 2

    .line 5245
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final isTrackedDisplay(I)Z
    .registers 6

    .line 5743
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p0

    .line 5744
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_a
    if-ge v2, v0, :cond_1c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/Display;

    .line 5745
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public final synthetic lambda$enableMagnificationAndZoomIn$12(I)V
    .registers 5

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->waitForInputFilterInstalled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1993
    const-string p0, "AccessibilityManagerService"

    const-string p1, "Cannot enableMagnificationAndZoomIn because the AccessibilityInputFilter is not installed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2000
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->waitForMagnificationConnection()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2001
    const-string p0, "AccessibilityManagerService"

    const-string p1, "Cannot enableMagnificationAndZoomIn because the MagnificationConnection is not established."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2010
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2014
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v1

    .line 2015
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isAnyMagnificationActivated(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2016
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_41

    .line 2020
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2021
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    .line 2027
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->zoomInFullScreenMagnification(I)V

    .line 2029
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_2b

    throw p0
.end method

.method public final synthetic lambda$new$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method

.method public final synthetic lambda$new$1(IZ)V
    .registers 3

    .line 652
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserVisibilityChanged(IZ)V

    return-void
.end method

.method public final synthetic lambda$notifyClientsOfServicesStateChange$28(JLjava/lang/Object;)V
    .registers 5

    .line 3253
    check-cast p3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 3254
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    iget v0, p3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-nez p0, :cond_11

    .line 3255
    iget-object p0, p3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    :cond_11
    return-void
.end method

.method public final synthetic lambda$persistMagnificationModeSettingsLocked$45(I)V
    .registers 6

    .line 6284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6286
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnification_mode"

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 6289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6290
    throw p0
.end method

.method public final synthetic lambda$sendStateToClients$27(ILjava/lang/Object;)V
    .registers 4

    .line 3223
    check-cast p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 3224
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-nez p0, :cond_11

    .line 3225
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    :cond_11
    return-void
.end method

.method public final synthetic lambda$showAccessibilityTargetsSelection$17(Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 4

    .line 2594
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$updateFocusAppearanceDataLocked$46(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4

    .line 6649
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-nez p0, :cond_17

    .line 6650
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusStrokeWidthLocked()I

    move-result p2

    .line 6651
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusColorLocked()I

    move-result p1

    .line 6650
    invoke-interface {p0, p2, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    :cond_17
    return-void
.end method

.method public final synthetic lambda$updateFocusAppearanceDataLocked$47(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 6648
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$updateRelevantEventsLocked$20(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 5

    .line 2841
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2842
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    .line 2843
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    iget v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 2844
    iget p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq p0, p1, :cond_1f

    .line 2845
    iput p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 2846
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 2849
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final synthetic lambda$updateRelevantEventsLocked$21(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 2839
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$updateServicesLocked$25(Landroid/content/ComponentName;)Z
    .registers 2

    .line 3170
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$updateServicesLocked$26(Landroid/content/ComponentName;)Z
    .registers 2

    .line 3172
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final launchAccessibilityFrameworkFeature(ILandroid/content/ComponentName;)V
    .registers 3

    .line 4531
    sget-object p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4532
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchHearingDevicesDialog()V

    :cond_b
    return-void
.end method

.method public final launchHearingDevicesDialog()V
    .registers 4

    .line 2622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_HEARING_DEVICES_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2623
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2624
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104003a

    .line 2625
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2624
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2626
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final launchKeyGestureConfirmDialog(IIILjava/lang/String;I)V
    .registers 9

    .line 2635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_KEY_GESTURE_CONFIRM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2636
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2637
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    const-string v1, "KEY_GESTURE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2639
    const-string p1, "META_STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2640
    const-string p1, "KEY_CODE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2641
    const-string p1, "TARGET_NAME"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2642
    const-string p1, "DISPLAY_ID"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2643
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final launchShortcutTargetActivity(ILandroid/content/ComponentName;)V
    .registers 5

    .line 2598
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2599
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2600
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 2601
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2603
    :try_start_19
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public final logMetricForQsShortcutConfiguration(ZI)V
    .registers 5

    if-gtz p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_8

    .line 7164
    const-string p0, "accessibility.value_qs_shortcut_add"

    goto :goto_a

    :cond_8
    const-string p0, "accessibility.value_qs_shortcut_remove"

    .line 7165
    :goto_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    return-void
.end method

.method public final migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V
    .registers 13

    const/16 v0, 0x1d

    if-le p3, v0, :cond_5

    goto :goto_3f

    :cond_5
    const/4 p3, 0x1

    .line 4093
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 4094
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v0, p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v5, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    const/16 v6, 0x10

    .line 4127
    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 4126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 4128
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/16 v0, 0x7f

    .line 4129
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 4130
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda36;

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda36;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v8, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 4172
    invoke-virtual {v2, v5, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    move-result p1

    .line 4174
    invoke-virtual {v2, v4, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    move-result p2

    if-nez p1, :cond_40

    if-nez p2, :cond_40

    :goto_3f
    return-void

    :cond_40
    if-eqz p1, :cond_4e

    .line 4182
    iget p1, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda37;

    invoke-direct {p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda37;-><init>()V

    const-string v0, "accessibility_button_targets"

    invoke-virtual {p0, v0, p1, v5, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    :cond_4e
    if-eqz p2, :cond_70

    .line 4187
    iget p1, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;

    invoke-direct {p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;-><init>()V

    const-string p3, "accessibility_qs_targets"

    invoke-virtual {p0, p3, p1, v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 4190
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>()V

    iget p3, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 4192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 4190
    invoke-static {p2, p0, v4, v7, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4194
    :cond_70
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public moveNonProxyTopFocusedDisplayToTopIfNeeded()V
    .registers 1

    .line 2085
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->moveNonProxyTopFocusedDisplayToTopIfNeeded()V

    return-void
.end method

.method public notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .registers 10

    .line 1831
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked_enforcePermission()V

    .line 1833
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1834
    :try_start_6
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1835
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_63

    .line 1836
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1837
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1838
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v4, "AccessibilityManagerService.notifyAccessibilityButtonClicked"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";targetName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_36
    if-nez p2, :cond_48

    .line 1844
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1845
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 1846
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object p2

    .line 1847
    monitor-exit v0

    goto :goto_48

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    throw p0

    .line 1849
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;-><init>()V

    .line 1851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getShortcutTypeForGenericShortcutCalls(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1849
    invoke-static {v2, p0, p1, v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_63
    move-exception p0

    .line 1835
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public notifyAccessibilityButtonLongClicked(I)V
    .registers 4

    .line 1864
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonLongClicked_enforcePermission()V

    .line 1866
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_6
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1868
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_11

    .line 1870
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getShortcutTypeForGenericShortcutCalls(I)I

    move-result v0

    .line 1869
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(III)V

    return-void

    :catchall_11
    move-exception p0

    .line 1868
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 8

    .line 1883
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged_enforcePermission()V

    .line 1884
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1885
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1886
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.notifyAccessibilityButtonVisibilityChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1890
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    .line 1892
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .registers 4

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2648
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 2649
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_e
    if-ltz p0, :cond_26

    .line 2650
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2651
    iget-boolean v1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v1, :cond_23

    .line 2653
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    .line 2652
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_23
    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method public final notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 7

    .line 2818
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2819
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1f

    .line 2820
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2822
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    if-ne v3, p2, :cond_1c

    .line 2823
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1c} :catch_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1f
    :cond_1f
    return-void
.end method

.method public notifyClearAccessibilityCacheLocked()V
    .registers 4

    .line 2513
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2514
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1c

    .line 2515
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2516
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2519
    :cond_1c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->clearCacheLocked()V

    return-void
.end method

.method public final notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .registers 9

    .line 3246
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3247
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uiTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.notifyClientsOfServicesStateChange"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 3251
    :cond_23
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;J)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z
    .registers 7

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2468
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_25

    .line 2469
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2470
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    if-ne v3, p2, :cond_22

    .line 2471
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 6

    .line 2108
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2110
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2111
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x0

    .line 2112
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    goto :goto_1e

    .line 2114
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2115
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_12

    throw p0
.end method

.method public notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5

    .line 2145
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 2147
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 2148
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6

    .line 2568
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 2570
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2571
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final notifyMagnificationShortcutTriggered(I)V
    .registers 4

    .line 2576
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 2578
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyMagnificationShortcutTriggered(I)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 2580
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    .registers 12

    .line 1899
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyQuickSettingsTilesChanged_enforcePermission()V

    .line 1901
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1908
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1909
    :try_start_b
    const-string v2, "AccessibilityManagerService"

    const-string/jumbo v3, "notifyQuickSettingsTilesChanged userId: %s, tileComponentNames: %s, userInitializationCompleted? %s"

    .line 1912
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isServiceInitializedLocked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, p2, v5}, [Ljava/lang/Object;

    move-result-object p2

    .line 1909
    invoke-static {v3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 1916
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getTileServiceToA11yServiceInfoMapLocked()Ljava/util/Map;

    move-result-object v2

    .line 1917
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    move-result-object v3

    .line 1919
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yQsTilesInQsPanel()Landroid/util/ArraySet;

    move-result-object v4

    .line 1922
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;-><init>(Landroid/util/ArraySet;)V

    .line 1923
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1924
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1927
    invoke-virtual {v4}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;

    invoke-direct {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;-><init>(Ljava/util/Set;)V

    .line 1928
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1929
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1931
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1932
    monitor-exit v1

    return-void

    :catchall_73
    move-exception p0

    goto/16 :goto_120

    .line 1935
    :cond_76
    invoke-virtual {p2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yTilesInQsPanelLocked(Ljava/util/Set;)V

    .line 1936
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_b .. :try_end_7a} :catchall_73

    .line 1938
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8e
    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1943
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 1944
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1945
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 1946
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 1947
    :cond_b4
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 1948
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 1953
    :cond_be
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c6
    :goto_c6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1954
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 1955
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1956
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_100

    const/4 v8, 0x0

    .line 1957
    invoke-interface {v2, v3, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v3, :cond_fc

    .line 1959
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1964
    invoke-virtual {p0, v6, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->logMetricForQsShortcutConfiguration(ZI)V

    goto :goto_c6

    .line 1967
    :cond_fc
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 1968
    :cond_100
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1969
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 1973
    :cond_10a
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_115

    .line 1974
    invoke-virtual {p0, v6, v2, p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(ZILjava/util/List;I)V

    .line 1978
    :cond_115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11f

    const/4 p2, 0x0

    .line 1979
    invoke-virtual {p0, p2, v2, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(ZILjava/util/List;I)V

    :cond_11f
    return-void

    .line 1936
    :goto_120
    :try_start_120
    monitor-exit v1
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_73

    throw p0
.end method

.method public final notifyRefreshMagnificationModeToInputFilter(I)V
    .registers 7

    .line 2907
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2908
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v1, :cond_b

    .line 2909
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_30

    .line 2911
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 2912
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 2913
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    if-eqz v3, :cond_2b

    .line 2914
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_2b

    .line 2915
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->refreshMagnificationMode(Landroid/view/Display;)V

    .line 2916
    monitor-exit v0

    return-void

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2919
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_9

    throw p0
.end method

.method public notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 2100
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_8
    if-ltz p0, :cond_18

    .line 2101
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2102
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedLocked()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1b

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 920
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 921
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 920
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V

    :cond_1b
    const/16 v0, 0x258

    if-ne p1, v0, :cond_22

    .line 927
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    :cond_22
    return-void
.end method

.method public onClientChangeLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 5511
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    return-void
.end method

.method public onClientChangeLocked(ZZ)V
    .registers 4

    .line 5520
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 5521
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    if-eqz p1, :cond_e

    .line 5523
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_e
    return-void
.end method

.method public onDoubleTap(I)V
    .registers 4

    .line 6551
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda60;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda60;-><init>()V

    .line 6552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6551
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 4

    .line 6569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;-><init>()V

    .line 6571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6570
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onDoubleTapAndHoldInternal(I)V
    .registers 4

    .line 6632
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6633
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6634
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDoubleTapAndHold(I)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6636
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public final onDoubleTapInternal(I)V
    .registers 4

    .line 6557
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6558
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_16

    :cond_e
    const/4 p0, 0x0

    .line 6561
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_c

    if-eqz p0, :cond_15

    .line 6563
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDoubleTap(I)V

    :cond_15
    return-void

    .line 6561
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_c

    throw p0
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 4

    .line 2040
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2041
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    .line 2043
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 2045
    :cond_12
    :goto_12
    monitor-exit v0

    return v1

    .line 2046
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public onInputFilterInstalled(Z)V
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    .line 913
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 914
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onMagnificationTransitionEndedLocked(IZ)V
    .registers 5

    .line 2891
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2892
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    xor-int/lit8 v1, v1, 0x3

    if-nez p2, :cond_17

    if-eqz v1, :cond_17

    .line 2895
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    if-nez p1, :cond_16

    .line 2897
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    :cond_16
    return-void

    .line 2900
    :cond_17
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda70;-><init>()V

    .line 2902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2900
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPackageRemovedLocked(Ljava/lang/String;)V
    .registers 7

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1008
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;)V

    .line 1011
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1012
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1013
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 1015
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1016
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1017
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1019
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1020
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1a

    :cond_3a
    if-eqz v2, :cond_52

    .line 1026
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1030
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1033
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_52
    return-void
.end method

.method public onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 10

    .line 1054
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1055
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 1056
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>()V

    .line 1059
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1062
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda18;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1066
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1067
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_64

    .line 1068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1069
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1070
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1071
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1072
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_3a

    :cond_64
    if-eqz v3, :cond_6f

    .line 1078
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v4, "enabled_accessibility_services"

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1084
    :cond_6f
    invoke-virtual {p2, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1085
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 1089
    invoke-virtual {p2, v0, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    .line 1091
    invoke-static {v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda20;-><init>()V

    .line 1090
    invoke-virtual {p0, v1, p2, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    :cond_8f
    if-nez v3, :cond_95

    if-eqz p1, :cond_94

    goto :goto_95

    :cond_94
    return v2

    :cond_95
    :goto_95
    return v5
.end method

.method public onProxyChanged(I)V
    .registers 2

    .line 5530
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(I)V

    return-void
.end method

.method public onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 897
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onBoundServicesChangedLocked(ILjava/util/ArrayList;)V

    .line 899
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5581
    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 5582
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSomePackagesChangedLocked(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .registers 6

    .line 995
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 998
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 999
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1002
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_12
    return-void
.end method

.method public onSystemActionsChanged()V
    .registers 3

    .line 2076
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2078
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2079
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onTouchInteractionEnd()V
    .registers 1

    .line 2250
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionEnd()V

    return-void
.end method

.method public onTouchInteractionStart()V
    .registers 1

    .line 2246
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionStart()V

    return-void
.end method

.method public onTouchStateChanged(II)Z
    .registers 3

    .line 2068
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyTouchState(II)Z

    move-result p0

    return p0
.end method

.method public final onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    const/4 v0, 0x0

    .line 3454
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    return-void
.end method

.method public final onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V
    .registers 5

    .line 3464
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 3464
    const-string/jumbo v1, "onUserStateChangedLocked for userId: %d, forceUpdate: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3469
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 3470
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3471
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3472
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3473
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3474
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3475
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3476
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3477
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3478
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3479
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3480
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    const/4 p2, 0x2

    .line 3481
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 3482
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    const/16 p2, 0x20

    .line 3483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    const/16 p2, 0x10

    .line 3484
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    const/16 p2, 0x40

    .line 3485
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 3488
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3489
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsForAllDisplaysLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3490
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFocusAppearanceDataLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final onUserVisibilityChanged(IZ)V
    .registers 4

    .line 3439
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_d

    .line 3441
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_12

    :catchall_b
    move-exception p0

    goto :goto_14

    .line 3443
    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3445
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_b

    throw p0
.end method

.method public final parseAccessibilityServiceInfos(I)Ljava/util/List;
    .registers 9

    .line 2668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2677
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, 0x8c8084

    goto :goto_19

    :cond_16
    const v2, 0xc8084

    .line 2680
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_80

    .line 2682
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 2685
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_7f

    .line 2686
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 2687
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2689
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_7c

    .line 2695
    :cond_3f
    :try_start_3f
    new-instance v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v3, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_46} :catch_74
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_74

    .line 2700
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    move-result v3

    if-nez v3, :cond_70

    .line 2701
    const-string v3, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because service info size is larger than safe parcelable limits."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2701
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2706
    :cond_70
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :catch_74
    move-exception v3

    .line 2697
    const-string v4, "AccessibilityManagerService"

    const-string v5, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_7f
    return-object v0

    :catchall_80
    move-exception p0

    .line 2680
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final parseAccessibilityShortcutInfos(I)Ljava/util/List;
    .registers 3

    .line 2747
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2748
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final performAccessibilityFrameworkFeature(ILandroid/content/ComponentName;I)Z
    .registers 11

    .line 4399
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 4400
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 4404
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4405
    :try_start_f
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4406
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_71

    .line 4407
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 4408
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4409
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v1, v4, v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 4411
    instance-of v4, v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    .line 4412
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, v5}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4414
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchAccessibilityFrameworkFeature(ILandroid/content/ComponentName;)V

    return v5

    .line 4418
    :cond_37
    instance-of p1, v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;

    if-eqz p1, :cond_49

    .line 4419
    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4421
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->activateShortcut(Landroid/content/Context;I)Z

    move-result p1

    .line 4422
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return v5

    .line 4428
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 4429
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, v5}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4431
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_70

    .line 4433
    :cond_64
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4435
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    :goto_70
    return v5

    :catchall_71
    move-exception p0

    .line 4406
    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public performAccessibilityShortcut(IILjava/lang/String;)V
    .registers 9

    .line 4316
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut_enforcePermission()V

    .line 4317
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4318
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.performAccessibilityShortcut"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4322
    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;-><init>()V

    .line 4324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4322
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final performAccessibilityShortcutInternal(IILjava/lang/String;)V
    .registers 8

    .line 4339
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4340
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4341
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b4

    .line 4343
    invoke-virtual {p0, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(II)Ljava/util/List;

    move-result-object v0

    .line 4345
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4346
    const-string p0, "AccessibilityManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No target to perform shortcut, shortcutType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    if-eqz p3, :cond_46

    .line 4350
    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 4352
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Perform shortcut failed, invalid target name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :cond_46
    const/4 v1, 0x1

    if-nez p3, :cond_60

    .line 4357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v1, :cond_59

    .line 4359
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    iget p3, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 4358
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(III)V

    return-void

    :cond_59
    const/4 p3, 0x0

    .line 4362
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4365
    :cond_60
    const-string v0, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4367
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p3

    .line 4368
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p3

    xor-int/2addr p3, v1

    .line 4369
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4371
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationShortcutTriggered(I)V

    return-void

    .line 4374
    :cond_80
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_9d

    .line 4376
    const-string p0, "AccessibilityManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Perform shortcut failed, invalid target name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4381
    :cond_9d
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(ILandroid/content/ComponentName;I)Z

    move-result p3

    if-eqz p3, :cond_a4

    return-void

    .line 4385
    :cond_a4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_b0

    .line 4386
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-void

    .line 4390
    :cond_b0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    return-void

    :catchall_b4
    move-exception p0

    .line 4341
    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public final performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z
    .registers 8

    .line 4442
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4443
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4444
    :goto_9
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 4445
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 4446
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4449
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchShortcutTargetActivity(ILandroid/content/ComponentName;)V

    const/4 p0, 0x1

    .line 4450
    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 4452
    :cond_2e
    monitor-exit v0

    return v2

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public final performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z
    .registers 13

    .line 4476
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4477
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 4479
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    .line 4481
    const-string p0, "AccessibilityManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Perform shortcut failed, invalid component name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    monitor-exit v0

    return v3

    :catchall_26
    move-exception p0

    goto/16 :goto_ad

    .line 4487
    :cond_29
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;

    move-result-object v4

    .line 4488
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4490
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    const/4 v6, 0x1

    if-eqz v2, :cond_40

    move v2, v6

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    const/4 v7, 0x2

    const/16 v8, 0x1d

    if-gt v5, v8, :cond_48

    if-eq p2, v7, :cond_4c

    :cond_48
    if-le v5, v8, :cond_65

    if-nez v2, :cond_65

    :cond_4c
    if-nez v4, :cond_59

    .line 4496
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2, v6}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4498
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_63

    .line 4501
    :cond_59
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2, v3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4503
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 4505
    :goto_63
    monitor-exit v0

    return v6

    :cond_65
    if-ne p2, v7, :cond_7c

    if-le v5, v8, :cond_7c

    if-eqz v2, :cond_7c

    .line 4509
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 4510
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 4511
    monitor-exit v0

    return v6

    :cond_7c
    if-eqz v4, :cond_95

    .line 4515
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 4516
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-boolean v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-nez v1, :cond_8b

    goto :goto_95

    .line 4523
    :cond_8b
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p2, v6}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4525
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked(I)V

    .line 4526
    monitor-exit v0

    return v6

    .line 4518
    :cond_95
    :goto_95
    const-string p0, "AccessibilityManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Perform shortcut failed, service is not ready:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    monitor-exit v0

    return v3

    .line 4527
    :goto_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_26

    throw p0
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 2

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result p0

    return p0
.end method

.method public performScreenCapture(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I
    .registers 3

    .line 7098
    invoke-static {p1, p2}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)I

    move-result p0

    return p0
.end method

.method public persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3036
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method

.method public final persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 9

    .line 3042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3043
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 3044
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 3045
    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_9

    .line 3048
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2f

    const/16 v2, 0x3a

    .line 3049
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3051
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3053
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3054
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object p5, p3

    .line 3056
    :goto_3f
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3057
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 3056
    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 3058
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    return-void

    .line 3076
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 3078
    :try_start_54
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p5, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_61

    .line 3081
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    throw p0
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 5

    .line 2989
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    return-void
.end method

.method public final persistIntToSetting(ILjava/lang/String;I)V
    .registers 6

    .line 3086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3088
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3089
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3088
    invoke-static {p0, p2, p3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 3091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    throw p0
.end method

.method public final persistMagnificationModeSettingsLocked(I)V
    .registers 4

    .line 6283
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postponeWindowStateEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 7047
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 7049
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    .line 7048
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v1

    .line 7050
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 p0, 0x0

    .line 7051
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    goto :goto_33

    .line 7053
    :cond_1a
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    new-instance v2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7055
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7057
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 7058
    monitor-exit v0

    return p0

    .line 7059
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_18

    throw p0
.end method

.method public final readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3800
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_button_target_component"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 3803
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    return v2

    :cond_1d
    const/4 p0, 0x0

    .line 3806
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    return v1

    .line 3809
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    .line 3812
    :cond_2d
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    return v1
.end method

.method public final readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 7

    .line 3774
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->assertNoTapShortcut(I)V

    .line 3775
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRawShortcutSetting(II)Ljava/lang/String;

    move-result-object v0

    .line 3776
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_31

    if-nez v0, :cond_31

    .line 3779
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104024e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 3783
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 3785
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 3789
    :cond_31
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda62;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda62;-><init>()V

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 3792
    :cond_39
    :goto_39
    invoke-virtual {p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 3793
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p0, 0x1

    return p0

    :cond_44
    return v3
.end method

.method public readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 6408
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 6410
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6411
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_magnification_always_on_enabled"

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6410
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    .line 6414
    :goto_22
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 6415
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->isAlwaysOnMagnificationFeatureFlagEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2e

    move v0, v2

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 6417
    :goto_2f
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAlwaysOnMagnificationEnabled()Z

    move-result v3

    if-eq v0, v3, :cond_3e

    .line 6418
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAlwaysOnMagnificationEnabled(Z)V

    .line 6419
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setAlwaysOnMagnificationEnabled(Z)V

    return v2

    :cond_3e
    return v1
.end method

.method public final readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3710
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3711
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3710
    const-string v1, "enabled_accessibility_audio_description_by_default"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3715
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAudioDescriptionByDefaultEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3716
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAudioDescriptionByDefaultEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3686
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3686
    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3690
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3691
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoclickEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 3007
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3009
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    return-void
.end method

.method public final readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V
    .registers 5

    if-nez p4, :cond_5

    .line 3015
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 3017
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2b

    .line 3018
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 3019
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3020
    :cond_10
    :goto_10
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 3021
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 3022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_21

    goto :goto_10

    .line 3025
    :cond_21
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 3027
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2b
    return-void
.end method

.method public readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2966
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    return-void
.end method

.method public final readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5

    .line 2982
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda66;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    return-void
.end method

.method public final readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .registers 5

    .line 3602
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/Set;)Z

    move-result p2

    .line 3604
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/Set;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3606
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3607
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3608
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3609
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3610
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3611
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3612
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    const/4 p3, 0x2

    .line 3613
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x10

    .line 3614
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p3

    or-int/2addr p2, p3

    const/4 p3, 0x1

    .line 3615
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x20

    .line 3616
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x40

    .line 3617
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3618
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3619
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3620
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3621
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3622
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationCursorFollowingMode(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3623
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3624
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowKeyboardLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3625
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3626
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMouseKeysEnabledLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 3627
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readRepeatKeysSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method

.method public final readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 2779
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2780
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2783
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2784
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2785
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x1

    return p0

    .line 2788
    :cond_2b
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x0

    return p0
.end method

.method public final readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3698
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3699
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3698
    const-string v1, "high_text_contrast_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3702
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTextHighContrastEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3703
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTextHighContrastEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/Set;)Z
    .registers 10

    .line 2714
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/4 v2, 0x1

    if-ge v1, p0, :cond_20

    .line 2716
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2717
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2719
    iput-boolean v2, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2724
    :cond_20
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 2725
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2726
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    .line 2732
    :cond_33
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->updateTileServiceMapForAccessibilityServiceLocked(Ljava/util/Set;)V

    return v0
.end method

.method public final readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/Set;)Z
    .registers 8

    .line 2755
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 2756
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;-><init>(Ljava/util/List;)V

    .line 2757
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda57;-><init>()V

    .line 2759
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2760
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 2761
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    const/16 v2, 0x7f

    .line 2762
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutsForTargets(ZILjava/util/List;I)V

    .line 2767
    :cond_32
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2768
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 2774
    :cond_3d
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->updateTileServiceMapForAccessibilityActivityLocked(Ljava/util/Set;)V

    return v1
.end method

.method public final readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 6322
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6323
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6322
    const-string v2, "accessibility_magnification_capability"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6326
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 6327
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationCapabilitiesLocked(I)V

    .line 6328
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setMagnificationCapabilities(I)V

    return v3

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public readMagnificationCursorFollowingMode(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 6352
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6353
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6352
    const-string v2, "accessibility_magnification_cursor_following_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6358
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCursorFollowingMode()I

    move-result v1

    if-eq v0, v1, :cond_25

    .line 6361
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationCursorFollowingMode(I)V

    .line 6362
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_23

    .line 6363
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setCursorFollowingMode(I)V

    :cond_23
    const/4 p0, 0x1

    return p0

    :cond_25
    return v3
.end method

.method public final readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3657
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3657
    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3662
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3663
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationSingleFingerTripleTapEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public readMagnificationFollowKeyboardLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 6384
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6385
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6384
    const-string v2, "accessibility_magnification_follow_keyboard_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v3

    .line 6388
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationFollowKeyboardEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_24

    .line 6389
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationFollowKeyboardEnabled(Z)V

    .line 6390
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setMagnificationFollowKeyboardEnabled(Z)V

    return v1

    :cond_24
    return v3
.end method

.method public readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 6371
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6372
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6371
    const-string v2, "accessibility_magnification_follow_typing_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    .line 6375
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationFollowTypingEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_24

    .line 6376
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationFollowTypingEnabled(Z)V

    .line 6377
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    return v3

    :cond_24
    return v1
.end method

.method public final readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 6310
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6310
    const-string v1, "accessibility_magnification_mode"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    .line 6314
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    if-eq p0, v1, :cond_1a

    .line 6315
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    return v2

    :cond_1a
    return v0
.end method

.method public readMouseKeysEnabledLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 6444
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_mouse_keys_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 6447
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMouseKeysEnabled()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 6448
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMouseKeysEnabled(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public readRepeatKeysSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 6426
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 6429
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6430
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "key_repeat_enabled"

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const/4 v4, 0x1

    .line 6429
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 6433
    :goto_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6434
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x190

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6433
    const-string/jumbo v3, "key_repeat_timeout"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 6436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->setRepeatKeysEnabled(Z)V

    .line 6437
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setRepeatKeysTimeoutMs(I)V

    return v1
.end method

.method public final readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3646
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3647
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3646
    const-string/jumbo v1, "touch_exploration_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3649
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_20

    .line 3650
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    return v0

    :cond_20
    return v2
.end method

.method public final readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 2794
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2795
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2798
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2799
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2800
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2801
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x1

    return p0

    .line 2804
    :cond_2c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x0

    return p0
.end method

.method public final readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3817
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3818
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3817
    const-string v2, "accessibility_non_interactive_ui_timeout_ms"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3821
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3822
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_interactive_ui_timeout_ms"

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3821
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3826
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accessibility/ProxyManager;->updateTimeoutsIfNeeded(II)V

    .line 3827
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result v2

    if-ne v0, v2, :cond_30

    .line 3828
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v2

    if-eq v1, v2, :cond_2f

    goto :goto_30

    :cond_2f
    return v3

    .line 3829
    :cond_30
    :goto_30
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserNonInteractiveUiTimeoutLocked(I)V

    .line 3830
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserInteractiveUiTimeoutLocked(I)V

    .line 3831
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final registerBroadcastReceivers()V
    .registers 11

    .line 1112
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessibilityManagerService PackageMonitor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1118
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1120
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1123
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1124
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1127
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 1130
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1187
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1189
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRegisteredBroadcaseReveivers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1192
    const-string v0, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1199
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1202
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRegisteredBroadcaseReveivers:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z
    .registers 14

    .line 5258
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkForAccessibilityPermissionOrDisplayOwnership(I)V

    .line 5259
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    if-ltz p2, :cond_86

    .line 5266
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTrackedDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 5270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 5275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5277
    :try_start_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v6, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 5278
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    move-object v8, p0

    move-object v4, p1

    move v5, p2

    .line 5277
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/ProxyManager;->registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 5280
    iget-object p0, v8, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_46

    .line 5281
    :try_start_39
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 5282
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_42

    .line 5284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_42
    move-exception v0

    move-object p1, v0

    .line 5282
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_42

    :try_start_45
    throw p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    move-object p0, v0

    .line 5284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5285
    throw p0

    :cond_4c
    move v5, p2

    .line 5271
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The display "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already being proxy-ed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    move v5, p2

    .line 5267
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The display "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist or is not tracked by accessibility."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    move v5, p2

    .line 5264
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The display id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSystemAction(Landroid/app/RemoteAction;I)V
    .registers 8

    .line 1486
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction_enforcePermission()V

    .line 1487
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1488
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1489
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.registerSystemAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1492
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->registerSystemAction(ILandroid/app/RemoteAction;)V

    return-void
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V
    .registers 21

    .line 1707
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService_enforcePermission()V

    .line 1708
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1709
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.registerUiTestAutomationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "owner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ";serviceClient="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";accessibilityServiceInfo="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";flags="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_4f

    :cond_47
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v13, p5

    .line 1715
    :goto_4f
    iget-object v14, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    move/from16 v0, p4

    .line 1716
    :try_start_54
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeCurrentUserForTestAutomationIfNeededLocked(I)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v5, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    .line 1717
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1722
    monitor-exit v14

    return-void

    :catchall_84
    move-exception v0

    monitor-exit v14
    :try_end_86
    .catchall {:try_start_54 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 4

    .line 6780
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6781
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserInitializationCompleteCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6783
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isServiceInitializedLocked()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    if-eqz v1, :cond_20

    .line 6787
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/accessibility/IUserInitializationCompleteCallback;->onUserInitializationComplete(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p0

    goto :goto_22

    :catch_18
    move-exception p0

    .line 6789
    :try_start_19
    const-string p1, "AccessibilityManagerService"

    const-string v1, "Error while dispatching userInitializationComplete callback: "

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6795
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 7

    .line 1681
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1682
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "window="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.removeAccessibilityInteractionConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1685
    :cond_23
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    return-void
.end method

.method public removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z
    .registers 6

    .line 1342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1344
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1346
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1347
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1348
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    .line 1354
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_27

    .line 1356
    :cond_1f
    iget-object p0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    .line 1361
    monitor-exit v0

    return p0

    .line 1363
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1d

    throw p0
.end method

.method public removeDeviceIdLocked(I)V
    .registers 3

    .line 5539
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    .line 5540
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->resetClientsLocked(ILandroid/os/RemoteCallbackList;)V

    const/4 p1, 0x1

    .line 5543
    invoke-virtual {p0, p1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    return-void
.end method

.method public final removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 12

    .line 4216
    iget-boolean v0, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v0, :cond_ae

    .line 4217
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_18

    goto/16 :goto_ae

    .line 4222
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x2

    .line 4223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 4224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x10

    .line 4225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x20

    .line 4226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x40

    .line 4227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4229
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 4230
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_52
    :goto_52
    if-ge v3, v2, :cond_ae

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    .line 4231
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v5

    .line 4232
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 4233
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 4234
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v8, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    invoke-direct {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {p0, v5, v7, v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 4238
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_87

    goto :goto_52

    .line 4243
    :cond_87
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 4245
    const-class v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4246
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v5, :cond_52

    if-nez v4, :cond_9f

    goto :goto_52

    .line 4251
    :cond_9f
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda43;

    invoke-direct {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda43;-><init>()V

    invoke-static {v7, v5, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_52

    :cond_ae
    :goto_ae
    return-void
.end method

.method public final removeUser(I)V
    .registers 4

    .line 2344
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2346
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 2347
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->onUserRemoved(I)V

    return-void

    :catchall_11
    move-exception p0

    .line 2346
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public requestDelegating(I)V
    .registers 4

    .line 6536
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda63;-><init>()V

    .line 6538
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6537
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6536
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestDelegatingInternal(I)V
    .registers 4

    .line 6542
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6543
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6544
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDelegating(I)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6546
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public requestDragging(II)V
    .registers 5

    .line 6522
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda49;-><init>()V

    .line 6523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 6522
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestDraggingInternal(II)V
    .registers 5

    .line 6527
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6528
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6529
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDragging(II)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6531
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 4

    .line 6576
    instance-of v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    if-eqz v0, :cond_27

    instance-of v0, p1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v0, :cond_9

    return-void

    .line 6584
    :cond_9
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6585
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda58;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda58;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6587
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 4

    .line 6508
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda54;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda54;-><init>()V

    .line 6509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6508
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestTouchExplorationInternal(I)V
    .registers 4

    .line 6513
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6514
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6515
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestTouchExploration(I)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6517
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public final resetClientsLocked(ILandroid/os/RemoteCallbackList;)V
    .registers 7

    if-eqz p2, :cond_2a

    .line 5548
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 5551
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 5552
    :goto_e
    :try_start_e
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 5553
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 5554
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v3, p1, :cond_23

    .line 5555
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_28

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5558
    :cond_26
    monitor-exit p0

    return-void

    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_21

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final restoreCurrentUserAfterTestAutomationIfNeededLocked()V
    .registers 5

    .line 1767
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    const-string v1, "AccessibilityManagerService"

    if-nez v0, :cond_d

    .line 1768
    const-string/jumbo p0, "restoreCurrentUserForTestAutomationIfNeededLocked(): ignoring because device doesn\'t support visible background users"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1772
    :cond_d
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_19

    .line 1773
    const-string/jumbo p0, "restoreCurrentUserForTestAutomationIfNeededLocked(): ignoring because mRealCurrentUserId is already USER_CURRENT"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1779
    :cond_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1777
    const-string/jumbo v3, "restoreCurrentUserForTestAutomationIfNeededLocked(): restoring current user to %d after using %d for test automation purposes"

    invoke-static {v1, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1780
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 1781
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 1782
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method public restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 2354
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2355
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2357
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2358
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 2359
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2360
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget p4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2364
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p2, 0x0

    .line 2365
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    return-void
.end method

.method public final restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;II)V
    .registers 8

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_5

    goto :goto_2c

    .line 1246
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_47

    const/4 p2, 0x1

    if-ne p1, p2, :cond_e

    move p1, p2

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 1252
    :goto_f
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    .line 1253
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1254
    iget v1, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda71;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda71;-><init>()V

    const-string v3, "accessibility_button_targets"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    .line 1256
    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p1, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    if-eqz p1, :cond_33

    .line 1263
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1265
    :cond_33
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1267
    :goto_36
    iget p1, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda72;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda72;-><init>()V

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 1269
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    .line 1270
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void

    :catch_47
    move-exception p0

    .line 1248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "number format is incorrect"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final restoreShortcutTargets(Ljava/lang/String;II)V
    .registers 11

    .line 2381
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->assertNoTapShortcut(I)V

    .line 2383
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2384
    :try_start_6
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1e

    .line 2386
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v4, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v3, p2, v4}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_22

    :catchall_1b
    move-exception p0

    goto/16 :goto_a6

    .line 2388
    :cond_1e
    invoke-virtual {p3, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v2

    :goto_22
    const/4 v3, 0x1

    if-ne p2, v1, :cond_85

    .line 2391
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104024e

    .line 2392
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2393
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    goto :goto_3a

    .line 2394
    :cond_36
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    :goto_3a
    if-eqz v4, :cond_44

    .line 2396
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->stringSetContainsComponentName(Ljava/util/Set;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_44

    move v5, v3

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    .line 2397
    :goto_45
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda74;

    invoke-direct {v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda74;-><init>()V

    invoke-virtual {p0, p1, v6, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    if-eqz v5, :cond_7d

    .line 2400
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->stringSetContainsComponentName(Ljava/util/Set;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 2402
    const-string p1, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing default service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from restore of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "accessibility_shortcut_target_service"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda75;

    invoke-direct {p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda75;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2408
    :cond_7d
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 2409
    monitor-exit v0

    return-void

    .line 2412
    :cond_85
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda76;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda76;-><init>()V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 2416
    :cond_8d
    invoke-virtual {p3, v2, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    .line 2417
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda77;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda77;-><init>()V

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2419
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2420
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2421
    monitor-exit v0

    return-void

    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_6 .. :try_end_a7} :catchall_1b

    throw p0
.end method

.method public scheduleBindInput()V
    .registers 3

    .line 6666
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda67;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda67;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleCreateImeSession(Landroid/util/ArraySet;)V
    .registers 4

    .line 6734
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda65;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 3232
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3233
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;-><init>()V

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 3235
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3233
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNotifyMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 2480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 2481
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2482
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2483
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_14
    if-ltz v2, :cond_3c

    .line 2484
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2485
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_35

    const/16 v6, 0x1002

    .line 2486
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2487
    invoke-virtual {v5, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3e

    .line 2488
    :cond_35
    :goto_35
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMotionEvent(Landroid/view/MotionEvent;)V

    move v4, v3

    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 2492
    :cond_3c
    monitor-exit v1

    return v4

    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_33

    throw p0
.end method

.method public final scheduleNotifyTouchState(II)Z
    .registers 9

    .line 2498
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2499
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2500
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_10
    if-ltz v1, :cond_2a

    .line 2501
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2502
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2503
    invoke-virtual {v4, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyTouchState(II)V

    move v3, v2

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2c

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 2507
    :cond_2a
    monitor-exit v0

    return v3

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_25

    throw p0
.end method

.method public scheduleSetImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 5

    .line 6759
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;-><init>()V

    .line 6760
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 6759
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleStartInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6

    .line 6708
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda68;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda68;-><init>()V

    .line 6709
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 6708
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUnbindInput()V
    .registers 3

    .line 6687
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda79;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda79;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    const/4 v0, 0x0

    .line 3189
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    return-void
.end method

.method public scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V
    .registers 5

    .line 3194
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result v0

    .line 3195
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getLastSentClientStateLocked()I

    move-result v1

    if-ne v1, v0, :cond_c

    if-eqz p2, :cond_1d

    :cond_c
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 3196
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-gtz p2, :cond_1e

    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 3197
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-lez p2, :cond_1d

    goto :goto_1e

    :cond_1d
    return-void

    .line 3198
    :cond_1e
    :goto_1e
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setLastSentClientStateLocked(I)V

    .line 3199
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda15;-><init>()V

    .line 3201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3199
    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 3266
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 3261
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 14

    .line 1369
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1370
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.sendAccessibilityEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1376
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1377
    :try_start_2d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_48

    .line 1380
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1382
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    .line 1383
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    goto :goto_48

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto/16 :goto_130

    .line 1390
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1393
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1394
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 1395
    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v4

    .line 1393
    invoke-virtual {v0, v2, v3, p2, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1398
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_ab

    .line 1399
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1400
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1401
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v7

    .line 1402
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v10

    .line 1400
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    move v0, v2

    goto :goto_90

    :cond_8f
    move v0, v3

    .line 1406
    :goto_90
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_ac

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_ac

    .line 1407
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1409
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1407
    invoke-static {v5, p0, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ac

    :cond_ab
    move v0, v3

    .line 1412
    :cond_ac
    :goto_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_2d .. :try_end_ad} :catchall_44

    if-eqz v0, :cond_124

    .line 1419
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v0

    .line 1420
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_c5

    if-ne v0, v4, :cond_c5

    .line 1423
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowId(II)I

    move-result v0

    .line 1425
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    .line 1427
    :cond_c5
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1428
    :try_start_c8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_de

    if-eq v0, v4, :cond_de

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1430
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_de

    goto :goto_df

    :catchall_db
    move-exception v0

    move-object p0, v0

    goto :goto_122

    :cond_de
    move v2, v3

    .line 1433
    :goto_df
    monitor-exit p2
    :try_end_e0
    .catchall {:try_start_c8 .. :try_end_e0} :catchall_db

    if-eqz v2, :cond_116

    .line 1435
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x200

    invoke-virtual {p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p2

    if-eqz p2, :cond_104

    .line 1436
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.computeWindowsForAccessibility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1439
    :cond_104
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 1441
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 1444
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->postponeWindowStateEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    if-eqz p2, :cond_116

    goto :goto_12f

    .line 1449
    :cond_116
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1450
    :try_start_119
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1451
    monitor-exit v1

    goto :goto_124

    :catchall_11e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_11e

    throw p0

    .line 1433
    :goto_122
    :try_start_122
    monitor-exit p2
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_db

    throw p0

    .line 1454
    :cond_124
    :goto_124
    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    if-eq p0, p2, :cond_12f

    .line 1455
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_12f
    :goto_12f
    return-void

    .line 1412
    :goto_130
    :try_start_130
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_44

    throw p0
.end method

.method public sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 4975
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 4978
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendPendingWindowStateChangedEventsForAvailableWindowLocked(I)V

    .line 4980
    :cond_e
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method public final sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 5

    .line 4985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 4986
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda78;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda78;-><init>()V

    .line 4988
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4986
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1470
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 1472
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 1474
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 1475
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    .line 1474
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public sendFingerprintGesture(I)Z
    .registers 8

    .line 5002
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x20004

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5004
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.sendFingerprintGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gestureKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 5009
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5010
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_40

    .line 5015
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3e

    .line 5016
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez p0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 5019
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result p0

    return p0

    :catchall_3e
    move-exception p0

    goto :goto_48

    .line 5013
    :cond_40
    :try_start_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5015
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_3e

    throw p0
.end method

.method public sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 2052
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2056
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public sendPendingWindowStateChangedEventsForAvailableWindowLocked(I)V
    .registers 5

    .line 7028
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 7030
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 7031
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    .line 7032
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->-$$Nest$mgetWindowId(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 7033
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7034
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->-$$Nest$msendPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)V

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    return-void
.end method

.method public sendRestrictedDialogIntent(Ljava/lang/String;II)Z
    .registers 5

    .line 5346
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5350
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5351
    invoke-static {p2, p1, p3}, Lcom/android/server/accessibility/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_17

    .line 5354
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return p3

    .line 5361
    :cond_17
    :try_start_17
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 5362
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ecm/EnhancedConfirmationManager;

    const-string v0, "android:bind_accessibility_service"

    .line 5363
    invoke-virtual {p2, p1, v0}, Landroid/app/ecm/EnhancedConfirmationManager;->createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 5365
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_44

    :catch_2d
    move-exception p0

    .line 5367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception when retrieving package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccessibilityManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method

.method public final sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V
    .registers 5

    .line 3240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 3241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    return-void
.end method

.method public final sendStateToAllClients(II)V
    .registers 4

    .line 3207
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 3208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method public final sendStateToClients(II)V
    .registers 3

    .line 3212
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public final sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 8

    .line 3217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3218
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.sendStateToClients"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 3221
    :cond_22
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    .registers 9

    .line 5227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5228
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.setAccessibilityWindowAttributes"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 5231
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V

    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 6

    .line 980
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 984
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v1

    if-eq p2, v1, :cond_20

    .line 985
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setBindInstantServiceAllowedLocked(Z)V

    .line 986
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 988
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 6456
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda41;-><init>()V

    .line 6460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6457
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6456
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .registers 5

    .line 6483
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6484
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6485
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6487
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public final setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 7

    .line 6765
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6766
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 6767
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_38

    .line 6768
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6769
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 6770
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3a

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 6773
    :cond_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_33

    throw p0
.end method

.method public setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .registers 7

    .line 5082
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationConnection_enforcePermission()V

    .line 5083
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x84

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5085
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.setMagnificationConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 5090
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    if-nez p1, :cond_5a

    .line 5092
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 5093
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 5097
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 5098
    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 5099
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 5100
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    .line 5101
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_5a
    return-void
.end method

.method public setMotionEventInjectors(Landroid/util/SparseArray;)V
    .registers 3

    .line 2159
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2160
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 2162
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2163
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final setNonA11yToolNotificationToMatchSafetyCenter()V
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterManager;

    .line 933
    invoke-virtual {v0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 934
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setSendingNonA11yToolNotificationLocked(Z)V

    .line 936
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setPackageMonitor(Lcom/android/internal/content/PackageMonitor;)V
    .registers 2

    .line 1106
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 7

    .line 1692
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection_enforcePermission()V

    .line 1693
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1694
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.setPictureInPictureActionReplacingConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1697
    :cond_25
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 5

    .line 6492
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda48;-><init>()V

    .line 6494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 6493
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6492
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setServiceDetectsGesturesInternal(IZ)V
    .registers 5

    .line 6498
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6499
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setServiceDetectsGesturesEnabled(IZ)V

    .line 6500
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_18

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_18

    .line 6501
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setServiceDetectsGesturesEnabled(IZ)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 6503
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public setSystemAudioCaptioningEnabled(ZI)V
    .registers 3

    .line 5238
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled_enforcePermission()V

    .line 5239
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningEnabled(ZI)V

    return-void
.end method

.method public setSystemAudioCaptioningUiEnabled(ZI)V
    .registers 3

    .line 5251
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled_enforcePermission()V

    .line 5252
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningUiEnabled(ZI)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 6466
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda40;-><init>()V

    .line 6470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6467
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6466
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .registers 5

    .line 6475
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6476
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_11

    .line 6477
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 6479
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public setTrustedAccessibilityServiceForTesting(Landroid/content/ComponentName;)V
    .registers 2

    .line 4932
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTrustedAccessibilityServiceForTesting_enforcePermission()V

    return-void
.end method

.method public final showAccessibilityTargetsSelection(III)V
    .registers 7

    .line 2585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_11

    .line 2587
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 2588
    :cond_11
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2589
    :goto_17
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 2590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2591
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2592
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2593
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 7

    .line 3381
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3382
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3383
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3385
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 3386
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3387
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    goto :goto_9c

    .line 3389
    :cond_27
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_33

    .line 3390
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3391
    monitor-exit v0

    return-void

    .line 3393
    :cond_33
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    .line 3394
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    const p1, 0x104000a

    .line 3395
    invoke-virtual {v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    const/high16 v3, 0x1040000

    .line 3416
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x10403ca

    .line 3422
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x10403c9

    .line 3423
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3425
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 3426
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 3428
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3430
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3431
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 3432
    monitor-exit v0

    return-void

    :goto_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_25

    throw p0
.end method

.method public final skipVolumeShortcutDialogTimeoutRestriction(I)V
    .registers 4

    .line 7149
    const-string/jumbo v0, "skip_accessibility_shortcut_dialog_timeout_restriction"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(ILjava/lang/String;I)V

    return-void
.end method

.method public startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 5323
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationEvent_enforcePermission()V

    .line 5324
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z
    .registers 4

    .line 5308
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationSequence_enforcePermission()V

    .line 5309
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8

    .line 6714
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6716
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 6717
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 6718
    iput-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    .line 6719
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 6720
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_2e

    .line 6721
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6722
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 6723
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_30

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 6726
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_29

    throw p0
.end method

.method public stopFlashNotificationSequence(Ljava/lang/String;)Z
    .registers 2

    .line 5315
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->stopFlashNotificationSequence_enforcePermission()V

    .line 5316
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final stringSetContainsComponentName(Ljava/util/Set;Landroid/content/ComponentName;)Z
    .registers 3

    if-eqz p2, :cond_1c

    .line 2437
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;-><init>()V

    .line 2438
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2439
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public switchUser(I)V
    .registers 11

    .line 2255
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateUserIdIfNeeded(I)V

    .line 2258
    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUser, userId to switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2263
    :try_start_1f
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_40

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_40

    .line 2264
    const-string p0, "AccessibilityManagerService"

    const-string/jumbo v1, "userId: %d is already initialized"

    .line 2265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2264
    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    goto/16 :goto_c9

    .line 2268
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_3d

    .line 2271
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    move-result-object v0

    .line 2272
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityShortcutInfos(I)Ljava/util/List;

    move-result-object v1

    .line 2273
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 2275
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 2273
    invoke-static {v2, v3, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityTileUtils;->getValidA11yTileServices(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Ljava/util/List;I)Ljava/util/Set;

    move-result-object v2

    .line 2281
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2283
    :try_start_5a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v4

    .line 2284
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityUserState;->onSwitchToAnotherUserLocked()V

    .line 2287
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_85

    .line 2288
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;-><init>()V

    .line 2290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v4, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2288
    invoke-static {v7, p0, v8, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_85

    :catchall_83
    move-exception p0

    goto :goto_c7

    .line 2294
    :cond_85
    :goto_85
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2295
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2297
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    .line 2300
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onSwitchUserLocked(ILjava/util/Set;)V

    .line 2304
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 v0, 0x0

    .line 2311
    invoke-virtual {p0, p1, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 2315
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityMenuToMigrateIfNeeded()V

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateShortcutsForCurrentNavigationMode()V

    .line 2321
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserInitializationCompleteCallbacks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_aa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IUserInitializationCompleteCallback;
    :try_end_b6
    .catchall {:try_start_5a .. :try_end_b6} :catchall_83

    .line 2323
    :try_start_b6
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-interface {v0, v1}, Landroid/view/accessibility/IUserInitializationCompleteCallback;->onUserInitializationComplete(I)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_83

    goto :goto_aa

    :catch_bc
    move-exception v0

    .line 2325
    :try_start_bd
    const-string v1, "AccessibilityManagerService"

    const-string v2, "Error while dispatching userInitializationComplete callback: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    .line 2330
    :cond_c5
    monitor-exit v3

    return-void

    :goto_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_bd .. :try_end_c8} :catchall_83

    throw p0

    .line 2268
    :goto_c9
    :try_start_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_3d

    throw p0
.end method

.method public unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 4

    .line 6593
    instance-of v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    if-eqz v0, :cond_19

    instance-of v0, p1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v0, :cond_9

    return-void

    .line 6601
    :cond_9
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6602
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda61;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public final unbindInput()V
    .registers 5

    .line 6691
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6692
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 6693
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 6694
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_2b

    .line 6695
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 6696
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 6697
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputLocked()V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2d

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 6700
    :cond_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_26

    throw p0
.end method

.method public final unbindInputForConnection(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 5

    .line 6624
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserId:I

    .line 6625
    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->unbindAccessibilityFromCurrentClient(II)V

    .line 6626
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6627
    :try_start_e
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputLocked()V

    .line 6628
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final unlockUser(I)V
    .registers 4

    .line 2334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2335
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p1

    .line 2336
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_17

    .line 2337
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2338
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 2340
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public unregisterObservers()V
    .registers 4

    .line 702
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHearingDeviceNotificationController:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;

    if-eqz v0, :cond_7

    .line 703
    invoke-virtual {v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->stopListenForCallState()V

    .line 706
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyGestureEventHandler:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAccessibilityContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 708
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRegisteredBroadcaseReveivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 709
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1f

    .line 711
    :cond_31
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public unregisterProxyForDisplay(I)Z
    .registers 4

    .line 5291
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkForAccessibilityPermissionOrDisplayOwnership(I)V

    .line 5292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5294
    :try_start_9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->unregisterProxy(I)Z

    move-result p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 5296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5297
    throw p0
.end method

.method public unregisterSystemAction(I)V
    .registers 7

    .line 1503
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction_enforcePermission()V

    .line 1504
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1505
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1506
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.unregisterSystemAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1510
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->unregisterSystemAction(I)V

    return-void
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 8

    .line 1728
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1729
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.unregisterUiTestAutomationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1732
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1733
    :try_start_26
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreCurrentUserAfterTestAutomationIfNeededLocked()V

    .line 1735
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V
    .registers 3

    .line 6802
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6803
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserInitializationCompleteCallbacks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6804
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unsafeIsLockHeld()Z
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final updateA11yTileServicesInQuickSettingsPanel(Ljava/util/Set;Ljava/util/Set;I)V
    .registers 8

    .line 4734
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 4731
    const-string/jumbo v1, "updateA11yTileServicesInQuickSettingsPanel: newQsTargets: %s , currentQsTargets: %s, userId: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4730
    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4737
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_25

    .line 4740
    const-string/jumbo p0, "statusBarManager is not yet initialized"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4746
    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    move-result-object p0

    .line 4747
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 4750
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;-><init>(Ljava/util/Set;)V

    .line 4751
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v3, p0, p3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda45;-><init>(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    .line 4752
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4773
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda46;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda46;-><init>(Ljava/util/Set;)V

    .line 4774
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda47;

    invoke-direct {p2, p0, p3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda47;-><init>(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    .line 4775
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4795
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_77

    .line 4796
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to add/remove Tiles for a11y features: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "as the Tiles aren\'t provided"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method

.method public final updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3632
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canIntrospect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3633
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 3634
    :goto_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3636
    :try_start_16
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "accessibility_enabled"

    .line 3638
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3636
    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_27

    .line 3641
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3642
    throw p0
.end method

.method public final updateAccessibilityShortcutTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 9

    const/4 v0, 0x1

    if-ne p2, v0, :cond_22

    .line 4007
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_a
    if-ltz v1, :cond_22

    .line 4008
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4009
    iget-boolean v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_1f

    .line 4011
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    .line 4010
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 4018
    :cond_22
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 4019
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    const/16 v1, 0x10

    if-ne p2, v1, :cond_65

    .line 4024
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v1

    .line 4026
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    move-result-object v2

    .line 4027
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yQsTilesInQsPanel()Landroid/util/ArraySet;

    move-result-object v3

    .line 4028
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    .line 4030
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-eqz v5, :cond_42

    .line 4031
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 4032
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 4037
    :cond_65
    invoke-virtual {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    move-result v1

    if-nez v1, :cond_6c

    return-void

    .line 4041
    :cond_6c
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 4043
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 4046
    iget p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 4048
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 4049
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4046
    const-string p1, "UserState shortcut targets: userId: %s, type: %s, targets: %s"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAlwaysOnMagnification()V
    .registers 3

    .line 6401
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6402
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 6403
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3583
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_26

    .line 3585
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3586
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_23

    .line 3587
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    .line 3590
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    return-void

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3594
    :cond_26
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    return-void
.end method

.method public final updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 3964
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3965
    :try_start_3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3966
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.fingerprint"

    .line 3967
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 3969
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_53

    .line 3971
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 3973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_49

    .line 3975
    :try_start_2a
    const-string v5, "fingerprint"

    .line 3976
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 3975
    invoke-static {v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_4b

    .line 3978
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_50

    .line 3981
    new-instance v1, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3982
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v5, v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    goto :goto_53

    :catchall_49
    move-exception p0

    goto :goto_5c

    :catchall_4b
    move-exception p0

    .line 3978
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3979
    throw p0

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 3988
    :cond_53
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_49

    .line 3989
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz p0, :cond_5b

    .line 3990
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    :cond_5b
    return-void

    .line 3988
    :goto_5c
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_49

    throw p0
.end method

.method public final updateFocusAppearanceDataLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 6640
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    return-void

    .line 6643
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6644
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.updateFocusAppearanceDataLocked"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 6647
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 12

    .line 3272
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_128

    .line 3276
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3278
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v1

    .line 3288
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_19

    or-int/lit8 v1, v1, 0x40

    .line 3291
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    if-eqz v2, :cond_21

    or-int/lit8 v1, v1, 0x20

    .line 3295
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3296
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_4d

    or-int/lit8 v2, v1, 0x2

    .line 3298
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isServiceHandlesDoubleTapEnabledLocked()Z

    move-result v3

    if-eqz v3, :cond_37

    or-int/lit16 v2, v1, 0x82

    .line 3301
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMultiFingerGesturesEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_40

    or-int/lit16 v1, v2, 0x100

    goto :goto_41

    :cond_40
    move v1, v2

    .line 3304
    :goto_41
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTwoFingerPassthroughEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_4d

    or-int/lit16 v1, v1, 0x200

    goto :goto_4d

    :catchall_4a
    move-exception p0

    goto/16 :goto_129

    .line 3308
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isFilterKeyEventsEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_55

    or-int/lit8 v1, v1, 0x4

    .line 3311
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isSendMotionEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5d

    or-int/lit16 v1, v1, 0x400

    .line 3314
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_65

    or-int/lit8 v1, v1, 0x8

    .line 3317
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isPerformGesturesEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_6d

    or-int/lit8 v1, v1, 0x10

    .line 3322
    :cond_6d
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_77
    if-ge v7, v3, :cond_88

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3323
    iget v9, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    or-int/2addr v5, v9

    .line 3324
    iget v8, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mObservedMotionEventSources:I

    or-int/2addr v6, v8

    goto :goto_77

    :cond_88
    if-eqz v5, :cond_8c

    or-int/lit16 v1, v1, 0x800

    .line 3329
    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMouseKeysEnabled()Z

    move-result v2

    if-eqz v2, :cond_94

    or-int/lit16 v1, v1, 0x2000

    :cond_94
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c0

    .line 3333
    iget-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v7, :cond_ae

    .line 3334
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 3335
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v2, :cond_ab

    .line 3336
    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 3340
    :cond_ab
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    move v4, v3

    .line 3343
    :cond_ae
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v3, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 3344
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p1, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setCombinedGenericMotionEventSources(I)V

    .line 3346
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setCombinedMotionEventObservedSources(I)V

    goto :goto_f9

    .line 3349
    :cond_c0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_f9

    .line 3350
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 3351
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v1, v5, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 3352
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetServiceDetectsGestures()V

    .line 3353
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 3356
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_e0
    if-ge v4, v5, :cond_f8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroid/view/Display;

    .line 3358
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    .line 3359
    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->isServiceDetectsGesturesEnabled(I)Z

    move-result v7

    .line 3360
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setServiceDetectsGesturesEnabled(IZ)V

    goto :goto_e0

    :cond_f8
    move v4, v3

    .line 3367
    :cond_f9
    :goto_f9
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_d .. :try_end_fa} :catchall_4a

    if-eqz v4, :cond_128

    .line 3369
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x1200

    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 3371
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.setInputFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputFilter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 3375
    :cond_11e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 3376
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ProxyManager;->setAccessibilityInputFilter(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    :cond_128
    :goto_128
    return-void

    .line 3367
    :goto_129
    :try_start_129
    monitor-exit v0
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_4a

    throw p0
.end method

.method public final updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 3551
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_46

    .line 3553
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3554
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3555
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_43

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_43

    .line 3559
    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3562
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_46
    return-void
.end method

.method public final updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 6243
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 6244
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 6245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 6246
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 6247
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6250
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationConnectionIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 6253
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v2

    if-nez v2, :cond_31

    .line 6256
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 6257
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_52

    .line 6260
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_52

    .line 6261
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 6262
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_52
    return-void
.end method

.method public final updateMagnificationConnectionIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 3910
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->supportWindowMagnification()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 3916
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    .line 3920
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3921
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3925
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    .line 3927
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnection(Z)Z

    return-void
.end method

.method public final updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3869
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_8

    goto/16 :goto_8c

    .line 3873
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3874
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3875
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterAll()V

    return-void

    .line 3882
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3883
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationSingleFingerTripleTapEnabledLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6e

    .line 3886
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_6e

    .line 3896
    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8c

    .line 3897
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    .line 3898
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3899
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 3900
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    goto :goto_6b

    .line 3902
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 3903
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregister(I)V

    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 3887
    :cond_6e
    :goto_6e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_8c

    .line 3888
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    .line 3889
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 3890
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 3889
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final updateMagnificationModeChangeSettingsForAllDisplaysLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 3495
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 3496
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 3497
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 3498
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public final updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 5

    .line 2874
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    goto :goto_d

    .line 2878
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    .line 2881
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 2882
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p1

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2881
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V

    return-void
.end method

.method public final updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 3570
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_22

    .line 3572
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3573
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1f

    const/4 p0, 0x1

    .line 3575
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3579
    :cond_22
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    return-void
.end method

.method public final updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 4258
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result p0

    .line 4259
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v0

    if-eqz p0, :cond_c

    if-nez v0, :cond_42

    .line 4264
    :cond_c
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4265
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 4266
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v5

    if-ge v3, v5, :cond_28

    move v3, v5

    .line 4270
    :cond_28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v5

    if-ge v4, v5, :cond_39

    move v4, v5

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3c
    if-nez p0, :cond_3f

    move p0, v4

    :cond_3f
    if-nez v0, :cond_42

    move v0, v3

    .line 4282
    :cond_42
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setNonInteractiveUiTimeoutLocked(I)V

    .line 4283
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setInteractiveUiTimeoutLocked(I)V

    return-void
.end method

.method public final updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 2834
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2835
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.updateRelevantEventsLocked"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2838
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    .line 3096
    iget-object v15, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 3098
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v16

    .line 3101
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3102
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v17, 0x0

    move/from16 v2, v17

    :goto_1d
    if-ge v2, v0, :cond_109

    .line 3103
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3105
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3104
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3106
    iget-object v5, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3108
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3111
    const-string v6, "AccessibilityManagerService"

    if-nez v16, :cond_5f

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v7

    if-nez v7, :cond_5f

    .line 3112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring non-encryption-aware service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    move/from16 v18, v0

    move/from16 v19, v2

    goto/16 :goto_103

    .line 3117
    :cond_5f
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    .line 3118
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    goto :goto_59

    .line 3121
    :cond_74
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f7

    iget-object v7, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 3122
    invoke-virtual {v7}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v7

    if-nez v7, :cond_f7

    .line 3124
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3125
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3124
    invoke-virtual {v9, v7, v8, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 3127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping enabling service disallowed by device admin policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    iget v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v9, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_59

    :cond_b4
    if-nez v5, :cond_e6

    move v6, v0

    .line 3133
    new-instance v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    move v5, v2

    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    move v7, v5

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v8, v5, 0x1

    sput v8, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    move v8, v6

    iget-object v6, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    move v10, v7

    iget-object v7, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    move v11, v8

    iget-object v8, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    move v12, v10

    .line 3135
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v10

    move v13, v11

    iget-object v11, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    move v14, v12

    .line 3136
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v12

    move/from16 v18, v13

    iget-object v13, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move/from16 v19, v14

    iget-object v14, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-direct/range {v0 .. v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    move-object v5, v0

    goto :goto_f3

    :cond_e6
    move/from16 v18, v0

    move/from16 v19, v2

    .line 3138
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    goto :goto_103

    .line 3141
    :cond_f3
    :goto_f3
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    goto :goto_103

    :cond_f7
    move/from16 v18, v0

    move/from16 v19, v2

    if-eqz v5, :cond_103

    .line 3144
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 3145
    invoke-virtual {v9, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    :cond_103
    :goto_103
    add-int/lit8 v2, v19, 0x1

    move/from16 v0, v18

    goto/16 :goto_1d

    .line 3150
    :cond_109
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3151
    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    move/from16 v2, v17

    :goto_116
    if-ge v2, v0, :cond_136

    .line 3153
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3154
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_133

    .line 3156
    iget-object v4, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    .line 3160
    :cond_136
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 3161
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_145

    .line 3163
    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 3165
    :cond_145
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 3169
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3170
    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_166

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3171
    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 3175
    :cond_166
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v3, "enabled_accessibility_services"

    invoke-virtual {v9, v3, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 3180
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v3, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v9, v3, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 3185
    :cond_179
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateShortcutTargetSets(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;)V
    .registers 7

    .line 4056
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 4057
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    .line 4058
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4059
    invoke-virtual {p1, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->updateShortcutTargetsLocked(Ljava/util/Set;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4061
    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda30;

    invoke-direct {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_33
    if-eqz v0, :cond_38

    .line 4066
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_38
    return-void
.end method

.method public updateShortcutsForCurrentNavigationMode()V
    .registers 11

    .line 2524
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2525
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2526
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2527
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_7a

    .line 2529
    :cond_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2530
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_mode"

    iget v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const/4 v5, -0x1

    .line 2529
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_29

    move v2, v4

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    const/16 v5, 0x20

    .line 2533
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 2534
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 2535
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v9, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v8, v9}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getButtonMode(Landroid/content/Context;I)I

    move-result v8

    if-eqz v2, :cond_48

    if-ne v8, v3, :cond_46

    .line 2541
    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2542
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    :cond_46
    move v8, v4

    goto :goto_5a

    .line 2548
    :cond_48
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2549
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    .line 2553
    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2554
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 2559
    :cond_5a
    :goto_5a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 2560
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 2558
    invoke-static {v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateShortcutTargetSets(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;)V

    .line 2562
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p0, v8, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->setButtonMode(Landroid/content/Context;II)Z

    .line 2563
    monitor-exit v0

    return-void

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_11

    throw p0
.end method

.method public final updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 16

    .line 3723
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    .line 3728
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v1, :cond_38

    .line 3730
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3731
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 3733
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceHandlesDoubleTapEnabled()Z

    move-result v0

    .line 3734
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMultiFingerGesturesEnabled()Z

    move-result v1

    .line 3735
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isTwoFingerPassthroughEnabled()Z

    move-result v3

    .line 3736
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isSendMotionEventsEnabled()Z

    move-result v5

    move v6, v5

    move v5, v3

    move v3, v1

    move v1, v0

    move v0, v4

    goto :goto_3c

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_38
    move v1, v2

    move v3, v1

    move v5, v3

    move v6, v5

    .line 3740
    :goto_3c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v7

    if-eq v0, v7, :cond_60

    .line 3741
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 3742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3744
    :try_start_49
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "touch_exploration_enabled"

    .line 3745
    iget v11, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3744
    invoke-static {v9, v10, v0, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_5b

    .line 3748
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_60

    :catchall_5b
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3749
    throw p0

    .line 3753
    :cond_60
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->resetServiceDetectsGestures()V

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p0

    .line 3755
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :cond_6e
    if-ge v8, v7, :cond_95

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3756
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :cond_7d
    :goto_7d
    if-ge v11, v10, :cond_6e

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Landroid/view/Display;

    .line 3757
    invoke-virtual {v12}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    .line 3758
    invoke-virtual {v9, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 3759
    invoke-virtual {p1, v12, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setServiceDetectsGesturesEnabled(IZ)V

    goto :goto_7d

    .line 3763
    :cond_95
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setServiceHandlesDoubleTapLocked(Z)V

    .line 3764
    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setMultiFingerGesturesLocked(Z)V

    .line 3765
    invoke-virtual {p1, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->setTwoFingerPassthroughLocked(Z)V

    .line 3766
    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSendMotionEventsEnabled(Z)V

    return-void
.end method

.method public updateWindowsForAccessibilityCallbackLocked()V
    .registers 2

    .line 5563
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 9

    .line 3510
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 3511
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    .line 3512
    :goto_16
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3513
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1d
    if-nez v0, :cond_34

    if-ge v5, v4, :cond_34

    .line 3515
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3516
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3517
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    move v0, v2

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 3521
    :cond_34
    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    .line 3525
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3526
    :goto_3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8c

    .line 3527
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    if-eqz v2, :cond_89

    .line 3532
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 3533
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    move-result v3

    if-nez v3, :cond_6a

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 3534
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_89

    :cond_6a
    if-eqz v0, :cond_80

    .line 3538
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 3539
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    move-result v2

    .line 3538
    invoke-virtual {v3, v4, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->startTrackingWindows(IZ)V

    goto :goto_89

    .line 3541
    :cond_80
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    :cond_89
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_8c
    return-void
.end method

.method public final userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 8

    .line 3951
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3952
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 3953
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3954
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3955
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method public final userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3935
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3936
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 3937
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3938
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public final waitForInputFilterInstalled()Z
    .registers 7

    .line 7179
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7181
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    .line 7182
    :catch_a
    :goto_a
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    if-nez v3, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_22

    cmp-long v3, v3, v1

    if-gez v3, :cond_24

    .line 7184
    :try_start_16
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_21} :catch_a
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    goto :goto_a

    :catchall_22
    move-exception p0

    goto :goto_31

    .line 7189
    :cond_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    .line 7190
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0

    .line 7189
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_22

    throw p0
.end method

.method public final waitForMagnificationConnection()Z
    .registers 7

    .line 7198
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7200
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    .line 7201
    :catch_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 7202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_28

    cmp-long v3, v3, v1

    if-gez v3, :cond_2a

    .line 7204
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_27} :catch_a
    .catchall {:try_start_1c .. :try_end_27} :catchall_28

    goto :goto_a

    :catchall_28
    move-exception p0

    goto :goto_34

    .line 7209
    :cond_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_28

    .line 7210
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result p0

    return p0

    .line 7209
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_28

    throw p0
.end method
