.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceBatteryListener;,
        Landroid/hardware/input/InputManager$KeyboardBacklightListener;,
        Landroid/hardware/input/InputManager$StickyModifierStateListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventListener;,
        Landroid/hardware/input/InputManager$KeyGestureEventHandler;,
        Landroid/hardware/input/InputManager$KeyEventActivityListener;,
        Landroid/hardware/input/InputManager$CustomInputGestureResult;,
        Landroid/hardware/input/InputManager$RemappableModifierKey;,
        Landroid/hardware/input/InputManager$SwitchState;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_QUERY_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

.field public static final whitelist ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field public static final blacklist BLOCK_UNTRUSTED_TOUCHES:J = 0x96aec7eL

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_ALREADY_EXISTS:I = 0x2

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_DOES_NOT_EXIST:I = 0x3

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_OTHER:I = 0x5

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_ERROR_RESERVED_GESTURE:I = 0x4

.field public static final blacklist CUSTOM_INPUT_GESTURE_RESULT_SUCCESS:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final greylist INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final greylist-max-o INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final blacklist META_DATA_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

.field public static final whitelist META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final greylist-max-o SWITCH_STATE_OFF:I = 0x0

.field public static final greylist-max-o SWITCH_STATE_ON:I = 0x1

.field public static final greylist-max-o SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final greylist-max-p mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mIsStylusPointerIconEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 81
    const-string v0, "InputManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/input/InputManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    .line 334
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 335
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputManagerService()Landroid/hardware/input/IInputManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 336
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    .line 337
    return-void
.end method


# virtual methods
.method public blacklist addCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .registers 4

    .line 1512
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1513
    const/4 p1, 0x5

    return p1

    .line 1516
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/input/IInputManager;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return p1

    .line 1517
    :catch_19
    move-exception p1

    .line 1518
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 5

    .line 1339
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    .line 1340
    return-void
.end method

.method public greylist-max-o addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3

    .line 625
    return-void
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .registers 4

    .line 1150
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addPortAssociation(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1153
    nop

    .line 1154
    return-void

    .line 1151
    :catch_7
    move-exception p1

    .line 1152
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1223
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1188
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public blacklist areTouchpadGesturesAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 1358
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 2

    .line 1285
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->cancelCurrentTouch()V

    .line 1286
    return-void
.end method

.method public blacklist clearAllModifierKeyRemappings()V
    .registers 2

    .line 665
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->clearAllModifierKeyRemappings()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 668
    nop

    .line 669
    return-void

    .line 666
    :catch_7
    move-exception v0

    .line 667
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1022
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o deviceHasKeys(I[I)[Z
    .registers 4

    .line 904
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o deviceHasKeys([I)[Z
    .registers 3

    .line 888
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o disableInputDevice(I)V
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    .line 418
    return-void
.end method

.method public greylist-max-o enableInputDevice(I)V
    .registers 3

    .line 403
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    .line 404
    return-void
.end method

.method public blacklist getAppLaunchBookmarks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 1601
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 1603
    new-instance v5, Landroid/hardware/input/InputGestureData;

    invoke-direct {v5, v4}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1d

    .line 1602
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1605
    :cond_1c
    return-object v0

    .line 1606
    :catch_1d
    move-exception v0

    .line 1607
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 2

    .line 601
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getCursorPosition(I)Landroid/graphics/PointF;
    .registers 3

    .line 1665
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getCursorPositionInLogicalDisplay(I)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1666
    :catch_7
    move-exception p1

    .line 1667
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputGestureData$Filter;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 1576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1578
    return-object v0

    .line 1581
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1582
    if-nez p1, :cond_18

    const/4 p1, -0x1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result p1

    .line 1581
    :goto_1c
    invoke-interface {v1, v2, p1}, Landroid/hardware/input/IInputManager;->getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    .line 1583
    new-instance v4, Landroid/hardware/input/InputGestureData;

    invoke-direct {v4, v3}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_33

    .line 1581
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1587
    :cond_31
    nop

    .line 1588
    return-object v0

    .line 1585
    :catch_33
    move-exception p1

    .line 1586
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 2

    .line 616
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .registers 3

    .line 1254
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getInputDevice(I)Landroid/view/InputDevice;
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 3

    .line 1268
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getInputDeviceIds()[I
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .registers 4

    .line 1277
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInputDeviceViewBehavior(I)Landroid/view/InputDevice$ViewBehavior;
    .registers 2

    .line 370
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    .line 371
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Landroid/view/InputDevice;->getViewBehavior()Landroid/view/InputDevice$ViewBehavior;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public blacklist getInputGesture(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;
    .registers 4

    .line 1491
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1492
    invoke-interface {p1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object p1

    .line 1491
    invoke-interface {v0, v1, p1}, Landroid/hardware/input/IInputManager;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    .line 1493
    if-nez p1, :cond_14

    .line 1494
    const/4 p1, 0x0

    return-object p1

    .line 1496
    :cond_14
    new-instance v0, Landroid/hardware/input/InputGestureData;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    .line 1497
    :catch_1a
    move-exception p1

    .line 1498
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 4

    .line 929
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result p1

    return p1
.end method

.method public blacklist getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .registers 3

    .line 961
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardGlyphMap()Z

    move-result v0

    if-nez v0, :cond_8

    .line 962
    const/4 p1, 0x0

    return-object p1

    .line 965
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 966
    :catch_f
    move-exception p1

    .line 967
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 583
    if-eqz p1, :cond_f

    .line 588
    :try_start_2
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p1

    .line 589
    :catch_9
    move-exception p1

    .line 590
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 584
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getKeyboardLayoutDescriptors()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 538
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 540
    :cond_19
    return-object v1
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 6

    .line 746
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 747
    :catch_7
    move-exception p1

    .line 748
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 6

    .line 803
    if-eqz p1, :cond_f

    .line 808
    :try_start_2
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p1

    .line 809
    :catch_9
    move-exception p1

    .line 810
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 804
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputDeviceDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getKeyboardLayoutPreview(Landroid/hardware/input/KeyboardLayout;II)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 949
    new-instance v0, Landroid/hardware/input/PhysicalKeyLayout;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 950
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/PhysicalKeyLayout;-><init>(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V

    .line 951
    new-instance p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0, p2, p3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;-><init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V

    return-object p1
.end method

.method public blacklist getKeyboardLayoutTypeForLayoutDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 558
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 559
    if-nez p1, :cond_9

    const-string p1, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public greylist-max-o getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 2

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 515
    :catch_7
    move-exception v0

    .line 516
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 2

    .line 569
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/hardware/input/KeyboardLayout;

    return-object p1
.end method

.method public whitelist getMaximumObscuringOpacityForTouch()F
    .registers 2

    .line 873
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public blacklist getModifierKeyRemapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 686
    :catch_7
    move-exception v0

    .line 687
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getMousePointerSpeed()I
    .registers 2

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getMousePointerSpeed()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 831
    :catch_7
    move-exception v0

    .line 832
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 4

    .line 702
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 703
    :catch_7
    move-exception p1

    .line 704
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 1048
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 5

    .line 1001
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isInTabletMode()I
    .registers 2

    .line 455
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 456
    :catch_7
    move-exception v0

    .line 457
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isMicMuted()I
    .registers 2

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isMicMuted()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 495
    :catch_7
    move-exception v0

    .line 496
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isStylusPointerIconEnabled()Z
    .registers 2

    .line 1096
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 1097
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    .line 1099
    :cond_10
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIsStylusPointerIconEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 3

    .line 1323
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    .line 1324
    return-void
.end method

.method public whitelist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 4

    .line 431
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 432
    return-void
.end method

.method public blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 3

    .line 1830
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result p1

    return p1
.end method

.method public blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 1464
    return-void
.end method

.method public blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    .line 1435
    return-void
.end method

.method public blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    .line 1376
    return-void
.end method

.method public greylist-max-o registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 4

    .line 471
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 472
    return-void
.end method

.method public blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    .line 1406
    return-void
.end method

.method public blacklist remapModifierKey(II)V
    .registers 4

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->remapModifierKey(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catch_7
    move-exception p1

    .line 652
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeAllCustomInputGestures(Landroid/hardware/input/InputGestureData$Filter;)V
    .registers 4

    .line 1556
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1557
    return-void

    .line 1560
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1561
    if-nez p1, :cond_13

    const/4 p1, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Filter;->getTag()I

    move-result p1

    .line 1560
    :goto_17
    invoke-interface {v0, v1, p1}, Landroid/hardware/input/IInputManager;->removeAllCustomInputGestures(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 1564
    nop

    .line 1565
    return-void

    .line 1562
    :catch_1c
    move-exception p1

    .line 1563
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeCustomInputGesture(Landroid/hardware/input/InputGestureData;)I
    .registers 4

    .line 1535
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1536
    const/4 p1, 0x5

    return p1

    .line 1539
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1540
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    .line 1539
    invoke-interface {v0, v1, p1}, Landroid/hardware/input/IInputManager;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return p1

    .line 1541
    :catch_19
    move-exception p1

    .line 1542
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 4

    .line 1349
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    .line 1350
    return-void
.end method

.method public greylist-max-o removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3

    .line 634
    return-void
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .registers 3

    .line 1168
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removePortAssociation(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1171
    nop

    .line 1172
    return-void

    .line 1169
    :catch_7
    move-exception p1

    .line 1170
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 3

    .line 1242
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 3

    .line 1202
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;I)V
    .registers 4

    .line 1115
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->requestPointerCapture(Landroid/os/IBinder;I)V

    .line 1116
    return-void
.end method

.method public blacklist resetLockedModifierState()V
    .registers 2

    .line 1620
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->resetLockedModifierState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1623
    nop

    .line 1624
    return-void

    .line 1621
    :catch_7
    move-exception v0

    .line 1622
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3

    .line 609
    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 7

    .line 773
    if-eqz p1, :cond_1b

    .line 776
    if-eqz p5, :cond_13

    .line 781
    :try_start_4
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_c

    .line 785
    nop

    .line 786
    return-void

    .line 783
    :catch_c
    move-exception v0

    move-object p1, v0

    .line 784
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 777
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 774
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setMouseScalingEnabled(ZI)V
    .registers 4

    .line 1642
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setMouseScalingEnabled(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1645
    nop

    .line 1646
    return-void

    .line 1643
    :catch_7
    move-exception p1

    .line 1644
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 7

    .line 1086
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public greylist setPointerIconType(I)V
    .registers 3

    .line 1080
    const-string p1, "InputManager"

    const-string v0, "setPointerIcon: Unsupported app usage!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void
.end method

.method public greylist-max-o setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 5

    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 726
    nop

    .line 727
    return-void

    .line 724
    :catch_7
    move-exception p1

    .line 725
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o tryPointerSpeed(I)V
    .registers 3

    .line 848
    const/4 v0, -0x7

    if-lt p1, v0, :cond_13

    const/4 v0, 0x7

    if-gt p1, v0, :cond_13

    .line 853
    :try_start_6
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 856
    nop

    .line 857
    return-void

    .line 854
    :catch_d
    move-exception p1

    .line 855
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 849
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "speed out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 3

    .line 442
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 443
    return-void
.end method

.method public blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 3

    .line 1843
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z

    move-result p1

    return p1
.end method

.method public blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 3

    .line 1475
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 1476
    return-void
.end method

.method public blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 3

    .line 1446
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    .line 1447
    return-void
.end method

.method public blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 3

    .line 1388
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    .line 1389
    return-void
.end method

.method public greylist-max-o unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 3

    .line 481
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V

    .line 482
    return-void
.end method

.method public blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 3

    .line 1418
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    .line 1419
    return-void
.end method

.method public whitelist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 3

    .line 1066
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1067
    :catch_7
    move-exception p1

    .line 1068
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
