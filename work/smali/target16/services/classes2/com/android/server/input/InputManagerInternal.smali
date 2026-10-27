.class public abstract Lcom/android/server/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyBackupPayload(Ljava/util/Map;I)V
.end method

.method public abstract closeVirtualInputDevice(Landroid/os/IBinder;)V
.end method

.method public abstract createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract createVirtualDpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualMouse(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualNavigationTouchpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualRotaryEncoder(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualStylus(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract createVirtualTouchscreen(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;
.end method

.method public abstract getBackupPayload(I)Ljava/util/Map;
.end method

.method public abstract getLastUsedInputDeviceId()I
.end method

.method public abstract handleKeyGestureInKeyGestureController(Landroid/hardware/input/KeyGestureEvent;)V
.end method

.method public abstract interceptKeyCombinationBeforeAccessibility(Landroid/view/KeyEvent;)J
.end method

.method public abstract notifyInputMethodConnectionActive(Z)V
.end method

.method public abstract notifyKeyGestureCompleted(I[III)V
.end method

.method public abstract notifyUserActivity()V
.end method

.method public abstract onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
.end method

.method public abstract registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
.end method

.method public abstract setAccessibilityPointerIconScaleFactor(IF)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V
.end method

.method public abstract setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
.end method

.method public abstract setDisplayViewports(Ljava/util/List;)V
.end method

.method public abstract setPointerIconVisible(ZI)V
.end method

.method public abstract setPulseGestureEnabled(Z)V
.end method

.method public abstract setStylusButtonMotionEventsEnabled(Z)V
.end method

.method public abstract transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
.end method
