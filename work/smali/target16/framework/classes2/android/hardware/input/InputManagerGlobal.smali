.class public final Landroid/hardware/input/InputManagerGlobal;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerGlobal$TestSession;,
        Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;,
        Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;,
        Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputManagerGlobal"

.field private static blacklist sInstance:Landroid/hardware/input/InputManagerGlobal;


# instance fields
.field private blacklist mBatteryListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBatteryListenersLock:Ljava/lang/Object;

.field private final blacklist mIm:Landroid/hardware/input/IInputManager;

.field private blacklist mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field private final blacklist mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

.field private blacklist mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

.field private blacklist mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

.field private blacklist mKeyEventActivityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManager$KeyEventActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyEventActivityLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

.field private final blacklist mKeyGestureEventListenerLock:Ljava/lang/Object;

.field private blacklist mKeyGestureEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field private final blacklist mKeyGesturesToHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManager$KeyGestureEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field private final blacklist mKeyboardBacklightListenerLock:Ljava/lang/Object;

.field private blacklist mKeyboardBacklightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnTabletModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

.field private final blacklist mStickyModifierStateListenerLock:Ljava/lang/Object;

.field private blacklist mStickyModifierStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVelocityTrackerStrategy:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyEventActivityLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGestureEventListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyGesturesToHandlerMap(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManagerGlobal;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->onInputDevicesChanged([I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onTabletModeChanged(JZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/IInputManager;)V
    .registers 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    .line 158
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    .line 159
    nop

    .line 161
    :try_start_3e
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p1}, Landroid/hardware/input/IInputManager;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_45

    .line 164
    goto :goto_5f

    .line 162
    :catch_45
    move-exception p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get VelocityTracker strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManagerGlobal"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 165
    :goto_5f
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private static blacklist containsDeviceId([II)Z
    .registers 5

    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 381
    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    .line 382
    const/4 p0, 0x1

    return p0

    .line 380
    :cond_b
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 385
    :cond_e
    return v0
.end method

.method public static blacklist createTestSession(Landroid/hardware/input/IInputManager;)Landroid/hardware/input/InputManagerGlobal$TestSession;
    .registers 6

    .line 208
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 209
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 210
    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {v2, p0}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 211
    const-string v2, "InputManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting InputManagerGlobal test session with new service instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ", old service instance = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 213
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerGlobal;->getInputManagerService()Landroid/hardware/input/IInputManager;

    move-result-object v3

    goto :goto_2c

    :cond_2a
    const-string v3, "null"

    :goto_2c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    monitor-exit v0

    return-object p0

    .line 219
    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private blacklist debug()Z
    .registers 3

    .line 87
    const-string v0, "InputManagerGlobal"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private blacklist findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .registers 5

    .line 432
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 434
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_16

    .line 435
    return v1

    .line 433
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 438
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .registers 5

    .line 644
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 645
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 646
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_16

    .line 647
    return v1

    .line 645
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 650
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public static blacklist getInstance()Landroid/hardware/input/InputManagerGlobal;
    .registers 3

    .line 175
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 176
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    if-nez v1, :cond_1a

    .line 177
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_1a

    .line 179
    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 182
    :cond_1a
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private blacklist initializeTabletModeListenerLocked()V
    .registers 3

    .line 634
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    .line 636
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 639
    nop

    .line 640
    return-void

    .line 637
    :catch_d
    move-exception v0

    .line 638
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static synthetic blacklist lambda$createTestSession$0(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing test session and restoring service instance to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/hardware/input/InputManagerGlobal;->getInputManagerService()Landroid/hardware/input/IInputManager;

    move-result-object v1

    goto :goto_14

    :cond_12
    const-string v1, "null"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "InputManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sput-object p0, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 218
    return-void
.end method

.method static synthetic blacklist lambda$unregisterKeyGestureEventListener$3(Landroid/hardware/input/InputManager$KeyGestureEventListener;Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;)Z
    .registers 2

    .line 1175
    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static synthetic blacklist lambda$unregisterKeyboardBacklightListener$1(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;)Z
    .registers 2

    .line 937
    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static synthetic blacklist lambda$unregisterStickyModifierStateListener$2(Landroid/hardware/input/InputManager$StickyModifierStateListener;Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;)Z
    .registers 2

    .line 1089
    iget-object p1, p1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private blacklist onInputDevicesChanged([I)V
    .registers 12

    .line 294
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    .line 295
    if-eqz v0, :cond_22

    .line 296
    const-string v1, "InputManagerGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received input devices changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_22
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 300
    :try_start_25
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_2b
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_89

    .line 301
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 302
    invoke-static {p1, v3}, Landroid/hardware/input/InputManagerGlobal;->containsDeviceId([II)Z

    move-result v4

    if-nez v4, :cond_88

    .line 303
    if-eqz v0, :cond_76

    .line 304
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 305
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4e

    :cond_4c
    const-string v4, "<null>"

    .line 306
    :goto_4e
    const-string v5, "InputManagerGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_76
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 309
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_84

    .line 310
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceRemoved(I)V

    .line 312
    :cond_84
    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 315
    :cond_88
    goto :goto_2b

    .line 317
    :cond_89
    const/4 v2, 0x0

    :goto_8a
    array-length v3, p1

    if-ge v2, v3, :cond_11d

    .line 318
    aget v3, p1, v2

    .line 319
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 320
    const/4 v5, 0x0

    if-ltz v4, :cond_ed

    .line 321
    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice;

    .line 322
    if-eqz v6, :cond_ec

    .line 323
    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    .line 324
    invoke-virtual {v6}, Landroid/view/InputDevice;->getGeneration()I

    move-result v8

    if-eq v8, v7, :cond_ec

    .line 325
    if-eqz v0, :cond_da

    .line 326
    const-string v7, "InputManagerGlobal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 327
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_da
    iget-object v6, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 330
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_e8

    .line 331
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceChanged(I)V

    .line 333
    :cond_e8
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 337
    :cond_ec
    goto :goto_119

    .line 338
    :cond_ed
    if-eqz v0, :cond_107

    .line 339
    const-string v4, "InputManagerGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_107
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-eqz v4, :cond_115

    .line 343
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputDeviceAdded(I)V

    .line 345
    :cond_115
    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 317
    :goto_119
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_8a

    .line 349
    :cond_11d
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_11f
    move-exception p1

    monitor-exit v1
    :try_end_121
    .catchall {:try_start_25 .. :try_end_121} :catchall_11f

    throw p1
.end method

.method private blacklist onTabletModeChanged(JZ)V
    .registers 8

    .line 546
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->debug()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 547
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received tablet mode changed: whenNanos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inTabletMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_28
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 551
    :try_start_2b
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 552
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_42

    .line 553
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 554
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 555
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 557
    :cond_42
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_44

    throw p1
.end method

.method private blacklist populateInputDevicesLocked()V
    .registers 7

    .line 260
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 262
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    .line 264
    :try_start_a
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_13

    .line 267
    nop

    .line 268
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    goto :goto_19

    .line 265
    :catch_13
    move-exception v0

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 271
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_3f

    .line 274
    :try_start_1d
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_39

    .line 277
    nop

    .line 279
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    .line 280
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_3f

    aget v4, v0, v3

    .line 281
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 275
    :catch_39
    move-exception v0

    .line 276
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 284
    :cond_3f
    return-void
.end method

.method private blacklist sendMessageToInputDeviceListenersLocked(II)V
    .registers 8

    .line 390
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 392
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 393
    invoke-virtual {v3, p1, p2, v1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 395
    :cond_1c
    return-void
.end method


# virtual methods
.method public blacklist addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 9

    .line 679
    const-string v0, "executor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 680
    const-string v0, "listener should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 684
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 685
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 687
    :cond_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 688
    if-nez v1, :cond_42

    .line 691
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    invoke-direct {v1, v2}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>(Landroid/hardware/input/InputManagerGlobal-IA;)V

    .line 692
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_8c

    .line 694
    :try_start_34
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2, p1, v3}, Landroid/hardware/input/IInputManager;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_8c

    .line 697
    goto :goto_77

    .line 695
    :catch_3c
    move-exception p1

    .line 696
    :try_start_3d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 701
    :cond_42
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 702
    const/4 v3, 0x0

    :goto_49
    if-ge v3, v2, :cond_77

    .line 703
    iget-object v4, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 704
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v4, v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 705
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 706
    :cond_5e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to register an InputDeviceBatteryListener that has already been registered for deviceId: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 713
    :cond_77
    :goto_77
    new-instance p1, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    invoke-direct {p1, p3, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V

    .line 715
    iget-object p2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object p2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    if-eqz p2, :cond_8a

    .line 719
    iget-object p2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 721
    :cond_8a
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_8c
    move-exception p1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3d .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1814
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1817
    nop

    .line 1818
    return-void

    .line 1815
    :catch_7
    move-exception p1

    .line 1816
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1791
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1794
    nop

    .line 1795
    return-void

    .line 1792
    :catch_7
    move-exception p1

    .line 1793
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 2

    .line 1849
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->cancelCurrentTouch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1852
    nop

    .line 1853
    return-void

    .line 1850
    :catch_7
    move-exception v0

    .line 1851
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .registers 4

    .line 1608
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1611
    nop

    .line 1612
    return-void

    .line 1609
    :catch_7
    move-exception p1

    .line 1610
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist closeLightSession(ILandroid/os/IBinder;)V
    .registers 4

    .line 1548
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->closeLightSession(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1551
    nop

    .line 1552
    return-void

    .line 1549
    :catch_7
    move-exception p1

    .line 1550
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 5

    .line 1733
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1734
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 1735
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0, p1}, Landroid/hardware/input/IInputManager;->createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object v0

    .line 1736
    new-instance v1, Landroid/hardware/input/VirtualKeyboard;

    invoke-direct {v1, p1, v0}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/hardware/input/IVirtualInputDevice;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 1737
    :catch_28
    move-exception p1

    .line 1738
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist deviceHasKeys(I[I)[Z
    .registers 6

    .line 1658
    array-length v0, p2

    new-array v0, v0, [Z

    .line 1660
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1663
    nop

    .line 1664
    return-object v0

    .line 1661
    :catch_c
    move-exception p1

    .line 1662
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist deviceHasKeys([I)[Z
    .registers 3

    .line 1651
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object p1

    return-object p1
.end method

.method public blacklist disableInputDevice(I)V
    .registers 5

    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 478
    nop

    .line 479
    return-void

    .line 475
    :catch_7
    move-exception v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InputManagerGlobal"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist disableSensor(II)V
    .registers 4

    .line 1437
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->disableSensor(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1440
    nop

    .line 1441
    return-void

    .line 1438
    :catch_7
    move-exception p1

    .line 1439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableInputDevice(I)V
    .registers 5

    .line 462
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 466
    nop

    .line 467
    return-void

    .line 463
    :catch_7
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InputManagerGlobal"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist enableSensor(IIII)Z
    .registers 6

    .line 1425
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->enableSensor(IIII)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1427
    :catch_7
    move-exception p1

    .line 1428
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist flushSensor(II)Z
    .registers 4

    .line 1448
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->flushSensor(II)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1449
    :catch_7
    move-exception p1

    .line 1450
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .registers 7

    .line 518
    const-string v0, "display should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 523
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 525
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 526
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 527
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_36

    .line 528
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 529
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 525
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 533
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_4b

    .line 539
    :try_start_3a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object p1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_45

    return-object p1

    .line 540
    :catch_45
    move-exception p1

    .line 541
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 533
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public blacklist getInputDevice(I)Landroid/view/InputDevice;
    .registers 5

    .line 235
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 238
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 239
    if-gez v1, :cond_11

    .line 240
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_11
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_32

    .line 244
    if-nez v2, :cond_30

    .line 246
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_2a
    .catchall {:try_start_1b .. :try_end_21} :catchall_32

    .line 249
    nop

    .line 250
    if-eqz v2, :cond_30

    .line 251
    :try_start_24
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_30

    .line 247
    :catch_2a
    move-exception p1

    .line 248
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :cond_30
    :goto_30
    monitor-exit v0

    return-object v2

    .line 255
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;
    .registers 5

    .line 792
    if-nez p2, :cond_8

    .line 793
    new-instance p1, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    invoke-direct {p1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>()V

    return-object p1

    .line 796
    :cond_8
    :try_start_8
    iget-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {p2, p1}, Landroid/hardware/input/IInputManager;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object p1

    .line 797
    new-instance p2, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean v0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {p2, v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object p2

    .line 798
    :catch_1a
    move-exception p1

    .line 799
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 3

    .line 1838
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1839
    :catch_7
    move-exception p1

    .line 1840
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 7

    .line 485
    const-string v0, "descriptor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 488
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 490
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 491
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_49

    .line 492
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 493
    if-nez v3, :cond_3a

    .line 494
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_4c

    .line 496
    :try_start_24
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_34
    .catchall {:try_start_24 .. :try_end_2a} :catchall_4c

    .line 499
    nop

    .line 500
    if-nez v3, :cond_2e

    .line 501
    goto :goto_46

    .line 503
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3a

    .line 497
    :catch_34
    move-exception p1

    .line 498
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 505
    :cond_3a
    :goto_3a
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 506
    monitor-exit v0

    return-object v3

    .line 491
    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 509
    :cond_49
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 510
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public blacklist getInputDeviceIds()[I
    .registers 6

    .line 445
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 446
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 448
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 449
    new-array v2, v1, [I

    .line 450
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1c

    .line 451
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 453
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 454
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;
    .registers 3

    .line 1481
    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceLightsManager;-><init>(I)V

    return-object v0
.end method

.method public blacklist getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;
    .registers 4

    .line 1399
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1400
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-nez v1, :cond_e

    .line 1401
    new-instance v1, Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/input/InputDeviceSensorManager;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    .line 1403
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1404
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .registers 4

    .line 1558
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object v0
.end method

.method public blacklist getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;
    .registers 3

    .line 1566
    new-instance v0, Landroid/hardware/input/InputDeviceVibratorManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceVibratorManager;-><init>(I)V

    return-object v0
.end method

.method public blacklist getInputManagerService()Landroid/hardware/input/IInputManager;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method public blacklist getKeyCharacterMap(Landroid/hardware/input/KeyboardLayout;)Landroid/view/KeyCharacterMap;
    .registers 3

    .line 1683
    if-nez p1, :cond_8

    .line 1684
    const/4 p1, -0x1

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p1

    return-object p1

    .line 1687
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object p1

    .line 1688
    :catch_13
    move-exception p1

    .line 1689
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 4

    .line 1672
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getKeyCodeForKeyLocation(II)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1673
    :catch_7
    move-exception p1

    .line 1674
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 2

    .line 1383
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/hardware/input/KeyboardLayout;

    return-object p1
.end method

.method blacklist getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 4

    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 1503
    :catch_b
    move-exception p1

    .line 1504
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getLights(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 1490
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getLights(I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1491
    :catch_7
    move-exception p1

    .line 1492
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 3

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1414
    :catch_7
    move-exception p1

    .line 1415
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getVibratorIds(I)[I
    .registers 3

    .line 1575
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getVibratorIds(I)[I

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 1576
    :catch_7
    move-exception p1

    .line 1577
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 1717
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result p1

    return p1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 5

    .line 1698
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1700
    if-eqz p2, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    goto :goto_16

    .line 1703
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1707
    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return p1

    .line 1708
    :catch_1d
    move-exception p1

    .line 1709
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist isVibrating(I)Z
    .registers 3

    .line 1619
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isVibrating(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1620
    :catch_7
    move-exception p1

    .line 1621
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 5

    .line 1779
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    .line 1780
    :catch_c
    move-exception p1

    .line 1781
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    .line 1536
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1539
    nop

    .line 1540
    return-void

    .line 1537
    :catch_7
    move-exception p1

    .line 1538
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 3

    .line 1861
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->pilferPointers(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1864
    nop

    .line 1865
    return-void

    .line 1862
    :catch_7
    move-exception p1

    .line 1863
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 6

    .line 401
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 404
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 405
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 406
    if-gez v1, :cond_1b

    .line 407
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1b
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method blacklist registerKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 5

    .line 1297
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1298
    nop

    .line 1299
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_9
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    if-nez v1, :cond_2b

    .line 1301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    .line 1302
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_43

    .line 1305
    :try_start_1c
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25
    .catchall {:try_start_1c .. :try_end_24} :catchall_43

    .line 1308
    goto :goto_2c

    .line 1306
    :catch_25
    move-exception p1

    .line 1307
    :try_start_26
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1300
    :cond_2b
    const/4 v1, 0x0

    .line 1310
    :goto_2c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1313
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    monitor-exit v0

    return v1

    .line 1311
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener has already been registered!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_43

    throw p1
.end method

.method blacklist registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 8
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

    .line 1209
    const-string v0, "List of gestures should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1210
    const-string v0, "handler should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1216
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1217
    :try_start_13
    new-instance v1, Landroid/util/IntArray;

    .line 1218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 1221
    const/4 v2, 0x0

    :goto_24
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 1222
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1223
    if-eq v3, p2, :cond_42

    .line 1226
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1221
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1224
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Handler has already been registered!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1230
    :cond_4a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1231
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1235
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1236
    goto :goto_4e

    .line 1232
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " is already registered by another handler!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_89
    .catchall {:try_start_13 .. :try_end_89} :catchall_cb

    .line 1241
    :cond_89
    :try_start_89
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-eqz v2, :cond_95

    .line 1242
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, v3}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V

    goto :goto_9d

    .line 1244
    :cond_95
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    .line 1246
    :goto_9d
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, v1, v3}, Landroid/hardware/input/IInputManager;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V

    .line 1247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1248
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_c1} :catch_c5
    .catchall {:try_start_89 .. :try_end_c1} :catchall_cb

    .line 1249
    goto :goto_ac

    .line 1252
    :cond_c2
    nop

    .line 1253
    :try_start_c3
    monitor-exit v0

    .line 1254
    return-void

    .line 1250
    :catch_c5
    move-exception p1

    .line 1251
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1253
    :catchall_cb
    move-exception p1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_cb

    throw p1

    .line 1213
    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key gestures provided!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist registerKeyGestureEventListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1138
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1139
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1141
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    if-nez v1, :cond_2e

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    .line 1144
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureEventListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5a

    .line 1147
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5a

    .line 1150
    goto :goto_2e

    .line 1148
    :catch_28
    move-exception p1

    .line 1149
    :try_start_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1152
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1153
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_4e

    .line 1154
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyGestureEventListener;

    if-eq v3, p2, :cond_46

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1155
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener has already been registered!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1158
    :cond_4e
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyGestureEventListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;Ljava/util/concurrent/Executor;)V

    .line 1160
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method blacklist registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 899
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 900
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 902
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    if-nez v1, :cond_2e

    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 905
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5a

    .line 908
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5a

    .line 911
    goto :goto_2e

    .line 909
    :catch_28
    move-exception p1

    .line 910
    :try_start_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 913
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 914
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_4e

    .line 915
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-eq v3, p2, :cond_46

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 916
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener has already been registered!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :cond_4e
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Ljava/util/concurrent/Executor;)V

    .line 921
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    monitor-exit v0

    .line 923
    return-void

    .line 922
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method blacklist registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 5

    .line 602
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 605
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 606
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeTabletModeListenerLocked()V

    .line 608
    :cond_13
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 609
    if-gez v1, :cond_23

    .line 610
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 612
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_23
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw p1
.end method

.method blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 3

    .line 1459
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1460
    :catch_7
    move-exception p1

    .line 1461
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist registerStickyModifierStateListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1051
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1052
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1054
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    if-nez v1, :cond_2e

    .line 1056
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    .line 1057
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_5a

    .line 1060
    :try_start_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_5a

    .line 1063
    goto :goto_2e

    .line 1061
    :catch_28
    move-exception p1

    .line 1062
    :try_start_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1065
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1066
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_4e

    .line 1067
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    if-eq v3, p2, :cond_46

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1068
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener has already been registered!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1071
    :cond_4e
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;Ljava/util/concurrent/Executor;)V

    .line 1073
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4

    .line 1630
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1631
    :catch_7
    move-exception p1

    .line 1632
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 7

    .line 729
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 733
    monitor-exit v0

    return-void

    .line 735
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 736
    if-nez v1, :cond_1a

    .line 738
    monitor-exit v0

    return-void

    .line 740
    :cond_1a
    iget-object v1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 742
    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 743
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 744
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 745
    goto :goto_1d

    .line 747
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 749
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_40

    .line 750
    monitor-exit v0

    return-void

    .line 754
    :cond_40
    iget-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_62

    .line 756
    :try_start_45
    iget-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {p2, p1, v1}, Landroid/hardware/input/IInputManager;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_5c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_62

    .line 759
    nop

    .line 760
    :try_start_4d
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_5a

    .line 763
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 764
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 766
    :cond_5a
    monitor-exit v0

    .line 767
    return-void

    .line 757
    :catch_5c
    move-exception p1

    .line 758
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 766
    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_62

    throw p1
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 3

    .line 1825
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1828
    nop

    .line 1829
    return-void

    .line 1826
    :catch_7
    move-exception p1

    .line 1827
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 3

    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1805
    nop

    .line 1806
    return-void

    .line 1803
    :catch_7
    move-exception p1

    .line 1804
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V
    .registers 10

    .line 1515
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 1516
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 1517
    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v1, :cond_1d

    .line 1518
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    .line 1517
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1520
    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object p2

    .line 1521
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-array v1, v3, [Landroid/hardware/lights/LightState;

    .line 1522
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/lights/LightState;

    .line 1521
    invoke-interface {v0, p1, v2, p2, p3}, Landroid/hardware/input/IInputManager;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 1526
    nop

    .line 1527
    return-void

    .line 1524
    :catch_30
    move-exception p1

    .line 1525
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;I)V
    .registers 5

    .line 1761
    if-eqz p2, :cond_22

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    goto :goto_22

    .line 1764
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointer capture mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1768
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    .line 1771
    nop

    .line 1772
    return-void

    .line 1769
    :catch_29
    move-exception p1

    .line 1770
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3

    .line 1391
    return-void
.end method

.method public blacklist setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 4

    .line 1367
    const-string v0, "identifier should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1368
    const-string v0, "keyboardLayoutDescriptor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1371
    :try_start_a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 1374
    nop

    .line 1375
    return-void

    .line 1372
    :catch_11
    move-exception p1

    .line 1373
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 7

    .line 1748
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/hardware/input/IInputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    .line 1749
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 1750
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 5

    .line 416
    if-eqz p1, :cond_21

    .line 420
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 421
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result p1

    .line 422
    if-ltz p1, :cond_1c

    .line 423
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 424
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 425
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 427
    :cond_1c
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p1

    .line 417
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/InputManager$KeyEventActivityListener;)Z
    .registers 5

    .line 1319
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1321
    nop

    .line 1322
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_9
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 1324
    monitor-exit v0

    return v2

    .line 1326
    :cond_10
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1327
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_34

    if-eqz p1, :cond_32

    .line 1329
    :try_start_1d
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_2c
    .catchall {:try_start_1d .. :try_end_25} :catchall_34

    .line 1332
    nop

    .line 1333
    const/4 p1, 0x0

    :try_start_27
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListeners:Ljava/util/ArrayList;

    .line 1334
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyEventActivityListener:Landroid/hardware/input/IKeyEventActivityListener;

    goto :goto_32

    .line 1330
    :catch_2c
    move-exception p1

    .line 1331
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1336
    :cond_32
    :goto_32
    monitor-exit v0

    .line 1337
    return v2

    .line 1336
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw p1
.end method

.method blacklist unregisterKeyGestureEventHandler(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .registers 5

    .line 1261
    const-string v0, "handler should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1263
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1264
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    if-nez v1, :cond_e

    .line 1265
    monitor-exit v0

    return-void

    .line 1267
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_28

    .line 1268
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_25

    .line 1269
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1267
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1272
    :cond_28
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGesturesToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_44

    if-nez p1, :cond_42

    .line 1274
    :try_start_30
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_3c
    .catchall {:try_start_30 .. :try_end_37} :catchall_44

    .line 1277
    nop

    .line 1278
    const/4 p1, 0x0

    :try_start_39
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    goto :goto_42

    .line 1275
    :catch_3c
    move-exception p1

    .line 1276
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1280
    :cond_42
    :goto_42
    monitor-exit v0

    .line 1281
    return-void

    .line 1280
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw p1
.end method

.method blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V
    .registers 5

    .line 1169
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1171
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1173
    monitor-exit v0

    return-void

    .line 1175
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/input/InputManager$KeyGestureEventListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1176
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz p1, :cond_34

    .line 1178
    :try_start_20
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 1181
    nop

    .line 1182
    const/4 p1, 0x0

    :try_start_29
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListeners:Ljava/util/ArrayList;

    .line 1183
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyGestureEventListener:Landroid/hardware/input/IKeyGestureEventListener;

    goto :goto_34

    .line 1179
    :catch_2e
    move-exception p1

    .line 1180
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1185
    :cond_34
    :goto_34
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p1
.end method

.method blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 5

    .line 931
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 935
    monitor-exit v0

    return-void

    .line 937
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 938
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz p1, :cond_34

    .line 940
    :try_start_20
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 943
    nop

    .line 944
    const/4 p1, 0x0

    :try_start_29
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 945
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    goto :goto_34

    .line 941
    :catch_2e
    move-exception p1

    .line 942
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 947
    :cond_34
    :goto_34
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p1
.end method

.method blacklist unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 4

    .line 621
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 624
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result p1

    .line 625
    if-ltz p1, :cond_1a

    .line 626
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 627
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 629
    :cond_1a
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 3

    .line 1470
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1473
    nop

    .line 1474
    return-void

    .line 1471
    :catch_7
    move-exception p1

    .line 1472
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .registers 5

    .line 1083
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1085
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1087
    monitor-exit v0

    return-void

    .line 1089
    :cond_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1090
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_36

    if-eqz p1, :cond_34

    .line 1092
    :try_start_20
    iget-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {p1, v1}, Landroid/hardware/input/IInputManager;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2e
    .catchall {:try_start_20 .. :try_end_27} :catchall_36

    .line 1095
    nop

    .line 1096
    const/4 p1, 0x0

    :try_start_29
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListeners:Ljava/util/ArrayList;

    .line 1097
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mStickyModifierStateListener:Landroid/hardware/input/IStickyModifierStateListener;

    goto :goto_34

    .line 1093
    :catch_2e
    move-exception p1

    .line 1094
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1099
    :cond_34
    :goto_34
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p1
.end method

.method blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4

    .line 1641
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1642
    :catch_7
    move-exception p1

    .line 1643
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 5

    .line 1597
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1600
    nop

    .line 1601
    return-void

    .line 1598
    :catch_7
    move-exception p1

    .line 1599
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 5

    .line 1586
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1589
    nop

    .line 1590
    return-void

    .line 1587
    :catch_7
    move-exception p1

    .line 1588
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
