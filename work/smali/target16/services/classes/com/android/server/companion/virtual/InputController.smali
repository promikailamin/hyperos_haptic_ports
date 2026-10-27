.class public Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mInputDeviceListener:Lcom/android/server/companion/virtual/InputController$InputDeviceListener;

.field public final mInputDevices:Landroid/util/ArrayMap;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInputDevices(Lcom/android/server/companion/virtual/InputController;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/companion/virtual/InputController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTokenForInputDeviceIdLocked(Lcom/android/server/companion/virtual/InputController;I)Landroid/os/IBinder;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getTokenForInputDeviceIdLocked(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/AttributionSource;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/virtual/InputController$InputDeviceListener;-><init>(Lcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/InputController-IA;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceListener:Lcom/android/server/companion/virtual/InputController$InputDeviceListener;

    .line 63
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 64
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 65
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    .line 67
    invoke-virtual {v1, v0, p0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public close()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceListener:Lcom/android/server/companion/virtual/InputController$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_a
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 80
    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/input/InputManagerInternal;->closeVirtualInputDevice(Landroid/os/IBinder;)V

    goto :goto_14

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 82
    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public createDpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualDpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 88
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 87
    const-string/jumbo v1, "virtual_devices.value_virtual_dpad_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 96
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 97
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 96
    const-string/jumbo v1, "virtual_devices.value_virtual_keyboard_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createMouse(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualMouse(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 104
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 105
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 104
    const-string/jumbo v1, "virtual_devices.value_virtual_mouse_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createNavigationTouchpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualNavigationTouchpad(Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 123
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 125
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 123
    const-string/jumbo v1, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createRotaryEncoder(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualRotaryEncoder(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 143
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 142
    const-string/jumbo v1, "virtual_devices.value_virtual_rotary_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createStylus(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualStylus(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 132
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 133
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 132
    const-string/jumbo v1, "virtual_devices.value_virtual_stylus_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public createTouchscreen(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->createVirtualTouchscreen(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 114
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 113
    const-string/jumbo v1, "virtual_devices.value_virtual_touchscreen_created_count"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->addDevice(Landroid/os/IBinder;Landroid/hardware/input/IVirtualInputDevice;)V

    return-object p2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " input devices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 167
    :goto_26
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :catchall_4c
    move-exception p0

    goto :goto_50

    .line 170
    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4c

    throw p0
.end method

.method public final getTokenForInputDeviceIdLocked(I)Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    .line 196
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 197
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/IVirtualInputDevice;

    .line 198
    invoke-interface {v1}, Landroid/hardware/input/IVirtualInputDevice;->getInputDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 199
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_23

    return-object p0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_23
    move-exception p0

    .line 203
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInputDevicePresent(I)Z
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getTokenForInputDeviceIdLocked(I)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeDeviceForTesting(Landroid/os/IBinder;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDisplayEligibilityForPointerCapture(ZI)V
    .registers 3

    .line 157
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerInternal;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public setDisplayImePolicy(II)V
    .registers 3

    .line 161
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    return-void
.end method

.method public setMouseScalingEnabled(ZI)V
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->setMouseScalingEnabled(ZI)V

    return-void
.end method

.method public setShowPointerIcon(ZI)V
    .registers 3

    .line 149
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setPointerIconVisible(ZI)V

    return-void
.end method
