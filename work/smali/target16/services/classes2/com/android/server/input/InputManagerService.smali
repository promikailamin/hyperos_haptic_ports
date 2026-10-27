.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DEBUG:Z

.field public static final INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;


# instance fields
.field public mAccessibilityPointerMotionFilter:Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;

.field public final mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

.field public final mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

.field public final mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

.field public final mAssociationsLock:Ljava/lang/Object;

.field public final mBatteryController:Lcom/android/server/input/BatteryController;

.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mDeviceTypeAssociations:Ljava/util/Map;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field public final mFallbackActions:Landroid/util/SparseArray;

.field public mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final mFocusEventDebugViewLock:Ljava/lang/Object;

.field public final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field public final mInputDataStore:Lcom/android/server/input/data/InputDataStore;

.field public mInputDevices:[Landroid/view/InputDevice;

.field public final mInputDevicesChangedListeners:Landroid/util/SparseArray;

.field public mInputDevicesChangedPending:Z

.field public final mInputDevicesLock:Ljava/lang/Object;

.field public mInputFilter:Landroid/view/IInputFilter;

.field public mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field public final mInputFilterLock:Ljava/lang/Object;

.field public final mInputMonitors:Ljava/util/Map;

.field public final mIsVibrating:Landroid/util/SparseBooleanArray;

.field public final mKeyEventActivityListenersToNotify:Ljava/util/List;

.field public final mKeyEventActivityLock:Ljava/lang/Object;

.field public final mKeyGestureController:Lcom/android/server/input/KeyGestureController;

.field public final mKeyRemapper:Lcom/android/server/input/KeyRemapper;

.field public final mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

.field public final mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

.field public final mKeyboardLayoutAssociations:Ljava/util/Map;

.field public final mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

.field public final mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

.field public mLastKeyEventActivityTimeMs:J

.field public final mLidSwitchCallbacks:Ljava/util/List;

.field public final mLidSwitchLock:Ljava/lang/Object;

.field public final mLightLock:Ljava/lang/Object;

.field public final mLightSessions:Landroid/util/ArrayMap;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mNextVibratorTokenValue:I

.field public final mPointerIconCache:Lcom/android/server/input/PointerIconCache;

.field public final mRuntimeAssociations:Ljava/util/Map;

.field public final mSensorAccuracyListenersToNotify:Ljava/util/List;

.field public final mSensorEventListeners:Landroid/util/SparseArray;

.field public final mSensorEventListenersToNotify:Ljava/util/List;

.field public final mSensorEventLock:Ljava/lang/Object;

.field public final mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

.field public mShowKeyPresses:Z

.field public mShowRotaryInput:Z

.field public final mStaticAssociations:Ljava/util/Map;

.field public final mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

.field public final mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

.field public mSystemReady:Z

.field public final mTabletModeChangedListeners:Landroid/util/SparseArray;

.field public final mTabletModeLock:Ljava/lang/Object;

.field public final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

.field public final mTempTabletModeChangedListenersToNotify:Ljava/util/List;

.field public final mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

.field public final mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

.field public final mUniqueIdAssociationsByPort:Ljava/util/Map;

.field public final mUseDevInputEventForAudioJack:Z

.field public final mVelocityTrackerStrategy:Ljava/lang/String;

.field public final mVibratorLock:Ljava/lang/Object;

.field public final mVibratorStateListeners:Landroid/util/SparseArray;

.field public final mVibratorTokens:Ljava/util/Map;

.field public final mVirtualDevicePorts:Ljava/util/Set;

.field public final mVirtualInputDeviceController:Lcom/android/server/input/VirtualInputDeviceController;

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field public mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public static synthetic $r8$lambda$6AIRv4xh01nRHbQxE6kNXrzpf_8(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->lambda$notifyInputDevicesChanged$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$EoxLqmqT4A-jyNuywzDQYxxat_o(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    .line 1494
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    return-void
.end method

.method public static synthetic $r8$lambda$J7S08y3ZDUWRahBY7dv-2xrwWt4(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    .line 1499
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method

.method public static synthetic $r8$lambda$P6kxuSkUabdg2iEWvAv1QXmulww(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  uniqueId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RqZJ0PY7bfV90FxNExHuOVtQCdU(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  display: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VwZ6khknKv2NA982rW9SoVjxBBU(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0wbJC8buqu2Rv6rxvtLuYiWZ5U(Landroid/hardware/input/IKeyEventActivityListener;Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 2

    .line 2698
    invoke-interface {p1}, Landroid/hardware/input/IKeyEventActivityListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0}, Landroid/hardware/input/IKeyEventActivityListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_lq68lI-mAIn9_KuD39dCgc47TQ(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8xbvOd1bS4iuv3ULwHp3qO0Q_Q(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$initKeyGestures$10(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sQMrlNF2K3IZ6pcGcqbo-QQHGBc(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  uniqueId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-TjtXN_bGYrhS3YTxm5gxY2aNo(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 2983
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2984
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$yBQqQtaiwd66G-IwvbD_ay61RVg(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  display: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/BatteryController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyboardLayoutManager(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyboardLayoutManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightLock(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSessions(Lcom/android/server/input/InputManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVirtualInputDeviceController:Lcom/android/server/input/VirtualInputDeviceController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallingPermission(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeliverInputDevicesChanged(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverTabletModeChanged(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTargetDisplayIdForInput(Lcom/android/server/input/InputManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getTargetDisplayIdForInput(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleCurrentUserChanged(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->handleCurrentUserChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInputDevicesChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSensorEventListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onSensorEventListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTabletModeChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/input/InputManagerService;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpilferPointersInternal(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->pilferPointersInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadDeviceAliases(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSpyWindowGestureMonitor(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayTopologyInternal(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayTopologyGraph;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayTopologyInternal(Landroid/hardware/display/DisplayTopologyGraph;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 187
    const-string v0, "InputManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 189
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "InputManagerService"

    const/4 v2, 0x1

    const-string v3, "INPUT_STREAM_MODIFIER_LOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 540
    new-instance v0, Lcom/android/server/input/InputManagerService$Injector;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v3}, Lcom/android/server/input/InputManagerService$1;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/input/InputManagerService$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V

    const-class v1, Landroid/os/PermissionEnforcer;

    .line 541
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PermissionEnforcer;

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Lcom/android/server/input/InputManagerService$Injector;Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService$Injector;Landroid/os/PermissionEnforcer;)V
    .registers 10

    .line 548
    invoke-direct {p0, p2}, Landroid/hardware/input/IInputManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 218
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 220
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 223
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 226
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 228
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 231
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 233
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 237
    new-instance p2, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {p2}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 243
    new-array v1, v0, [Landroid/view/InputDevice;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 245
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 253
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 257
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 261
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 263
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 267
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 275
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 280
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 290
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 301
    iput-wide v1, p0, Lcom/android/server/input/InputManagerService;->mLastKeyEventActivityTimeMs:J

    .line 306
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    .line 312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    .line 318
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    .line 324
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVirtualDevicePorts:Ljava/util/Set;

    .line 331
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    .line 338
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 340
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 371
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    .line 479
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    .line 483
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 484
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilter:Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;

    .line 550
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 552
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 553
    new-instance v2, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 554
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService$Injector;->getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 555
    new-instance v4, Lcom/android/server/input/InputSettingsObserver;

    invoke-direct {v4, v1, v2, p0, v3}, Lcom/android/server/input/InputSettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    .line 556
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager;

    .line 557
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v3, p2, v4}, Lcom/android/server/input/KeyboardLayoutManager;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    .line 559
    new-instance v2, Lcom/android/server/input/debug/TouchpadDebugViewController;

    .line 560
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4, p0}, Lcom/android/server/input/debug/TouchpadDebugViewController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    .line 561
    new-instance v2, Lcom/android/server/input/BatteryController;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 562
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getUEventManager()Lcom/android/server/input/UEventManager;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/input/BatteryController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    .line 563
    new-instance v2, Lcom/android/server/input/SysfsNodeMonitor;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 564
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getUEventManager()Lcom/android/server/input/UEventManager;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/input/SysfsNodeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

    .line 565
    invoke-virtual {p1, v3}, Lcom/android/server/input/InputManagerService$Injector;->getKeyboardBacklightController(Lcom/android/server/input/NativeInputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 566
    new-instance v2, Lcom/android/server/input/StickyModifierStateController;

    invoke-direct {v2}, Lcom/android/server/input/StickyModifierStateController;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 567
    new-instance v2, Lcom/android/server/input/data/InputDataStore;

    invoke-direct {v2}, Lcom/android/server/input/data/InputDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDataStore:Lcom/android/server/input/data/InputDataStore;

    .line 568
    new-instance v4, Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 569
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getIoLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6, v2}, Lcom/android/server/input/KeyGestureController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/data/InputDataStore;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    .line 570
    new-instance v2, Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v4, v3}, Lcom/android/server/input/KeyboardLedController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    .line 572
    new-instance v2, Lcom/android/server/input/VirtualInputDeviceController;

    .line 573
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/android/server/input/VirtualInputDeviceController;-><init>(Landroid/os/Handler;Lcom/android/server/input/InputManagerService;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVirtualInputDeviceController:Lcom/android/server/input/VirtualInputDeviceController;

    .line 574
    new-instance v2, Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v1, v3, p2, v4}, Lcom/android/server/input/KeyRemapper;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    .line 575
    new-instance p2, Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/android/server/input/KeyboardGlyphManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    .line 576
    new-instance p2, Lcom/android/server/input/PointerIconCache;

    invoke-direct {p2, v1, v3}, Lcom/android/server/input/PointerIconCache;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;)V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    .line 579
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x11102b4

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "InputManager"

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x104028f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 585
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    move-object v1, v0

    goto :goto_1f1

    .line 586
    :cond_1ec
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1f1
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 588
    const-string p2, "input_native_boot"

    const-string/jumbo v1, "velocitytracker_strategy"

    invoke-static {p2, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 591
    new-instance p2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {p2, p0, v0}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService-IA;)V

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService$Injector;->registerLocalService(Lcom/android/server/input/InputManagerInternal;)V

    return-void
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 2402
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    .line 2408
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    .line 2412
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    if-eqz p3, :cond_48

    .line 2417
    const-class p3, Landroid/app/ActivityManagerInternal;

    .line 2418
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 2419
    const-string v0, "ActivityManagerInternal should not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_48

    .line 2425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2427
    :try_start_33
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_43

    if-nez p0, :cond_3f

    .line 2432
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_3f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    :catchall_43
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    throw p0

    .line 2437
    :cond_48
    :goto_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2441
    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static flatten(Ljava/util/Map;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2981
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2982
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x0

    .line 2986
    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 9

    .line 2939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 2942
    new-array v2, v1, [Ljava/io/File;

    .line 2943
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 2944
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    :goto_17
    if-ge v3, v1, :cond_60

    .line 2946
    aget-object v5, v2, v3

    .line 2947
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2948
    :try_start_22
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_27} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_32

    .line 2949
    :try_start_27
    invoke-static {v5}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_34

    .line 2950
    :try_start_2e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_5d

    :catch_32
    move-exception v5

    goto :goto_3e

    :catchall_34
    move-exception v7

    .line 2948
    :try_start_35
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v5

    :try_start_3a
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v7
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3e} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_32

    .line 2953
    :goto_3e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2956
    :cond_60
    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getKeyboardLayoutAssociations()[Ljava/lang/String;
    .registers 3

    .line 3064
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3065
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3066
    :try_start_8
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3067
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_13

    .line 3068
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_13
    move-exception p0

    .line 3067
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static loadStaticInputPortAssociations()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2994
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v0

    .line 2995
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2998
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 2999
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3002
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_27

    .line 3003
    :try_start_1f
    invoke-static {v0}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_29

    .line 3004
    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    return-object v2

    :catch_27
    move-exception v0

    goto :goto_33

    :catchall_29
    move-exception v2

    .line 3002
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw v2
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_27

    .line 3007
    :goto_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3010
    :catch_52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 640
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    return-void
.end method

.method private onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 3323
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 3324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_23
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 3

    .line 3232
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->addCustomInputGesture_enforcePermission()V

    .line 3234
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3235
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p0

    return p0
.end method

.method public addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1942
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1947
    :try_start_c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    const-string v2, "%s,%s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1948
    invoke-static {v2, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1947
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    .line 1950
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    return-void

    :catchall_22
    move-exception p0

    .line 1949
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public addPortAssociation(Ljava/lang/String;I)V
    .registers 5

    .line 1812
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addPortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1819
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 1823
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_20
    move-exception p0

    .line 1822
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0

    .line 1815
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1888
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addUniqueIdAssociationByDescriptor()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1895
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1898
    :try_start_13
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 1900
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1f
    move-exception p0

    .line 1899
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 1891
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1850
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addUniqueIdAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1857
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1860
    :try_start_13
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 1862
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1f
    move-exception p0

    .line 1861
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 1853
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addVirtualDevice(Ljava/lang/String;)V
    .registers 4

    .line 1962
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1965
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVirtualDevicePorts:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1966
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 1967
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeVirtualDevices()V

    return-void

    :catchall_12
    move-exception p0

    .line 1966
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public canDispatchToDisplay(II)Z
    .registers 3

    .line 3086
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result p0

    return p0
.end method

.method public cancelCurrentTouch()V
    .registers 4

    .line 2229
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string v1, "cancelCurrentTouch()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2234
    sget-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cancelCurrentTouch"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2235
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->cancelCurrentTouch()V

    return-void

    .line 2231
    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MONITOR_INPUT permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 5

    .line 1675
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-eqz p2, :cond_19

    .line 1677
    iget v1, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_12

    goto :goto_19

    .line 1680
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 1682
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 1678
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v0

    return-void

    .line 1680
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method public final cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 4

    .line 1694
    monitor-enter p1

    .line 1695
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_14

    .line 1696
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->cancelVibrate(II)V

    const/4 p0, 0x0

    .line 1697
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 1699
    :cond_14
    :goto_14
    monitor-exit p1

    return-void

    :goto_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public clearAllModifierKeyRemappings()V
    .registers 1

    .line 3131
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings_enforcePermission()V

    .line 3132
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->clearAllKeyRemappings()V

    return-void
.end method

.method public closeLightSession(ILandroid/os/IBinder;)V
    .registers 8

    .line 2209
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2211
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 2212
    :goto_14
    const-string/jumbo v4, "not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2214
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v3

    new-instance v4, Landroid/hardware/lights/LightState;

    invoke-direct {v4, v2}, Landroid/hardware/lights/LightState;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2215
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 2217
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_54

    .line 2221
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$LightSession;

    .line 2222
    invoke-static {p2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_56

    .line 2224
    :cond_54
    :goto_54
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_52

    throw p0
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 2

    .line 928
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;III)Landroid/view/InputChannel;
    .registers 17

    .line 852
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v7

    .line 855
    :try_start_4
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v7}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_2b

    .line 860
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v8

    .line 861
    :try_start_10
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v9

    new-instance v0, Lcom/android/server/input/GestureMonitorSpyWindow;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/input/GestureMonitorSpyWindow;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    invoke-interface {p0, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    monitor-exit v8

    return-object v7

    :catchall_27
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_27

    throw p0

    .line 857
    :catch_2b
    const-string p0, "InputManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Client died before \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could be created."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 1072
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->createVirtualKeyboard_enforcePermission()V

    .line 1074
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    if-eqz v0, :cond_29

    .line 1076
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1077
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1081
    iget v0, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-eq v1, v0, :cond_29

    const/16 v0, 0x3e8

    if-eq v1, v0, :cond_29

    if-nez v1, :cond_21

    goto :goto_29

    .line 1083
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Explicit display association requires caller to own the display"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1088
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->createVirtualKeyboardInternal(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualKeyboardInternal(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 11

    .line 1982
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVirtualInputDeviceController:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 1983
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getVendorId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getProductId()I

    move-result v3

    .line 1985
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v4

    .line 1984
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getTargetDisplayIdForInput(I)I

    move-result v5

    .line 1986
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyboardConfig;->getLayoutType()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    .line 1982
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/input/VirtualInputDeviceController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public final deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 11

    .line 1200
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1203
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1204
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_11

    .line 1205
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    goto/16 :goto_8f

    :cond_11
    const/4 v0, 0x0

    .line 1207
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1209
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_1b
    if-ge v2, v1, :cond_2d

    .line 1211
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 1212
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 1211
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1215
    :cond_2d
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v2, v2

    mul-int/lit8 v3, v2, 0x2

    .line 1216
    new-array v3, v3, [I

    move v4, v0

    :goto_35
    if-ge v4, v2, :cond_78

    .line 1218
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x2

    .line 1219
    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 1220
    invoke-virtual {v5}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    aput v7, v3, v6

    .line 1221
    sget-boolean v6, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v6, :cond_75

    .line 1222
    const-string v6, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " generation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {v5}, Landroid/view/InputDevice;->getGeneration()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1222
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1226
    :cond_78
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_8 .. :try_end_79} :catchall_e

    :goto_79
    if-ge v0, v1, :cond_89

    .line 1230
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {p1, v3}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 1233
    :cond_89
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1226
    :goto_8f
    :try_start_8f
    monitor-exit p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_e

    throw p0
.end method

.method public final deliverTabletModeChanged(JZ)V
    .registers 10

    .line 1319
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1321
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_24

    .line 1324
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1325
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1324
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_22
    move-exception p0

    goto :goto_36

    .line 1327
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_22

    :goto_25
    if-ge v2, v1, :cond_35

    .line 1329
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    return-void

    .line 1327
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_22

    throw p0
.end method

.method public disableInputDevice(I)V
    .registers 4

    .line 1132
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1136
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->disableInputDevice(I)V

    return-void

    .line 1134
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableSensor(II)V
    .registers 4

    .line 2079
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->disableSensor(II)V

    .line 2081
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2779
    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    .line 2783
    :cond_e
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_17

    return-object v4

    .line 2786
    :cond_17
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 2787
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 2788
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 2789
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_32

    .line 2790
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_32

    move v7, v8

    goto :goto_33

    :cond_32
    const/4 v7, 0x0

    :goto_33
    if-eqz v7, :cond_3a

    .line 2795
    invoke-virtual {v3, v5, v6}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v3

    goto :goto_42

    .line 2797
    :cond_3a
    iget-object v3, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyCharacterMap$FallbackAction;

    :goto_42
    if-nez v3, :cond_45

    return-object v4

    .line 2804
    :cond_45
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit16 v6, v6, 0x400

    .line 2806
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    .line 2807
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    iget v14, v3, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 2808
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v15

    iget v4, v3, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 2809
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v18

    .line 2810
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v16, v4

    move/from16 v19, v6

    .line 2805
    invoke-static/range {v9 .. v22}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v4

    move/from16 v6, p3

    .line 2812
    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/input/InputManagerService;->interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z

    move-result v1

    if-nez v1, :cond_85

    .line 2813
    invoke-virtual {v4}, Landroid/view/KeyEvent;->recycle()V

    const/4 v4, 0x0

    :cond_85
    if-eqz v7, :cond_8d

    .line 2818
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4

    .line 2819
    :cond_8d
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_9b

    .line 2820
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 2821
    invoke-virtual {v3}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    :cond_9b
    return-object v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 2305
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string p3, "InputManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 2306
    :cond_b
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2308
    const-string p3, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p3}, Lcom/android/server/input/NativeInputManagerService;->dump()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_22

    .line 2311
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    :cond_22
    const-string p2, "Input Manager Service (Java) State:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2316
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Landroid/util/IndentingPrintWriter;)V

    .line 2317
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V

    .line 2318
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V

    .line 2319
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {p2, p1}, Lcom/android/server/input/BatteryController;->dump(Ljava/io/PrintWriter;)V

    .line 2320
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    invoke-interface {p2, p1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->dump(Ljava/io/PrintWriter;)V

    .line 2321
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {p2, p1}, Lcom/android/server/input/KeyboardLedController;->dump(Ljava/io/PrintWriter;)V

    .line 2322
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {p2, p1}, Lcom/android/server/input/KeyboardGlyphManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2323
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p2, p1}, Lcom/android/server/input/KeyGestureController;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2324
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVirtualInputDeviceController:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpAssociations(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 2328
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2329
    const-string v0, "Static Associations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2336
    :cond_17
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2337
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 2338
    const-string v1, "Runtime Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_7b

    .line 2344
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 2345
    const-string v1, "Unique Id Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2351
    :cond_4b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 2352
    const-string v1, "Unique Id Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2358
    :cond_62
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 2359
    const-string v1, "Type Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2365
    :cond_79
    monitor-exit v0

    return-void

    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_1a .. :try_end_7c} :catchall_32

    throw p0
.end method

.method public final dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 2380
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2381
    :try_start_3
    const-string v1, "mAdditionalDisplayInputProperties:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    .line 2384
    :try_start_b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 2385
    const-string p0, "<none>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1f

    .line 2397
    :try_start_18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_86

    :catchall_1f
    move-exception p0

    goto :goto_82

    :cond_21
    const/4 v1, 0x0

    .line 2388
    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 2389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 2391
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 2392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mouseScalingEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pointerIconVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_22 .. :try_end_7a} :catchall_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 2397
    :cond_7d
    :try_start_7d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2399
    monitor-exit v0

    return-void

    .line 2397
    :goto_82
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2398
    throw p0

    .line 2399
    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_1d

    throw p0
.end method

.method public final dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 2369
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 2370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_52

    .line 2371
    :cond_f
    const-string v1, "Gesture Monitors (implemented as spy windows):"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 2374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/input/GestureMonitorSpyWindow;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    goto :goto_1f

    .line 2376
    :cond_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_d

    throw p0
.end method

.method public enableInputDevice(I)V
    .registers 4

    .line 1122
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1126
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableInputDevice(I)V

    return-void

    .line 1124
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableSensor(IIII)Z
    .registers 6

    .line 2071
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2072
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->enableSensor(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2074
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 2649
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2650
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    if-eqz p0, :cond_10

    .line 2652
    :try_start_7
    invoke-interface {p0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_d
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_16

    .line 2656
    :catch_d
    :goto_d
    :try_start_d
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 2658
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_b

    .line 2659
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    const/4 p0, 0x1

    return p0

    .line 2658
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_b

    throw p0
.end method

.method public final filterPointerMotion(FFFFI)[F
    .registers 8

    .line 2732
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2733
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilter:Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;

    if-eqz p0, :cond_10

    .line 2737
    invoke-interface/range {p0 .. p5}, Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;->filterPointerMotionEvent(FFFFI)[F

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_d
    move-exception v0

    move-object p0, v0

    goto :goto_18

    .line 2734
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "filterCursor is invoked but no callback is registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2739
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_d

    throw p0
.end method

.method public flushSensor(II)Z
    .registers 6

    .line 2058
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2060
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    if-eqz v1, :cond_1b

    .line 2062
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->flushSensor(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    .line 2064
    monitor-exit v0

    return p0

    .line 2065
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .registers 1

    .line 3264
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .registers 2

    .line 1793
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object p0

    return-object p0
.end method

.method public getCursorPositionInLogicalDisplay(I)Landroid/graphics/PointF;
    .registers 5

    .line 3306
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "getCursorPositionInLogicalDisplay()"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3314
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPositionInLogicalDisplay(I)[F

    move-result-object p0

    if-eqz p0, :cond_23

    .line 3315
    array-length p1, p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    goto :goto_23

    .line 3318
    :cond_18
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget v0, p0, v0

    aget p0, p0, v2

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0

    .line 3310
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The INJECT_EVENTS permission is required to access cursor outside the intermediate window / display."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCursorPositionInPhysicalDisplay(I)Landroid/graphics/PointF;
    .registers 5

    .line 3288
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "getCursorPosition()"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3296
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPositionInPhysicalDisplay(I)[F

    move-result-object p0

    if-eqz p0, :cond_23

    .line 3297
    array-length p1, p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    goto :goto_23

    .line 3300
    :cond_18
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget v0, p0, v0

    aget p0, p0, v2

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0

    .line 3292
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The INJECT_EVENTS permission is required to access cursor outside the intermediate window / display."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;
    .registers 3

    .line 3258
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    .line 3259
    invoke-static {p2}, Landroid/hardware/input/InputGestureData$Filter;->of(I)Landroid/hardware/input/InputGestureData$Filter;

    move-result-object p2

    .line 3258
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3145
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceTypeAssociations()[Ljava/lang/String;
    .registers 3

    .line 3053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3054
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3055
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 3057
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_10
    move-exception p0

    .line 3055
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;
    .registers 2

    .line 2300
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getHostUsiVersion(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object p0

    return-object p0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7

    .line 1109
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 1111
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 1112
    monitor-exit v0

    return-object v3

    :catchall_13
    move-exception p0

    goto :goto_1b

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1115
    :cond_18
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_13

    throw p0
.end method

.method public getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 5

    .line 2255
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress_enforcePermission()V

    .line 2257
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBluetoothAddress(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 2259
    :cond_d
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p0

    .line 2260
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Bluetooth address of input device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should not be invalid: address="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 1145
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 1147
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_1a

    .line 1149
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 1151
    :cond_1a
    monitor-exit v0

    return-object v2

    .line 1152
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 2

    .line 1160
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1162
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .registers 3

    .line 3222
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputGesture_enforcePermission()V

    .line 3224
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public final getInputPortAssociations()[Ljava/lang/String;
    .registers 3

    .line 3016
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3019
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3020
    :try_start_a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3021
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    .line 3023
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_15
    move-exception p0

    .line 3021
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getInputUniqueIdAssociationsByDescriptor()[Ljava/lang/String;
    .registers 3

    .line 3041
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3042
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3043
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 3045
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_10
    move-exception p0

    .line 3043
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getInputUniqueIdAssociationsByPort()[Ljava/lang/String;
    .registers 3

    .line 3030
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3031
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3032
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 3034
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_10
    move-exception p0

    .line 3032
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .registers 3

    .line 809
    const-string v0, "layoutDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 810
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method public getKeyCodeForKeyLocation(II)I
    .registers 4

    if-lez p2, :cond_10

    .line 801
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-le p2, v0, :cond_9

    goto :goto_10

    .line 804
    :cond_9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeForKeyLocation(II)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public getKeyCodeState(III)I
    .registers 4

    .line 738
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    move-result p0

    return p0
.end method

.method public getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .registers 2

    .line 1381
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 2

    .line 1341
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 5

    .line 1348
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 5

    .line 1375
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 3115
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 3118
    :cond_6
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 1

    .line 1336
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0
.end method

.method public getLightState(II)Landroid/hardware/lights/LightState;
    .registers 5

    .line 2180
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v1

    .line 2182
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightPlayerId(II)I

    move-result p0

    .line 2184
    new-instance p1, Landroid/hardware/lights/LightState;

    invoke-direct {p1, v1, p0}, Landroid/hardware/lights/LightState;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_16
    move-exception p0

    .line 2185
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getLights(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 2119
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLoadedPointerIcon(II)Landroid/view/PointerIcon;
    .registers 3

    .line 3098
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->getLoadedPointerIcon(II)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public getModifierKeyRemapping()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3138
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping_enforcePermission()V

    .line 3139
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMousePointerSpeed()I
    .registers 1

    .line 1469
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getMousePointerSpeed()I

    move-result p0

    return p0
.end method

.method public final getParentSurfaceForPointers(I)J
    .registers 2

    .line 3104
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 3108
    :cond_b
    iget-wide p0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    return-wide p0
.end method

.method public getPhysicalLocationPath(I)Ljava/lang/String;
    .registers 2

    .line 4220
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getPhysicalLocationPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPointerLayer()I
    .registers 1

    .line 3092
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result p0

    return p0
.end method

.method public getScanCodeState(III)I
    .registers 4

    .line 751
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getScanCodeState(III)I

    move-result p0

    return p0
.end method

.method public getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 2

    .line 1991
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchState(III)I
    .registers 4

    .line 764
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final getTargetDisplayIdForInput(I)I
    .registers 3

    .line 1511
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1513
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_10

    return p1

    :cond_10
    return p0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 4

    .line 1239
    const-string v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1242
    :try_start_8
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 1243
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;
    .registers 2

    .line 2001
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;

    move-result-object p0

    return-object p0
.end method

.method public getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 1

    .line 1099
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public getVibratorIds(I)[I
    .registers 2

    .line 1622
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getVibratorIds(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;
    .registers 7

    .line 1591
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-nez v1, :cond_2b

    .line 1594
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_22

    const/4 p1, 0x0

    .line 1596
    :try_start_19
    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_24
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    .line 1601
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_22
    move-exception p0

    goto :goto_2d

    :catch_24
    move-exception p0

    .line 1599
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1603
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-object v1

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_22

    throw p0
.end method

.method public final getVirtualDevicePorts()[Ljava/lang/String;
    .registers 3

    .line 3074
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3075
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVirtualDevicePorts:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 3076
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getVirtualKeyQuietTimeMillis()I
    .registers 2

    .line 2932
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0181

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final handleCurrentUserChanged(I)V
    .registers 2

    .line 3330
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->setCurrentUserId(I)V

    return-void
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V
    .registers 8

    .line 2863
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v0

    .line 2864
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_15

    .line 2865
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v4

    goto :goto_16

    :cond_15
    move v1, v3

    .line 2866
    :goto_16
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v2

    const/16 v5, 0x19

    if-eq v2, v5, :cond_94

    packed-switch v2, :pswitch_data_9c

    const/16 v0, 0x1f4

    packed-switch v2, :pswitch_data_a6

    .line 2917
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a key gesture "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_42
    if-eqz v1, :cond_9b

    .line 2896
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 2898
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v4

    invoke-static {p0, p1}, Landroid/hardware/input/InputSettings;->setAccessibilityMouseKeysEnabled(Landroid/content/Context;Z)V

    return-void

    :pswitch_51
    if-eqz v1, :cond_9b

    .line 2910
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2911
    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 2912
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v0

    :goto_5f
    invoke-static {p0, v3}, Landroid/hardware/input/InputSettings;->setAccessibilitySlowKeysThreshold(Landroid/content/Context;I)V

    return-void

    :pswitch_63
    if-eqz v1, :cond_9b

    .line 2887
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2888
    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 2889
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_70

    goto :goto_71

    :cond_70
    move v3, v0

    :goto_71
    invoke-static {p0, v3}, Landroid/hardware/input/InputSettings;->setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V

    return-void

    :pswitch_75
    if-eqz v1, :cond_9b

    .line 2903
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 2904
    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 2905
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v4

    invoke-static {p0, p1}, Landroid/hardware/input/InputSettings;->setAccessibilityStickyKeysEnabled(Landroid/content/Context;Z)V

    return-void

    :pswitch_84
    if-eqz v1, :cond_9b

    .line 2874
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    invoke-interface {p0, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->decrementKeyboardBacklight(I)V

    return-void

    :pswitch_8c
    if-eqz v1, :cond_9b

    .line 2869
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    invoke-interface {p0, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->incrementKeyboardBacklight(I)V

    return-void

    :cond_94
    if-eqz v1, :cond_9b

    .line 2882
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    :cond_9b
    :pswitch_9b
    return-void

    :pswitch_data_9c
    .packed-switch 0xf
        :pswitch_8c
        :pswitch_84
        :pswitch_9b
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x40
        :pswitch_75
        :pswitch_63
        :pswitch_51
        :pswitch_42
    .end packed-switch
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7

    .line 782
    const-string v0, "keyCodes must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 783
    const-string v0, "keyExists must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 784
    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_15

    .line 788
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->hasKeys(II[I[Z)Z

    move-result p0

    return p0

    .line 785
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyExists must be at least as large as keyCodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initKeyGestures()V
    .registers 11

    .line 2845
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    const/16 v1, 0xf

    .line 2847
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x10

    .line 2848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x11

    .line 2849
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x19

    .line 2850
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x41

    .line 2851
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0x43

    .line 2852
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v1, 0x40

    .line 2853
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x42

    .line 2854
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2846
    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2856
    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    const/4 v0, -0x1

    .line 1011
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result p0

    return p0
.end method

.method public injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .registers 16

    .line 1016
    const-string v1, "android.permission.INJECT_EVENTS"

    const-string v2, "injectInputEvent()"

    const/4 v7, 0x1

    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1024
    const-string v1, "event must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_21

    const/4 v1, 0x2

    if-eq p2, v1, :cond_21

    if-ne p2, v7, :cond_18

    goto :goto_21

    .line 1028
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_21
    :goto_21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v1, -0x1

    const/4 v11, 0x0

    if-eq p3, v1, :cond_2f

    move v2, v7

    goto :goto_30

    :cond_2f
    move v2, v11

    .line 1036
    :goto_30
    :try_start_30
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/16 v5, 0x7530

    const/high16 v6, 0x8000000

    move-object v1, p1

    move v4, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIII)I

    move-result v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_aa

    .line 1040
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_a9

    if-eq v0, v7, :cond_7b

    const/4 v1, 0x3

    .line 1042
    const-string v2, "Input event injection from pid "

    const-string v3, "InputManager"

    if-eq v0, v1, :cond_63

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 1055
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timed out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_7b
    if-nez v2, :cond_85

    .line 1047
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Injection should not result in TARGET_MISMATCH when it is not targeted into to a specific uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Targeted input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was not directed at a window owned by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    return v7

    :catchall_aa
    move-exception v0

    .line 1040
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw v0

    .line 1018
    :cond_af
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting input events requires the caller (or the source of the instrumentation, if any) to have the INJECT_EVENTS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .registers 11

    .line 2828
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/InputManagerService;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 2832
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-nez p3, :cond_1b

    .line 2833
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    return v2
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 4

    .line 2773
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyGestureController;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 5

    .line 2746
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyKeyActivityListeners(Landroid/view/KeyEvent;)V

    .line 2747
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2748
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz v1, :cond_10

    .line 2749
    invoke-virtual {v1, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->reportKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_23

    .line 2751
    :cond_10
    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_e

    .line 2752
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x40000

    or-int/2addr p2, v0

    .line 2759
    :cond_1c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p0

    return p0

    .line 2751
    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_e

    throw p0
.end method

.method public final interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .registers 7

    .line 2766
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IIIJI)I

    move-result p0

    return p0
.end method

.method public final interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .registers 4

    .line 2837
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 2840
    :cond_a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public isInTabletMode()I
    .registers 4

    .line 1273
    const-string v0, "android.permission.TABLET_MODE"

    const-string v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, -0x100

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1277
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0

    .line 1275
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires TABLET_MODE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isMicMuted()I
    .registers 4

    const/16 v0, -0x100

    const/16 v1, 0xe

    const/4 v2, -0x1

    .line 1282
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final isPerDisplayTouchModeEnabled()Z
    .registers 2

    .line 2962
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isVibrating(I)Z
    .registers 2

    .line 1628
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isVibrating(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V
    .registers 2

    .line 855
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public final synthetic lambda$initKeyGestures$10(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3

    .line 2857
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method

.method public final synthetic lambda$notifyInputDevicesChanged$8()V
    .registers 1

    .line 2465
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    return-void
.end method

.method public monitor()V
    .registers 3

    .line 2448
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_30

    .line 2449
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_2d

    .line 2450
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_2a

    .line 2451
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v1

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_27

    .line 2452
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_24

    .line 2453
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {v0}, Lcom/android/server/input/BatteryController;->monitor()V

    .line 2454
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {v0}, Lcom/android/server/input/PointerIconCache;->monitor()V

    .line 2455
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->monitor()V

    return-void

    :catchall_24
    move-exception p0

    .line 2452
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p0

    .line 2451
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0

    :catchall_2a
    move-exception p0

    .line 2450
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0

    :catchall_2d
    move-exception p0

    .line 2449
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0

    :catchall_30
    move-exception p0

    .line 2448
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public monitorFocusInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 4

    .line 840
    const-string v0, "inputChannelName not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_12

    .line 846
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->createFocusInputMonitor(ILjava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0

    .line 843
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 15

    .line 889
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorGestureInput()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 893
    const-string/jumbo v0, "name must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v0, "token must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_7d

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Gesture Monitor] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 905
    :try_start_36
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p2, v4, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_61

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 912
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/InputManagerService;->createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;III)Landroid/view/InputChannel;

    move-result-object p0

    .line 914
    new-instance p1, Landroid/view/InputMonitor;

    new-instance p2, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    .line 915
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-direct {p2, v2, p3}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    new-instance p3, Landroid/view/SurfaceControl;

    const-string v0, "IMS.monitorGestureInput"

    invoke-direct {p3, v5, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2, p3}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;Landroid/view/SurfaceControl;)V
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_5e

    .line 918
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto :goto_79

    :cond_61
    move v6, p3

    .line 908
    :try_start_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not create gesture monitor surface on display: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_5e

    .line 918
    :goto_79
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    throw p0

    .line 897
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 891
    :cond_85
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MONITOR_INPUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyDropWindow(Landroid/os/IBinder;FF)V
    .registers 4

    .line 2580
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyDropWindow(Landroid/os/IBinder;FF)V

    return-void
.end method

.method public final notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 2574
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public final notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 4

    .line 2563
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 2564
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2565
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_18

    .line 2567
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 2568
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    return-void

    .line 2567
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_f

    throw p0
.end method

.method public final notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6

    .line 2461
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2467
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2468
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    .line 2469
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 2470
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2471
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_26

    .line 2474
    :cond_22
    :goto_22
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 2475
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_20

    throw p0
.end method

.method public final notifyKeyActivityListeners(Landroid/view/KeyEvent;)V
    .registers 9

    .line 2703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2705
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_59

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mLastKeyEventActivityTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-ltz p1, :cond_59

    .line 2709
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2710
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    invoke-static {v2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 2711
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_56

    .line 2712
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/IKeyEventActivityListener;

    .line 2714
    :try_start_34
    invoke-interface {v2}, Landroid/hardware/input/IKeyEventActivityListener;->onKeyEventActivity()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_28

    :catch_38
    move-exception v3

    .line 2716
    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could Not Notify Listener due to Remote Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    invoke-virtual {p0, v2}, Lcom/android/server/input/InputManagerService;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    goto :goto_28

    .line 2721
    :cond_53
    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mLastKeyEventActivityTimeMs:J

    return-void

    :catchall_56
    move-exception p0

    .line 2711
    :try_start_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    return-void
.end method

.method public final notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .registers 2

    .line 2586
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public final notifySensorAccuracy(III)V
    .registers 10

    .line 2631
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2633
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2634
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_24

    .line 2636
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_22
    move-exception p0

    goto :goto_3b

    .line 2638
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_22

    :goto_25
    if-ge v2, v1, :cond_35

    .line 2640
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorAccuracy(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2643
    :cond_35
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 2638
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_22

    throw p0
.end method

.method public final notifySensorEvent(IIIJ[F)V
    .registers 17

    .line 2608
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 2609
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySensorEvent: deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2609
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_2f
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2614
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2615
    :try_start_37
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v0, :cond_54

    .line 2617
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 2618
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 2617
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_72

    .line 2620
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_51

    :goto_55
    if-ge v2, v0, :cond_6c

    .line 2622
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorEvent(IIIJ[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 2625
    :cond_6c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 2620
    :goto_72
    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_51

    throw p0
.end method

.method public notifyStickyModifierStateChanged(II)V
    .registers 3

    .line 3175
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/StickyModifierStateController;->notifyStickyModifierStateChanged(II)V

    return-void
.end method

.method public final notifyStylusGestureStarted(IJ)V
    .registers 5

    .line 2969
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/BatteryController;->notifyStylusGestureStarted(IJ)V

    .line 2970
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p0, :cond_c

    .line 2971
    invoke-virtual {p0, p2, p3}, Landroid/hardware/display/DisplayManagerInternal;->stylusGestureStarted(J)V

    :cond_c
    return-void
.end method

.method public final notifySwitch(JII)V
    .registers 11

    .line 2504
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 2505
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySwitch: values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2505
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_37

    move v0, v2

    goto :goto_38

    :cond_37
    move v0, v1

    .line 2511
    :goto_38
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2512
    :try_start_3b
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v4, :cond_58

    move v4, v1

    .line 2513
    :goto_40
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 2514
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    .line 2515
    invoke-interface {v5, p1, p2, v0}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :catchall_56
    move-exception p0

    goto :goto_5a

    .line 2518
    :cond_58
    monitor-exit v3

    goto :goto_5c

    :goto_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_56

    throw p0

    :cond_5c
    :goto_5c
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_70

    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_66

    move v0, v2

    goto :goto_67

    :cond_66
    move v0, v1

    .line 2523
    :goto_67
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    const/4 v3, 0x2

    .line 2525
    invoke-virtual {p0, v3, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 2528
    :cond_70
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_7d

    and-int/lit16 v0, p4, 0x1d4

    if-eqz v0, :cond_7d

    .line 2529
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    :cond_7d
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_a5

    .line 2534
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    long-to-int v3, p1

    .line 2535
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v3, 0x20

    shr-long/2addr p1, v3

    long-to-int p1, p1

    .line 2536
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_94

    move p1, v2

    goto :goto_95

    :cond_94
    move p1, v1

    .line 2537
    :goto_95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2538
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2539
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_a5
    and-int/lit16 p1, p4, 0x4000

    if-eqz p1, :cond_be

    and-int/lit16 p1, p3, 0x4000

    if-eqz p1, :cond_ae

    move v1, v2

    .line 2544
    :cond_ae
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2545
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 2547
    invoke-virtual {p0, v2, v1}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_be
    return-void
.end method

.method public final notifyTouchpadGestureInfo(II)V
    .registers 3

    .line 2489
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_7

    .line 2490
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->updateTouchpadGestureInfo(II)V

    :cond_7
    return-void
.end method

.method public final notifyTouchpadHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .registers 3

    .line 2481
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_7

    .line 2482
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->updateTouchpadHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V

    :cond_7
    return-void
.end method

.method public final notifyTouchpadThreeFingerTap()V
    .registers 2

    .line 2497
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyGestureController;->handleTouchpadGesture(I)V

    return-void
.end method

.method public final notifyVibratorState(IZ)V
    .registers 6

    .line 1705
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1706
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVibratorState: deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_23
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_26
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1710
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenersLocked(I)V

    .line 1711
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    .registers 3

    .line 1737
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-interface {p2, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 1739
    const-string p1, "InputManager"

    const-string p2, "Vibrator state listener failed to call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyVibratorStateListenersLocked(I)V
    .registers 6

    .line 1716
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1717
    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz p0, :cond_27

    .line 1718
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have vibrator state listener."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    .line 1722
    :cond_28
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 1723
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1724
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_48

    .line 1727
    :try_start_37
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IVibratorStateListener;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catchall_43
    move-exception p0

    .line 1730
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1731
    throw p0

    .line 1730
    :cond_48
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyWindowResponsive(Landroid/os/IBinder;IZ)V
    .registers 4

    .line 2600
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_9

    .line 2601
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    .line 2600
    :goto_d
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V

    return-void
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;IZLjava/lang/String;)V
    .registers 5

    .line 2593
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_9

    .line 2594
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    .line 2593
    :goto_d
    invoke-interface {p0, p1, p2, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 1394
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 1398
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->displayRemoved(I)V

    return-void
.end method

.method public final onInputDevicesChangedListenerDied(I)V
    .registers 3

    .line 1192
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1193
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1194
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 2

    .line 2926
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onSensorEventListenerDied(I)V
    .registers 3

    .line 3628
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3629
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3630
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 4017
    new-instance v0, Lcom/android/server/input/InputShellCommand;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onTabletModeChangedListenerDied(I)V
    .registers 3

    .line 1312
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1314
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5

    .line 1686
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1690
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_f
    move-exception p0

    .line 1688
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    .line 2190
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2192
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    const-string v3, "already registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2193
    new-instance v1, Lcom/android/server/input/InputManagerService$LightSession;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LightSession;-><init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 2195
    :try_start_1c
    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_22
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_26

    :catchall_20
    move-exception p0

    goto :goto_4f

    :catch_22
    move-exception v2

    .line 2198
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2200
    :goto_26
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz p0, :cond_4d

    .line 2202
    const-string p0, "InputManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open light session for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " device "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_20

    throw p0
.end method

.method public pilferPointers(Landroid/os/IBinder;)V
    .registers 2

    .line 2269
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers_enforcePermission()V

    .line 2271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->pilferPointersInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public final pilferPointersInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 2276
    sget-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "pilferPointers"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    return-void
.end method

.method public registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
    .registers 4

    .line 4209
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityPointerMotionFilterEnabled(Z)V

    .line 4210
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4211
    :try_start_9
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilter:Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;

    .line 4212
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    if-eqz p1, :cond_14

    .line 4214
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityPointerMotionFilterEnabled(Z)V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 4212
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 4

    .line 2241
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;I)V

    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 6

    .line 1168
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1170
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1172
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_31

    .line 1177
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1180
    :try_start_19
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 1181
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_2a
    .catchall {:try_start_19 .. :try_end_21} :catchall_28

    .line 1187
    :try_start_21
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1188
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    goto :goto_39

    :catch_2a
    move-exception p0

    .line 1184
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1173
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1188
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 3

    .line 2666
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyEventActivityListener_enforcePermission()V

    .line 2667
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public final registerKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 4

    .line 2683
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2684
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2685
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 2686
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_18

    .line 2688
    :cond_15
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 3

    .line 3182
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureEventListener_enforcePermission()V

    .line 3184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyGestureController;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V

    return-void
.end method

.method public registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V
    .registers 4

    .line 3201
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureHandler_enforcePermission()V

    .line 3203
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3205
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    .line 3206
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3205
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/KeyGestureController;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;I)V

    return-void
.end method

.method public registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 3

    .line 2283
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener_enforcePermission()V

    .line 2284
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 2286
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2285
    invoke-interface {p0, p1, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V

    return-void
.end method

.method public registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 6

    .line 608
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1f

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/4 v3, 0x0

    .line 615
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    if-nez p0, :cond_17

    const/4 v3, 0x1

    :cond_17
    const-wide/16 v1, 0x0

    .line 617
    invoke-interface {p1, v1, v2, v3}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 619
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

.method public registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 6

    .line 2006
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 2007
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSensorListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2007
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_27
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2012
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2014
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    .line 2015
    const-string p0, "InputManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The calling process "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has already registered an InputSensorEventListener."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    monitor-exit v0

    return v3

    :catchall_59
    move-exception p0

    goto :goto_76

    .line 2020
    :cond_5b
    new-instance v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_59

    .line 2023
    :try_start_60
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2024
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_6f
    .catchall {:try_start_60 .. :try_end_67} :catchall_59

    .line 2030
    :try_start_67
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2031
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catch_6f
    move-exception p0

    .line 2027
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2031
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_59

    throw p0
.end method

.method public registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 3

    .line 3156
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerStickyModifierStateListener_enforcePermission()V

    .line 3157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3158
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/StickyModifierStateController;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;I)V

    return-void
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 6

    .line 1287
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1291
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1293
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1295
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 1299
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_33

    .line 1302
    :try_start_24
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 1303
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_35
    .catchall {:try_start_24 .. :try_end_2c} :catchall_33

    .line 1307
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1308
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    goto :goto_44

    :catch_35
    move-exception p0

    .line 1305
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1296
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1308
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_33

    throw p0

    .line 1289
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 7

    .line 1746
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1749
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1750
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1751
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1752
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_25

    :catchall_1b
    move-exception p0

    goto :goto_5a

    .line 1754
    :cond_1d
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 1757
    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_1b

    .line 1759
    :try_start_29
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1760
    const-string p0, "InputManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not register vibrator state listener "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_4b

    .line 1767
    :try_start_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_1b

    return p0

    :catchall_4b
    move-exception p0

    goto :goto_56

    .line 1764
    :cond_4d
    :try_start_4d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_4b

    .line 1767
    :try_start_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1768
    throw p0

    .line 1769
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_1b

    throw p0
.end method

.method public final reloadDeviceAliases()V
    .registers 3

    .line 706
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 707
    const-string v0, "InputManager"

    const-string v1, "Reloading device names."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_b
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method public remapModifierKey(II)V
    .registers 3

    .line 3124
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey_enforcePermission()V

    .line 3125
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyRemapper;->remapKey(II)V

    return-void
.end method

.method public removeAllCustomInputGestures(II)V
    .registers 3

    .line 3251
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->removeAllCustomInputGestures_enforcePermission()V

    .line 3253
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Landroid/hardware/input/InputGestureData$Filter;->of(I)Landroid/hardware/input/InputGestureData$Filter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    return-void
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 3

    .line 3242
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->removeCustomInputGesture_enforcePermission()V

    .line 3244
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3245
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p0

    return p0
.end method

.method public removeInputChannel(Landroid/os/IBinder;)V
    .registers 3

    .line 936
    const-string v0, "connectionToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 937
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeKeyboardLayoutAssociation(Ljava/lang/String;)V
    .registers 4

    .line 1954
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 1958
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    return-void

    :catchall_12
    move-exception p0

    .line 1957
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removePortAssociation(Ljava/lang/String;)V
    .registers 4

    .line 1833
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removePortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1842
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 1844
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_1d
    move-exception p0

    .line 1843
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    .line 1836
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V
    .registers 4

    .line 870
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 872
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    if-nez v1, :cond_12

    return-void

    .line 875
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/input/GestureMonitorSpyWindow;->remove()V

    return-void

    :catchall_16
    move-exception p0

    .line 872
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 4

    .line 1909
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociationByDescriptor()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1916
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1918
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 1920
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1d
    move-exception p0

    .line 1919
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    .line 1912
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 4

    .line 1867
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1873
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 1877
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1d
    move-exception p0

    .line 1876
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    .line 1870
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeVirtualDevice(Ljava/lang/String;)V
    .registers 4

    .line 1971
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1974
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVirtualDevicePorts:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1975
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 1976
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeVirtualDevices()V

    return-void

    :catchall_12
    move-exception p0

    .line 1975
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;I)V
    .registers 4

    .line 1403
    const-string v0, "inputChannelToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_25

    const/4 v0, 0x1

    if-eq p2, v0, :cond_25

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    goto :goto_25

    .line 1407
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid pointer capture mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1410
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->requestPointerCapture(Landroid/os/IBinder;I)V

    return-void
.end method

.method public resetLockedModifierState()V
    .registers 1

    .line 3269
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->resetLockedModifierState()V

    return-void
.end method

.method public setAccessibilityBounceKeysThreshold(I)V
    .registers 2

    .line 4161
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityBounceKeysThreshold(I)V

    return-void
.end method

.method public setAccessibilityPointerIconScaleFactor(IF)V
    .registers 3

    .line 4195
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->setAccessibilityScaleFactor(IF)V

    return-void
.end method

.method public setAccessibilitySlowKeysThreshold(I)V
    .registers 2

    .line 4168
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilitySlowKeysThreshold(I)V

    return-void
.end method

.method public setAccessibilityStickyKeysEnabled(Z)V
    .registers 2

    .line 4175
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityStickyKeysEnabled(Z)V

    return-void
.end method

.method public final setDisplayEligibilityForPointerCapture(IZ)V
    .registers 3

    .line 1503
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public final setDisplayTopologyInternal(Landroid/hardware/display/DisplayTopologyGraph;)V
    .registers 2

    .line 725
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V

    return-void
.end method

.method public final setDisplayViewportsInternal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 713
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/display/DisplayViewport;

    .line 714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_19

    .line 715
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 717
    :cond_19
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V

    .line 721
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setPointerDisplayId(I)V

    return-void
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 3

    .line 1385
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 2

    .line 1389
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setFocusedDisplay(I)V

    return-void
.end method

.method public setInTouchMode(ZIIZI)Z
    .registers 6

    .line 1006
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/input/NativeInputManagerService;->setInTouchMode(ZIIZI)Z

    move-result p0

    return p0
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 3

    .line 1414
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 6

    .line 952
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-ne v1, p1, :cond_b

    .line 955
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_34

    :cond_b
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 959
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 960
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 961
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_9

    .line 963
    :try_start_17
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_9

    :catch_1a
    :cond_1a
    if-eqz p1, :cond_28

    .line 970
    :try_start_1c
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 971
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_9

    .line 973
    :try_start_25
    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9

    .line 979
    :catch_28
    :cond_28
    :try_start_28
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInputFilterEnabled(Z)V

    .line 980
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_9

    throw p0
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 6

    .line 1366
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice_enforcePermission()V

    .line 1367
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    return-void
.end method

.method public setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3

    .line 1356
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutOverrideForInputDevice_enforcePermission()V

    .line 1357
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    return-void
.end method

.method public final setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V
    .registers 6

    .line 2127
    const-string v0, "light does not exist"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2128
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightStateInternal device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " light "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "lightState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_30
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_46

    .line 2133
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getPlayerId()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightPlayerId(III)V

    return-void

    .line 2137
    :cond_46
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    return-void
.end method

.method public setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .registers 10

    .line 2163
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_8

    move v0, v3

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    const-string v1, "lights and light states are not same length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2165
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2166
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerService$LightSession;

    if-eqz p4, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 2167
    :goto_1e
    const-string/jumbo v4, "not registered"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2168
    invoke-static {p4}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmDeviceId(Lcom/android/server/input/InputManagerService$LightSession;)I

    move-result v1

    if-ne v1, p1, :cond_2b

    move v2, v3

    :cond_2b
    const-string v1, "Incorrect device ID"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2169
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {p4, v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightIds(Lcom/android/server/input/InputManagerService$LightSession;[I)V

    .line 2170
    invoke-virtual {p3}, [Landroid/hardware/lights/LightState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/lights/LightState;

    invoke-static {p4, v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightStates(Lcom/android/server/input/InputManagerService$LightSession;[Landroid/hardware/lights/LightState;)V

    .line 2171
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v1, :cond_6c

    .line 2172
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLightStates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmOpPkg(Lcom/android/server/input/InputManagerService$LightSession;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " device "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :catchall_6a
    move-exception p0

    goto :goto_71

    .line 2174
    :cond_6c
    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_11 .. :try_end_6d} :catchall_6a

    .line 2175
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    return-void

    .line 2174
    :goto_71
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6a

    throw p0
.end method

.method public final setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V
    .registers 10

    .line 2145
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object v0

    .line 2146
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 2147
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 2148
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/Light;

    invoke-virtual {v4}, Landroid/hardware/lights/Light;->getId()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/Light;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2150
    :cond_29
    :goto_29
    array-length v0, p2

    if-ge v2, v0, :cond_44

    .line 2151
    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2152
    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/Light;

    aget-object v3, p3, v2

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/input/InputManagerService;->setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method

.method public setMouseScalingEnabled(ZI)V
    .registers 6

    .line 3274
    const-string/jumbo v0, "setMouseScalingEnabled()"

    const/4 v1, 0x1

    const-string v2, "android.permission.SET_POINTER_SPEED"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3282
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setMouseScalingEnabledInternal(ZI)V

    return-void

    .line 3278
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The SET_POINTER_SPEED permission is required to override mouse scaling."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMouseScalingEnabledInternal(ZI)V
    .registers 4

    .line 1493
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public setPointerFillStyle(I)V
    .registers 2

    .line 4183
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->setPointerFillStyle(I)V

    return-void
.end method

.method public setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 6

    .line 1800
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/input/NativeInputManagerService;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final setPointerIconVisible(ZI)V
    .registers 4

    .line 1498
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public setPointerScale(F)V
    .registers 2

    .line 4191
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->setPointerScale(F)V

    return-void
.end method

.method public final setPointerSpeedUnchecked(I)V
    .registers 3

    const/4 v0, -0x7

    .line 1487
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1489
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    return-void
.end method

.method public setPointerStrokeStyle(I)V
    .registers 2

    .line 4187
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->setPointerStrokeStyle(I)V

    return-void
.end method

.method public final setSensorPrivacy(IZ)V
    .registers 4

    .line 2554
    const-class p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 2555
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManagerInternal;

    const/4 v0, -0x2

    .line 2556
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal;->setPhysicalToggleSensorPrivacy(IIZ)V

    return-void
.end method

.method public setSystemUiLightsOut(Z)V
    .registers 2

    .line 1418
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOut(Z)V

    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 6

    .line 1249
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1253
    const-string v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1254
    const-string v0, "calibration must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3e

    const/4 v0, 0x3

    if-gt p2, v0, :cond_3e

    .line 1259
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1261
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1263
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p1}, Lcom/android/server/input/NativeInputManagerService;->reloadCalibration()V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_36

    .line 1266
    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1268
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3c

    .line 1266
    :goto_36
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1267
    throw p1

    .line 1268
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_34

    throw p0

    .line 1256
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "surfaceRotation value out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1251
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1924
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1927
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    .line 1929
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    return-void

    :catchall_15
    move-exception p0

    .line 1928
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setUseLargePointerIcons(Z)V
    .registers 2

    .line 4179
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->setUseLargePointerIcons(Z)V

    return-void
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz v0, :cond_7

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 598
    :cond_7
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 600
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    return-void
.end method

.method public start()V
    .registers 3

    .line 629
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->start()V

    .line 633
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method public startDragAndDrop(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 7

    .line 1432
    sget-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "startDragAndDrop"

    invoke-static {v0, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;ZZ)Z

    move-result p0

    return p0
.end method

.method public systemRunning()V
    .registers 12

    .line 646
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 647
    const-string v0, "InputManager"

    const-string v1, "System ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_b
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 652
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/input/InputSettingsObserver;->registerAndUpdate()V

    .line 654
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 655
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v2, 0x0

    const/16 v3, -0x100

    const/4 v4, -0x1

    .line 659
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v5

    move v6, v2

    .line 660
    :goto_29
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_48

    .line 661
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    if-nez v5, :cond_3d

    move v8, v1

    goto :goto_3e

    :cond_3d
    move v8, v2

    :goto_3e
    const-wide/16 v9, 0x0

    .line 662
    invoke-interface {v7, v9, v10, v8}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :catchall_46
    move-exception p0

    goto :goto_b1

    .line 664
    :cond_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_46

    const/16 v0, 0xe

    .line 667
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-ne v0, v1, :cond_54

    .line 670
    invoke-virtual {p0, v1, v1}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_54
    const/16 v0, 0x9

    .line 673
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_60

    .line 676
    invoke-virtual {p0, v2, v1}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 679
    :cond_60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 687
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 689
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v0, :cond_80

    .line 690
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 693
    :cond_80
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLayoutManager;->systemRunning()V

    .line 694
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {v0}, Lcom/android/server/input/BatteryController;->systemRunning()V

    .line 695
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-virtual {v0}, Lcom/android/server/input/SysfsNodeMonitor;->systemRunning()V

    .line 696
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->systemRunning()V

    .line 697
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLedController;->systemRunning()V

    .line 698
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {v0}, Lcom/android/server/input/KeyRemapper;->systemRunning()V

    .line 699
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {v0}, Lcom/android/server/input/PointerIconCache;->systemRunning()V

    .line 700
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardGlyphManager;->systemRunning()V

    .line 701
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v0}, Lcom/android/server/input/KeyGestureController;->systemRunning()V

    .line 702
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->initKeyGestures()V

    return-void

    .line 664
    :goto_b1
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_46

    throw p0
.end method

.method public transferTouch(Landroid/os/IBinder;I)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    const-string v0, "destChannelToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "transferTouch"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
    .registers 7

    .line 1459
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    sget-object v0, Lcom/android/server/input/InputManagerService;->INPUT_STREAM_MODIFIER_LOG:Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 1462
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1461
    const-string/jumbo v2, "transferTouchGesture: transferEntireGesture=%s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;ZZ)Z

    move-result p0

    return p0
.end method

.method public tryPointerSpeed(I)V
    .registers 4

    .line 1474
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 1483
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void

    .line 1480
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1476
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 4

    .line 2248
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;I)V

    return-void
.end method

.method public unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 3

    .line 2674
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyEventActivityListener_enforcePermission()V

    .line 2675
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2676
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->unregisterKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public final unregisterKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 4

    .line 2696
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2697
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/input/IKeyEventActivityListener;)V

    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 2699
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 3

    .line 3191
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureEventListener_enforcePermission()V

    .line 3193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyGestureController;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V

    return-void
.end method

.method public unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    .registers 3

    .line 3212
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureHandler_enforcePermission()V

    .line 3214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyGestureController;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;I)V

    return-void
.end method

.method public unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 3

    .line 2292
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener_enforcePermission()V

    .line 2293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 2295
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2294
    invoke-interface {p0, p1, v0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V

    return-void
.end method

.method public unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 625
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 5

    .line 2037
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 2038
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterSensorListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2038
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_27
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2044
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2046
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 2047
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 2048
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->getListener()Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_59

    .line 2051
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_61

    :catchall_57
    move-exception p0

    goto :goto_63

    .line 2049
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2053
    :cond_61
    :goto_61
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_57

    throw p0
.end method

.method public unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 3

    .line 3166
    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterStickyModifierStateListener_enforcePermission()V

    .line 3167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    .line 3169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3168
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/StickyModifierStateController;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;I)V

    return-void
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 7

    .line 1774
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1775
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_30

    .line 1777
    :try_start_7
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1778
    const-string p0, "InputManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrator state listener "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_32

    .line 1785
    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    return p0

    :catchall_30
    move-exception p0

    goto :goto_49

    :catchall_32
    move-exception p0

    goto :goto_45

    .line 1781
    :cond_34
    :try_start_34
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 1782
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 1783
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_32

    .line 1785
    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1786
    throw p0

    .line 1787
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_30

    throw p0
.end method

.method public unsetTypeAssociationInternal(Ljava/lang/String;)V
    .registers 4

    .line 1933
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1935
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 1937
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    return-void

    :catchall_12
    move-exception p0

    .line 1936
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;)V"
        }
    .end annotation

    .line 4053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4054
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 4055
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    if-nez v1, :cond_1a

    .line 4057
    new-instance v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    .line 4058
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_40

    .line 4060
    :cond_1a
    :goto_1a
    iget-boolean v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 4061
    iget-boolean v3, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    .line 4062
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4063
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eq v2, p2, :cond_2a

    .line 4064
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconVisibility(IZ)V

    .line 4066
    :cond_2a
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    if-eq v3, p2, :cond_33

    .line 4067
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setMouseScalingEnabled(IZ)V

    .line 4070
    :cond_33
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->allDefaults()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 4071
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4073
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_18

    throw p0
.end method

.method public final updateFocusEventDebugViewEnabled()V
    .registers 7

    .line 4118
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    .line 4120
    :goto_e
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4121
    :try_start_11
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz v4, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    move v5, v2

    :goto_18
    if-ne v0, v5, :cond_1e

    .line 4122
    monitor-exit v3

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_85

    :cond_1e
    if-eqz v0, :cond_2a

    .line 4125
    new-instance v4, Lcom/android/server/input/debug/FocusEventDebugView;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/android/server/input/debug/FocusEventDebugView;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    goto :goto_2d

    :cond_2a
    const/4 v5, 0x0

    .line 4129
    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 4131
    :goto_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_1c

    .line 4132
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/view/WindowManager;

    .line 4136
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowManager;

    if-nez v0, :cond_46

    .line 4138
    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void

    .line 4143
    :cond_46
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v5, 0x7df

    .line 4144
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x118

    .line 4145
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4148
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4149
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v2, 0x3

    .line 4150
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, -0x3

    .line 4151
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FocusEventDebugView - display "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4153
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4154
    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 4131
    :goto_85
    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_1c

    throw p0
.end method

.method public updatePointerLocationEnabled(Z)V
    .registers 2

    .line 4084
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPointerLocationChanged(Z)V

    return-void
.end method

.method public updateShowKeyPresses(Z)V
    .registers 3

    .line 4088
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 4092
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    .line 4093
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    .line 4095
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4096
    :try_start_d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz p0, :cond_17

    .line 4097
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->updateShowKeyPresses(Z)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 4099
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public updateShowRotaryInput(Z)V
    .registers 3

    .line 4103
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 4107
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    .line 4108
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    .line 4110
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4111
    :try_start_d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz p0, :cond_17

    .line 4112
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->updateShowRotaryInput(Z)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 4114
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public updateTouchpadVisualizerEnabled(Z)V
    .registers 3

    .line 4077
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setShouldNotifyTouchpadHardwareState(Z)V

    .line 4078
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_c

    .line 4079
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->updateTouchpadVisualizerEnabled(Z)V

    :cond_c
    return-void
.end method

.method public verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 3

    .line 1093
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1094
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p0

    return-object p0
.end method

.method public vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 11

    .line 1610
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 1611
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p2

    .line 1612
    monitor-enter p2

    const/4 p3, 0x1

    .line 1613
    :try_start_b
    iput-boolean p3, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1614
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v4

    .line 1615
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v5

    iget v6, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    .line 1614
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .line 1616
    monitor-exit p2

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_23

    throw p0
.end method

.method public vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 11

    .line 1634
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p3

    .line 1635
    monitor-enter p3

    .line 1636
    :try_start_5
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_1a

    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-nez v0, :cond_1a

    .line 1638
    const-string p0, "InputManager"

    const-string p1, "Only Mono and Stereo effects are supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    monitor-exit p3

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    goto/16 :goto_92

    :cond_1a
    const/4 v0, 0x1

    .line 1642
    iput-boolean v0, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1643
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_41

    .line 1644
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    .line 1645
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 1646
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v4

    .line 1647
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v5

    iget v6, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    .line 1646
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    goto :goto_90

    :cond_41
    move v1, p1

    .line 1648
    instance-of p1, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz p1, :cond_90

    .line 1649
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 1650
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1651
    new-array v0, p2, [J

    .line 1653
    new-instance v3, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/high16 v2, -0x80000000

    move v4, v2

    .line 1654
    :goto_5b
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge p2, v5, :cond_87

    .line 1655
    new-instance v5, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    invoke-direct {v5, v6}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 1657
    array-length v6, v0

    if-nez v6, :cond_73

    .line 1658
    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v0

    :cond_73
    if-ne v4, v2, :cond_79

    .line 1661
    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v4

    .line 1663
    :cond_79
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5b

    .line 1665
    :cond_87
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v5, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move-object v2, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/input/NativeInputManagerService;->vibrateCombined(I[JLandroid/util/SparseArray;II)V

    .line 1668
    :cond_90
    :goto_90
    monitor-exit p3

    return-void

    :goto_92
    monitor-exit p3
    :try_end_93
    .catchall {:try_start_5 .. :try_end_93} :catchall_16

    throw p0
.end method
