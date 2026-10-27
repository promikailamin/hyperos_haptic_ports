.class public final Lcom/android/server/input/InputManagerService$LocalService;
.super Lcom/android/server/input/InputManagerInternal;
.source "InputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 3732
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Lcom/android/server/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public applyBackupPayload(Ljava/util/Map;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3924
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3923
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3925
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    .line 3926
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3925
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->applyInputGesturesBackupPayload([BI)V

    :cond_1a
    return-void
.end method

.method public closeVirtualInputDevice(Landroid/os/IBinder;)V
    .registers 2

    .line 4010
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/input/VirtualInputDeviceController;->unregisterInputDevice(Landroid/os/IBinder;)V

    return-void
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 2

    .line 3818
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualDpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 10

    .line 3982
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 3983
    invoke-virtual {p2}, Landroid/hardware/input/VirtualDpadConfig;->getVendorId()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualDpadConfig;->getProductId()I

    move-result v4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3985
    invoke-virtual {p2}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result p2

    .line 3984
    invoke-static {p0, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$mgetTargetDisplayIdForInput(Lcom/android/server/input/InputManagerService;I)I

    move-result v6

    move-object v5, p1

    .line 3982
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController;->createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 3

    .line 3945
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->createVirtualKeyboardInternal(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualMouse(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 9

    .line 3952
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 3953
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseConfig;->getVendorId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseConfig;->getProductId()I

    move-result v3

    .line 3954
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v5

    move-object v4, p1

    .line 3952
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/input/VirtualInputDeviceController;->createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualNavigationTouchpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 12

    .line 3970
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v1

    .line 3971
    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getVendorId()I

    move-result v3

    .line 3972
    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getProductId()I

    move-result v4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3974
    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    .line 3973
    invoke-static {p0, v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mgetTargetDisplayIdForInput(Lcom/android/server/input/InputManagerService;I)I

    move-result v6

    .line 3975
    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getWidth()I

    move-result v8

    move-object v5, p1

    .line 3970
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/input/VirtualInputDeviceController;->createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualRotaryEncoder(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 10

    .line 4002
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 4003
    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getVendorId()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getProductId()I

    move-result v4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 4005
    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result p2

    .line 4004
    invoke-static {p0, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$mgetTargetDisplayIdForInput(Lcom/android/server/input/InputManagerService;I)I

    move-result v6

    move-object v5, p1

    .line 4002
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/VirtualInputDeviceController;->createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualStylus(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 11

    .line 3992
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 3993
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getVendorId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getProductId()I

    move-result v3

    .line 3994
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getHeight()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusConfig;->getWidth()I

    move-result v7

    move-object v4, p1

    .line 3992
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/input/VirtualInputDeviceController;->createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualTouchscreen(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 11

    .line 3961
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmVirtualInputDeviceController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/VirtualInputDeviceController;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 3962
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getVendorId()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getProductId()I

    move-result v3

    .line 3963
    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getHeight()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchscreenConfig;->getWidth()I

    move-result v7

    move-object v4, p1

    .line 3961
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/input/VirtualInputDeviceController;->createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(I)Ljava/util/Map;
    .registers 4

    .line 3912
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 3914
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    .line 3915
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->getInputGestureBackupPayload(I)[B

    move-result-object p0

    .line 3914
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLastUsedInputDeviceId()I
    .registers 1

    .line 3876
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getLastUsedInputDeviceId()I

    move-result p0

    return p0
.end method

.method public handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V
    .registers 12

    .line 3888
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v2

    .line 3889
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v5

    .line 3890
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getFlags()I

    move-result v8

    .line 3891
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/4 v7, 0x0

    .line 3888
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method public interceptKeyCombinationBeforeAccessibility(Landroid/view/KeyEvent;)J
    .registers 2

    .line 3938
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->interceptKeyCombinationBeforeAccessibility(Landroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0
.end method

.method public notifyInputMethodConnectionActive(Z)V
    .registers 2

    .line 3813
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInputMethodConnectionIsActive(Z)V

    return-void
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .registers 5

    .line 3882
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureCompleted(I[III)V

    return-void
.end method

.method public notifyUserActivity()V
    .registers 1

    .line 3830
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->notifyUserActivity()V

    return-void
.end method

.method public onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 3825
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardLayoutManager(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyboardLayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->onInputMethodSubtypeChanged(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
    .registers 2

    .line 3933
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V

    return-void
.end method

.method public registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 2

    .line 3803
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 4

    .line 3902
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyGestureController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/KeyGestureController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/KeyGestureController;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void
.end method

.method public setAccessibilityPointerIconScaleFactor(IF)V
    .registers 3

    .line 3896
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setAccessibilityPointerIconScaleFactor(IF)V

    return-void
.end method

.method public setDisplayEligibilityForPointerCapture(IZ)V
    .registers 3

    .line 3793
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V

    return-void
.end method

.method public setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V
    .registers 7

    .line 3746
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3747
    :goto_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 3748
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3749
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v2, 0x1

    goto :goto_20

    .line 3753
    :cond_19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3756
    :cond_23
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p1

    .line 3757
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 3756
    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setNonInteractiveDisplays([I)V

    .line 3758
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmBatteryController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/BatteryController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/input/BatteryController;->onInteractiveChanged(Z)V

    .line 3759
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardBacklightController(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->onInteractiveChanged(Z)V

    return-void
.end method

.method public setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
    .registers 2

    .line 3740
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayTopologyInternal(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayTopologyGraph;)V

    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .registers 2

    .line 3735
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    return-void
.end method

.method public setPointerIconVisible(ZI)V
    .registers 3

    .line 3798
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V

    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 4

    .line 3771
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 3774
    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_2a
    .catchall {:try_start_9 .. :try_end_14} :catchall_28

    if-eqz p1, :cond_1f

    .line 3775
    :try_start_16
    const-string p0, "1"

    goto :goto_21

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_36

    :catch_1c
    move-exception p0

    move-object v0, v1

    goto :goto_2b

    :cond_1f
    const-string p0, "0"

    :goto_21
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_1c
    .catchall {:try_start_16 .. :try_end_24} :catchall_19

    .line 3779
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 3777
    :goto_2b
    :try_start_2b
    const-string p1, "InputManager"

    const-string v1, "Unable to setPulseGestureEnabled"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 3779
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_36
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3780
    throw p0

    :cond_3a
    return-void
.end method

.method public setStylusButtonMotionEventsEnabled(Z)V
    .registers 2

    .line 3871
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    return-void
.end method

.method public transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
    .registers 4

    .line 3787
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method
