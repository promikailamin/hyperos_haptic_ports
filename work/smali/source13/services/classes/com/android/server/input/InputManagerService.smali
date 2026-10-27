.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputMonitorHost;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;,
        Lcom/android/server/input/InputManagerService$LightSession;,
        Lcom/android/server/input/InputManagerService$VibrationInfo;,
        Lcom/android/server/input/InputManagerService$Injector;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field private static final DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

.field private static final DEFAULT_VIBRATION_MAGNITUDE:I = 0xc0

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_POINTER_DISPLAY_ID_CHANGED:I = 0x7

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final PACKAGE_BLOCKLIST_FOR_UNTRUSTED_TOUCHES_TOAST:[Ljava/lang/String;

.field private static final PORT_ASSOCIATIONS_PATH:Ljava/lang/String; = "etc/input-port-associations.xml"

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_MUTE_DEVICE:I = 0xe

.field public static final SW_MUTE_DEVICE_BIT:I = 0x4000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"

.field private static final UNTRUSTED_TOUCHES_TOAST:Z = false


# instance fields
.field private mAcknowledgedPointerDisplayId:I

.field private final mAdditionalDisplayInputProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

.field private final mAssociationsLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mIcon:Landroid/view/PointerIcon;

.field private mIconType:I

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private final mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field final mInputMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/GestureMonitorSpyWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsVibrating:Landroid/util/SparseBooleanArray;

.field private mKeyboardLayoutNotificationShown:Z

.field private final mLidSwitchCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLidSwitchLock:Ljava/lang/Object;

.field private final mLightLock:Ljava/lang/Object;

.field private final mLightSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$LightSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mNative:Lcom/android/server/input/NativeInputManagerService;

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOriginInputDevices:[Landroid/view/InputDevice;

.field private mOverriddenPointerDisplayId:I

.field private mPointerIconDisplayContext:Landroid/content/Context;

.field private mRequestedPointerDisplayId:I

.field private final mRuntimeAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorAccuracyListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorEventListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorEventListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorEventLock:Ljava/lang/Object;

.field private final mStaticAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueIdAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private final mVibratorLock:Ljava/lang/Object;

.field private final mVibratorStateListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVibratorTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightLock(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSessions(Lcom/android/server/input/InputManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckCallingPermission(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeliverInputDevicesChanged(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeliverTabletModeChanged(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetVirtualMousePointerDisplayId(Lcom/android/server/input/InputManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getVirtualMousePointerDisplayId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->handlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/input/InputManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInputDevicesChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSensorEventListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onSensorEventListenerDied(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTabletModeChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreloadDeviceAliases(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreloadKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSpyWindowGestureMonitor(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPointerAcceleration(Lcom/android/server/input/InputManagerService;FI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setPointerAcceleration(FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVirtualMousePointerDisplayIdBlocking(Lcom/android/server/input/InputManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setVirtualMousePointerDisplayIdBlocking(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAccessibilityLargePointerFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBlockUntrustedTouchesModeFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateBlockUntrustedTouchesModeFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeepPressStatusFromSettings(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMaximumObscuringOpacityForTouchFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateMaximumObscuringOpacityForTouchFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePointerSpeedFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowTouchesFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    sput-object v0, Lcom/android/server/input/InputManagerService;->DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 195
    const-string v0, "com.snapchat.android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputManagerService;->PACKAGE_BLOCKLIST_FOR_UNTRUSTED_TOUCHES_TOAST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 429
    new-instance v0, Lcom/android/server/input/InputManagerService$Injector;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/InputManagerService$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;-><init>(Lcom/android/server/input/InputManagerService$Injector;)V

    .line 430
    return-void
.end method

.method constructor <init>(Lcom/android/server/input/InputManagerService$Injector;)V
    .registers 9
    .param p1, "injector"    # Lcom/android/server/input/InputManagerService$Injector;

    .line 433
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 235
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/InputDevice;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 243
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 255
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 259
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 263
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 265
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 269
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 282
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 294
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    .line 301
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    .line 304
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    .line 309
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    .line 314
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 316
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 321
    new-instance v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 324
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 2910
    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mOriginInputDevices:[Landroid/view/InputDevice;

    .line 436
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 438
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 439
    new-instance v1, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 440
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService$Injector;->getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 442
    nop

    .line 443
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_131

    move-object v4, v5

    goto :goto_136

    .line 450
    :cond_131
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_136
    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 452
    new-instance v4, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v4, p0, v5}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService-IA;)V

    invoke-virtual {p1, v4}, Lcom/android/server/input/InputManagerService$Injector;->registerLocalService(Landroid/hardware/input/InputManagerInternal;)V

    .line 454
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/input/NativeInputManagerService;->getPtr()J

    move-result-wide v5

    invoke-interface {v4, v0, v1, v5, v6}, Lcom/android/server/input/InputManagerServiceStub;->init(Landroid/content/Context;Landroid/os/Handler;J)V

    .line 455
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v4

    .line 456
    invoke-interface {v2}, Lcom/android/server/input/NativeInputManagerService;->getPtr()J

    move-result-wide v5

    .line 455
    invoke-interface {v4, v0, v1, v5, v6}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->initTouchWakeupModeFeature(Landroid/content/Context;Landroid/os/Handler;J)V

    .line 458
    return-void
.end method

.method private applyAdditionalDisplayInputProperties()V
    .registers 4

    .line 3965
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3966
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 3967
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 3968
    .local v1, "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    if-nez v1, :cond_12

    sget-object v2, Lcom/android/server/input/InputManagerService;->DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    move-object v1, v2

    .line 3969
    :cond_12
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    .line 3970
    .end local v1    # "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    monitor-exit v0

    .line 3971
    return-void

    .line 3970
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 4
    .param p1, "properties"    # Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 3977
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v1, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eq v0, v1, :cond_30

    .line 3978
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v1, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    iput-boolean v1, v0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 3979
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eqz v0, :cond_2a

    .line 3980
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 3981
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3982
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_30

    .line 3984
    :cond_24
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    goto :goto_30

    .line 3987
    :cond_2a
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    .line 3991
    :cond_30
    :goto_30
    iget v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget v1, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    .line 3992
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget v1, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    iput v1, v0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    .line 3993
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v1, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setPointerAcceleration(F)V

    .line 3995
    :cond_47
    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2285
    monitor-enter p1

    .line 2286
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 2287
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->cancelVibrate(II)V

    .line 2288
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 2290
    :cond_11
    monitor-exit p1

    .line 2291
    return-void

    .line 2290
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 2830
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;
    .param p3, "checkInstrumentationSource"    # Z

    .line 2836
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 2837
    return v2

    .line 2840
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 2841
    return v2

    .line 2844
    :cond_15
    if-eqz p3, :cond_49

    .line 2845
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2846
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2847
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    const-string v1, "ActivityManagerInternal should not be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v1

    .line 2849
    .local v1, "instrumentationUid":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_49

    .line 2853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2855
    .local v4, "token":J
    :try_start_33
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1, v3, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_44

    if-nez v3, :cond_40

    .line 2857
    nop

    .line 2860
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    return v2

    .line 2860
    :cond_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2861
    goto :goto_49

    .line 2860
    :catchall_44
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2861
    throw v2

    .line 2865
    .end local v0    # "ami":Landroid/app/ActivityManagerInternal;
    .end local v1    # "instrumentationUid":I
    .end local v4    # "token":J
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2866
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2869
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    const/4 v1, 0x0

    return v1
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1408
    array-length v0, p0

    .line 1409
    .local v0, "numDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 1410
    aget-object v2, p0, v1

    .line 1411
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1412
    const/4 v3, 0x1

    return v3

    .line 1409
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1415
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;III)Landroid/view/InputChannel;
    .registers 23
    .param p1, "monitorToken"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 746
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, v10, v11}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;

    move-result-object v12

    .line 748
    .local v12, "sc":Landroid/view/SurfaceControl;
    if-eqz v12, :cond_78

    .line 752
    invoke-virtual {v1, v10}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v13

    .line 755
    .local v13, "channel":Landroid/view/InputChannel;
    :try_start_12
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1, v13}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_53

    const/4 v2, 0x0

    move-object/from16 v14, p1

    :try_start_1a
    invoke-interface {v14, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_51

    .line 759
    nop

    .line 760
    iget-object v15, v1, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v15

    .line 761
    :try_start_21
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-virtual {v13}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v9

    new-instance v8, Lcom/android/server/input/GestureMonitorSpyWindow;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_4a

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v1, v8

    move-object v8, v12

    move-object/from16 v16, v12

    move-object v12, v9

    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .local v16, "sc":Landroid/view/SurfaceControl;
    move-object v9, v13

    :try_start_3a
    invoke-direct/range {v2 .. v9}, Lcom/android/server/input/GestureMonitorSpyWindow;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    monitor-exit v15
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4f

    .line 766
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 767
    .local v0, "outInputChannel":Landroid/view/InputChannel;
    invoke-virtual {v13, v0}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 768
    return-object v0

    .line 764
    .end local v0    # "outInputChannel":Landroid/view/InputChannel;
    .end local v16    # "sc":Landroid/view/SurfaceControl;
    .restart local v12    # "sc":Landroid/view/SurfaceControl;
    :catchall_4a
    move-exception v0

    move-object/from16 v16, v12

    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .restart local v16    # "sc":Landroid/view/SurfaceControl;
    :goto_4d
    :try_start_4d
    monitor-exit v15
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4f

    throw v0

    :catchall_4f
    move-exception v0

    goto :goto_4d

    .line 756
    .end local v16    # "sc":Landroid/view/SurfaceControl;
    .restart local v12    # "sc":Landroid/view/SurfaceControl;
    :catch_51
    move-exception v0

    goto :goto_56

    :catch_53
    move-exception v0

    move-object/from16 v14, p1

    :goto_56
    move-object/from16 v16, v12

    .line 757
    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "sc":Landroid/view/SurfaceControl;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client died before \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could be created."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v1, 0x0

    return-object v1

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "channel":Landroid/view/InputChannel;
    .end local v16    # "sc":Landroid/view/SurfaceControl;
    .restart local v12    # "sc":Landroid/view/SurfaceControl;
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create gesture monitor surface on display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 14
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, "numFullKeyboardsAdded":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1088
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1092
    :try_start_e
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v2, :cond_14

    .line 1093
    monitor-exit v1

    return-void

    .line 1095
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1097
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1098
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_30

    .line 1099
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 1100
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 1099
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1103
    .end local v4    # "i":I
    :cond_30
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v4, v4

    .line 1104
    .local v4, "numDevices":I
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    .line 1105
    .local v5, "deviceIdAndGeneration":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    const/4 v7, 0x1

    if-ge v6, v4, :cond_7c

    .line 1106
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v8, v8, v6

    .line 1107
    .local v8, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v9, v6, 0x2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    aput v10, v5, v9

    .line 1108
    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v7

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    aput v7, v5, v9

    .line 1110
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_79

    invoke-virtual {v8}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 1111
    nop

    .line 1112
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 1111
    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 1113
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_10b

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "numFullKeyboardsAdded":I
    .local v9, "numFullKeyboardsAdded":I
    :try_start_6b
    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    move v0, v9

    goto :goto_79

    .line 1119
    .end local v3    # "numListeners":I
    .end local v4    # "numDevices":I
    .end local v5    # "deviceIdAndGeneration":[I
    .end local v6    # "i":I
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :catchall_70
    move-exception v2

    move v0, v9

    goto/16 :goto_10c

    .line 1115
    .end local v9    # "numFullKeyboardsAdded":I
    .restart local v0    # "numFullKeyboardsAdded":I
    .restart local v3    # "numListeners":I
    .restart local v4    # "numDevices":I
    .restart local v5    # "deviceIdAndGeneration":[I
    .restart local v6    # "i":I
    .restart local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_74
    :try_start_74
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 1119
    .end local v4    # "numDevices":I
    .end local v6    # "i":I
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_10b

    .line 1122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e
    if-ge v1, v3, :cond_8e

    .line 1123
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 1126
    .end local v1    # "i":I
    :cond_8e
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 1130
    .local v4, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1131
    .local v6, "numFullKeyboards":I
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v8

    .line 1132
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a3
    if-ge v1, v6, :cond_cf

    .line 1133
    :try_start_a5
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputDevice;

    .line 1134
    .local v9, "inputDevice":Landroid/view/InputDevice;
    nop

    .line 1135
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v10

    .line 1136
    .local v10, "layout":Ljava/lang/String;
    if-nez v10, :cond_c7

    .line 1137
    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 1138
    if-eqz v10, :cond_c7

    .line 1139
    nop

    .line 1140
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 1139
    invoke-virtual {p0, v11, v10}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 1143
    :cond_c7
    if-nez v10, :cond_cc

    .line 1144
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    .end local v9    # "inputDevice":Landroid/view/InputDevice;
    .end local v10    # "layout":Ljava/lang/String;
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 1147
    .end local v1    # "i":I
    :cond_cf
    monitor-exit v8
    :try_end_d0
    .catchall {:try_start_a5 .. :try_end_d0} :catchall_108

    .line 1152
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1153
    invoke-interface {v1, v8, v4}, Lcom/android/server/input/InputManagerServiceStub;->interceptKeyboardNotification(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    .line 1154
    .local v1, "intercept":Z
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_102

    if-nez v1, :cond_102

    .line 1156
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_fb

    .line 1157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_f1

    .line 1161
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_102

    .line 1163
    :cond_f1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_102

    .line 1165
    :cond_fb
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v2, :cond_102

    .line 1166
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    .line 1169
    :cond_102
    :goto_102
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1170
    return-void

    .line 1147
    .end local v1    # "intercept":Z
    :catchall_108
    move-exception v1

    :try_start_109
    monitor-exit v8
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v1

    .line 1119
    .end local v3    # "numListeners":I
    .end local v4    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v5    # "deviceIdAndGeneration":[I
    .end local v6    # "numFullKeyboards":I
    :catchall_10b
    move-exception v2

    :goto_10c
    :try_start_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v2
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1333
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1335
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 1336
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1337
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1336
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1339
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 1340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 1341
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1340
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1344
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 1339
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3130
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private dumpAssociations(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2774
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Static Associations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2782
    :cond_28
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2783
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 2784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Runtime Associations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2785
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2790
    :cond_53
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unique Id Associations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2797
    :cond_7b
    monitor-exit v0

    .line 2798
    return-void

    .line 2797
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_2b .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method private dumpDisplayInputPropertiesValues(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2812
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2813
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_8e

    .line 2814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAdditionalDisplayInputProperties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8e

    .line 2816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 2817
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2816
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 2819
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 2820
    .local v2, "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pointerAcceleration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pointerIconVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    .end local v2    # "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2824
    .end local v1    # "i":I
    :cond_8e
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b0

    .line 2825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mOverriddenPointerDisplayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    :cond_b0
    monitor-exit v0

    .line 2828
    return-void

    .line 2827
    :catchall_b2
    move-exception v1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b2

    throw v1
.end method

.method private dumpSpyWindowGestureMonitors(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2801
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 2802
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 2803
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Gesture Monitors (implemented as spy windows):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    const/4 v1, 0x0

    .line 2805
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 2806
    .local v3, "monitor":Lcom/android/server/input/GestureMonitorSpyWindow;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/input/GestureMonitorSpyWindow;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    .end local v3    # "monitor":Lcom/android/server/input/GestureMonitorSpyWindow;
    move v1, v5

    goto :goto_2e

    .line 2808
    .end local v5    # "i":I
    :cond_66
    monitor-exit v0

    .line 2809
    return-void

    .line 2808
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private static flatten(Ljava/util/Map;)[Ljava/lang/String;
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

    .line 3175
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3176
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3180
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getContextForDisplay(I)Landroid/content/Context;
    .registers 5
    .param p1, "displayId"    # I

    .line 3322
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 3323
    return-object v0

    .line 3325
    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 3326
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    return-object v0

    .line 3329
    :cond_14
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 3330
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3329
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3331
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 3332
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_2b

    .line 3333
    return-object v0

    .line 3336
    :cond_2b
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getContextForPointerIcon(I)Landroid/content/Context;
    .registers 3
    .param p1, "displayId"    # I

    .line 3305
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 3306
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 3307
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    return-object v0

    .line 3311
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    .line 3314
    if-nez v0, :cond_20

    .line 3315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    .line 3317
    :cond_20
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 13
    .param p1, "d"    # Landroid/view/InputDevice;

    .line 1173
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1176
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1177
    return-object v2

    .line 1179
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v3, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1197
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1198
    return-object v2

    .line 1202
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1204
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1205
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_72

    .line 1206
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 1207
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 1208
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 1209
    .local v6, "numLocales":I
    const/4 v7, 0x0

    .local v7, "localeIndex":I
    :goto_45
    if-ge v7, v6, :cond_6f

    .line 1210
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 1211
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 1212
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 1213
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1209
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1205
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1218
    .end local v3    # "i":I
    :cond_72
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_73
    if-ge v3, v2, :cond_a3

    .line 1219
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 1220
    .restart local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 1221
    .restart local v5    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 1222
    .restart local v6    # "numLocales":I
    const/4 v7, 0x0

    .restart local v7    # "localeIndex":I
    :goto_84
    if-ge v7, v6, :cond_a0

    .line 1223
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 1224
    .restart local v8    # "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 1225
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1222
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_9d
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 1218
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 1231
    .end local v3    # "i":I
    :cond_a3
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 3372
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 3374
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .line 3272
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 10

    .line 3149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3152
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    .line 3153
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3154
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3156
    .local v1, "baseDirs":[Ljava/io/File;
    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_66

    aget-object v5, v1, v4

    .line 3157
    .local v5, "baseDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3158
    .local v6, "confFile":Ljava/io/File;
    :try_start_23
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_61
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_3d

    .line 3159
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_28
    invoke-static {v7}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_33

    .line 3160
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_32} :catch_61
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_3d

    goto :goto_62

    .line 3158
    :catchall_33
    move-exception v8

    :try_start_34
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v9

    :try_start_39
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "baseDirs":[Ljava/io/File;
    .end local v5    # "baseDir":Ljava/io/File;
    .end local v6    # "confFile":Ljava/io/File;
    :goto_3c
    throw v8
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3d} :catch_61
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 3162
    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "baseDirs":[Ljava/io/File;
    .restart local v5    # "baseDir":Ljava/io/File;
    .restart local v6    # "confFile":Ljava/io/File;
    :catch_3d
    move-exception v7

    .line 3163
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "InputManager"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 3160
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_61
    move-exception v7

    .line 3164
    :goto_62
    nop

    .line 3156
    .end local v5    # "baseDir":Ljava/io/File;
    .end local v6    # "confFile":Ljava/io/File;
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 3166
    :cond_66
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getHoverTapSlop()I
    .registers 2

    .line 3266
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .line 3260
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getInputPortAssociations()[Ljava/lang/String;
    .registers 4

    .line 3214
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3217
    .local v0, "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3218
    :try_start_a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3219
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    .line 3221
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3219
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private getInputUniqueIdAssociations()[Ljava/lang/String;
    .registers 4

    .line 3228
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3229
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3230
    .local v1, "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 3232
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3230
    .end local v1    # "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .line 3254
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .line 3248
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 3342
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3343
    return-object v1

    .line 3346
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 3347
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 3348
    return-object v1

    .line 3351
    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3352
    .local v2, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 3361
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-nez v3, :cond_3c

    .line 3362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    return-object v1

    .line 3366
    :cond_3c
    return-object v2
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1616
    const-string/jumbo v0, "identifier must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1617
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1619
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_20

    .line 1620
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1622
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "languageTags"    # Ljava/lang/String;

    .line 1605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1606
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .line 3278
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getParentSurfaceForPointers(I)J
    .registers 5
    .param p1, "displayId"    # I

    .line 3296
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;

    move-result-object v0

    .line 3297
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-nez v0, :cond_b

    .line 3298
    const-wide/16 v1, 0x0

    return-wide v1

    .line 3300
    :cond_b
    iget-wide v1, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    return-wide v1
.end method

.method private getPointerIcon(I)Landroid/view/PointerIcon;
    .registers 3
    .param p1, "displayId"    # I

    .line 3290
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForPointerIcon(I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .line 3284
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .line 1909
    const/4 v0, 0x0

    .line 1911
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 1914
    goto :goto_12

    .line 1913
    :catch_11
    move-exception v1

    .line 1915
    :goto_12
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .line 2024
    move v0, p1

    .line 2026
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 2029
    goto :goto_12

    .line 2028
    :catch_11
    move-exception v1

    .line 2030
    :goto_12
    return v0
.end method

.method private getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2182
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2184
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_2b

    .line 2185
    new-instance v2, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2d

    move-object v1, v2

    .line 2187
    const/4 v2, 0x0

    :try_start_1a
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_24
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2d

    .line 2191
    nop

    .line 2192
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2188
    :catch_24
    move-exception v2

    .line 2190
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "token":Landroid/os/IBinder;
    throw v3

    .line 2194
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 2195
    return-object v1

    .line 2194
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .line 3142
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getVirtualMousePointerDisplayId()I
    .registers 3

    .line 2100
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_3
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    monitor-exit v0

    return v1

    .line 2102
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private handlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V
    .registers 6
    .param p1, "args"    # Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;

    .line 2052
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_3
    iget v1, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    .line 2055
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2056
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    .line 2057
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    iget v1, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    iget v2, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mXPosition:F

    iget v3, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mYPosition:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPointerDisplayIdChanged(IFF)V

    .line 2059
    return-void

    .line 2056
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1751
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1752
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_57

    .line 1756
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1757
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1759
    :try_start_11
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v3

    .line 1760
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4c

    .line 1763
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1764
    nop

    .line 1765
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_54

    .line 1767
    if-eqz v3, :cond_57

    .line 1768
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v2, :cond_30

    .line 1769
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1770
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1772
    :cond_30
    if-eqz v4, :cond_48

    .line 1773
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 1774
    .local v2, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_48

    .line 1775
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1776
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1775
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1777
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1781
    .end local v2    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_48
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_57

    .line 1763
    .end local v3    # "changed":Z
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_4c
    move-exception v3

    :try_start_4d
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1764
    nop

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "direction":I
    throw v3

    .line 1765
    .restart local v0    # "device":Landroid/view/InputDevice;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "direction":I
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3

    .line 1784
    .end local v1    # "key":Ljava/lang/String;
    :cond_57
    :goto_57
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_11

    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1382
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1386
    :cond_11
    return-void
.end method

.method private interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3124
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 3110
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "whenNanos"    # J
    .param p4, "policyFlags"    # I

    .line 3117
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .line 1236
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1237
    return v1

    .line 1240
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1241
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1242
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1243
    return v1

    .line 1245
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method private isMagicPointerEnabled()Z
    .registers 2

    .line 3411
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerServiceStub;->isMagicPointerEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpAssociations$7(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Integer;

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    return-void
.end method

.method static synthetic lambda$dumpAssociations$8(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Integer;

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    return-void
.end method

.method static synthetic lambda$dumpAssociations$9(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  uniqueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    return-void
.end method

.method static synthetic lambda$flatten$11(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 3177
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3178
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3179
    return-void
.end method

.method static synthetic lambda$getDefaultKeyboardLayout$1(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 10
    .param p0, "d"    # Landroid/view/InputDevice;
    .param p1, "systemLocale"    # Ljava/util/Locale;
    .param p2, "layouts"    # Ljava/util/List;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "keyboardLayoutResId"    # I
    .param p5, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1183
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1184
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    if-eq v0, v1, :cond_15

    goto :goto_32

    .line 1187
    :cond_15
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 1188
    .local v0, "locales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 1189
    .local v1, "numLocales":I
    const/4 v2, 0x0

    .local v2, "localeIndex":I
    :goto_1e
    if-ge v2, v1, :cond_31

    .line 1190
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1191
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    goto :goto_31

    .line 1189
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1195
    .end local v2    # "localeIndex":I
    :cond_31
    :goto_31
    return-void

    .line 1185
    .end local v0    # "locales":Landroid/os/LocaleList;
    .end local v1    # "numLocales":I
    :cond_32
    :goto_32
    return-void
.end method

.method static synthetic lambda$getKeyboardLayout$4([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5
    .param p0, "result"    # [Landroid/hardware/input/KeyboardLayout;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1481
    const/4 v0, 0x0

    aput-object p3, p0, v0

    return-void
.end method

.method static synthetic lambda$getKeyboardLayoutOverlay$12([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 7
    .param p0, "result"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 3354
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3355
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_25

    .line 3356
    .local v0, "stream":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 3357
    const/4 v1, 0x1

    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 3358
    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_1a} :catch_25

    .line 3359
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    goto :goto_26

    .line 3354
    .restart local v0    # "stream":Ljava/io/InputStreamReader;
    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "result":[Ljava/lang/String;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "keyboardLayoutResId":I
    .end local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :goto_24
    throw v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_25} :catch_25

    .line 3358
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    .restart local p0    # "result":[Ljava/lang/String;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "keyboardLayoutResId":I
    .restart local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :catch_25
    move-exception v0

    .line 3360
    :goto_26
    return-void
.end method

.method static synthetic lambda$getKeyboardLayouts$3(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1421
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$notifyUntrustedTouch$10(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3021
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch obscured by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be blocked. Check go/untrusted-touches"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3024
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3021
    return-void
.end method

.method static synthetic lambda$setPointerAcceleration$5(FLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2
    .param p0, "acceleration"    # F
    .param p1, "properties"    # Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 1889
    iput p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    return-void
.end method

.method static synthetic lambda$setPointerIconVisible$6(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2
    .param p0, "visible"    # Z
    .param p1, "properties"    # Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 1894
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method

.method static synthetic lambda$updateKeyboardLayouts$2(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5
    .param p0, "availableKeyboardLayouts"    # Ljava/util/HashSet;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1393
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static loadStaticInputPortAssociations()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3191
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v0

    .line 3192
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3194
    .local v1, "confFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3195
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 3196
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 3200
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_56
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_32

    .line 3201
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_20
    invoke-static {v2}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 3202
    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_56
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_32

    .line 3201
    return-object v3

    .line 3200
    :catchall_28
    move-exception v3

    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v4

    :try_start_2e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "confFile":Ljava/io/File;
    :goto_31
    throw v3
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_32

    .line 3204
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v0    # "baseDir":Ljava/io/File;
    .restart local v1    # "confFile":Ljava/io/File;
    :catch_32
    move-exception v2

    .line 3205
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 3202
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_56
    move-exception v2

    .line 3206
    nop

    .line 3208
    :goto_58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .line 2887
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 2888
    return-void
.end method

.method private notifyDropWindow(Landroid/os/IBinder;FF)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3008
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyDropWindow(Landroid/os/IBinder;FF)V

    .line 3009
    return-void
.end method

.method private notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "oldToken"    # Landroid/os/IBinder;
    .param p2, "newToken"    # Landroid/os/IBinder;

    .line 3002
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3003
    return-void
.end method

.method private notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2991
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 2992
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2993
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    .line 2995
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 2996
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    .line 2997
    return-void

    .line 2995
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .line 2893
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2894
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    .line 2895
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 2896
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2897
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2902
    :cond_15
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v1

    .line 2903
    invoke-interface {v1, p1}, Lcom/android/server/input/InputManagerServiceStub;->filterKeyboardDeviceIfNeeded([Landroid/view/InputDevice;)[Landroid/view/InputDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 2904
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mOriginInputDevices:[Landroid/view/InputDevice;

    .line 2906
    monitor-exit v0

    .line 2907
    return-void

    .line 2906
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .registers 3
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;

    .line 3030
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V

    .line 3031
    return-void
.end method

.method private notifySensorAccuracy(III)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I

    .line 3075
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3077
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3078
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3079
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 3080
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3079
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3082
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_39

    .line 3083
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 3084
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorAccuracy(III)V

    .line 3083
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3087
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3088
    return-void

    .line 3082
    .end local v1    # "numListeners":I
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private notifySensorEvent(IIIJ[F)V
    .registers 18
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F

    .line 3056
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3058
    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3059
    :try_start_9
    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3060
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v0, :cond_22

    .line 3061
    iget-object v4, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    iget-object v5, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 3062
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 3061
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3060
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3064
    .end local v3    # "i":I
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_41

    .line 3065
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 3066
    iget-object v3, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorEvent(IIIJ[F)V

    .line 3065
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 3069
    .end local v2    # "i":I
    :cond_3b
    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3070
    return-void

    .line 3064
    .end local v0    # "numListeners":I
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method private notifySwitch(JII)V
    .registers 11
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 2928
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerServiceStub;->notifySwitch(JII)V

    .line 2930
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 2931
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 2932
    .local v0, "lidOpen":Z
    :goto_14
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2933
    :try_start_17
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v4, :cond_32

    .line 2934
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_32

    .line 2935
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 2936
    .local v5, "callbacks":Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    invoke-interface {v5, p1, p2, v0}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    .line 2934
    .end local v5    # "callbacks":Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 2939
    .end local v4    # "i":I
    :cond_32
    monitor-exit v3

    goto :goto_37

    :catchall_34
    move-exception v1

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_34

    throw v1

    .line 2943
    .end local v0    # "lidOpen":Z
    :cond_37
    :goto_37
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_49

    .line 2944
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_41

    move v0, v2

    goto :goto_42

    :cond_41
    move v0, v1

    .line 2945
    .local v0, "tabletOpen":Z
    :goto_42
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/input/InputManagerServiceStub;->notifyTabletSwitchChanged(Z)V

    .line 2949
    .end local v0    # "tabletOpen":Z
    :cond_49
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_5d

    .line 2950
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_53

    move v0, v2

    goto :goto_54

    :cond_53
    move v0, v1

    .line 2951
    .local v0, "lensCovered":Z
    :goto_54
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 2953
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 2956
    .end local v0    # "lensCovered":Z
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_6a

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_6a

    .line 2957
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 2961
    :cond_6a
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_96

    .line 2962
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2963
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v3, -0x1

    and-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2964
    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2965
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_85

    move v3, v2

    goto :goto_86

    :cond_85
    move v3, v1

    :goto_86
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2966
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2967
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2970
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_96
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_b0

    .line 2971
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_9f

    move v1, v2

    :cond_9f
    move v0, v1

    .line 2972
    .local v0, "micMute":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2973
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 2975
    invoke-direct {p0, v2, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 2977
    .end local v0    # "micMute":Z
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_b0
    return-void
.end method

.method private notifyUntrustedTouch(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppressing untrusted touch toast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    return-void
.end method

.method private notifyVibratorState(IZ)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "isOn"    # Z

    .line 2299
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2301
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenersLocked(I)V

    .line 2302
    monitor-exit v0

    .line 2303
    return-void

    .line 2302
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 2328
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2331
    goto :goto_12

    .line 2329
    :catch_a
    move-exception v0

    .line 2330
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputManager"

    const-string v2, "Vibrator state listener failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private notifyVibratorStateListenersLocked(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .line 2307
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2311
    return-void

    .line 2313
    :cond_9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 2314
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 2315
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2317
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_29

    .line 2318
    :try_start_18
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IVibratorStateListener;

    invoke-direct {p0, p1, v3}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_24

    .line 2317
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2321
    .end local v2    # "i":I
    :catchall_24
    move-exception v2

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2322
    throw v2

    .line 2321
    :cond_29
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2322
    nop

    .line 2323
    return-void
.end method

.method private notifyWindowResponsive(Landroid/os/IBinder;IZ)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isPidValid"    # Z

    .line 3044
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 3045
    if-eqz p3, :cond_9

    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    .line 3044
    :goto_d
    invoke-interface {v0, p1, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V

    .line 3046
    return-void
.end method

.method private notifyWindowUnresponsive(Landroid/os/IBinder;IZLjava/lang/String;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isPidValid"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3037
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 3038
    if-eqz p3, :cond_9

    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    .line 3037
    :goto_d
    invoke-interface {v0, p1, v1, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V

    .line 3039
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1078
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1080
    monitor-exit v0

    .line 1081
    return-void

    .line 1080
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "touchedToken"    # Landroid/os/IBinder;

    .line 3136
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 3137
    return-void
.end method

.method private onSensorEventListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 3747
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3748
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3749
    monitor-exit v0

    .line 3750
    return-void

    .line 3749
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1324
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1326
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .line 1946
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1947
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1946
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1954
    return-void
.end method

.method private registerBlockUntrustedTouchesModeSettingObserver()V
    .registers 6

    .line 1985
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1986
    const-string v1, "block_untrusted_touches"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1985
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1994
    return-void
.end method

.method private registerLongPressTimeoutObserver()V
    .registers 6

    .line 1974
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1975
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1974
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1982
    return-void
.end method

.method private registerMaximumObscuringOpacityForTouchSettingObserver()V
    .registers 6

    .line 2002
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2003
    const-string/jumbo v1, "maximum_obscuring_opacity_for_touch"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 2002
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2011
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .line 1898
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1899
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$5;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1898
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1906
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .line 1927
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1928
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$6;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1927
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1935
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadDeviceAliases()V

    .line 615
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    .line 608
    return-void
.end method

.method private removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;

    .line 773
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 774
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 775
    .local v1, "monitor":Lcom/android/server/input/GestureMonitorSpyWindow;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 776
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 777
    if-nez v1, :cond_12

    return-void

    .line 778
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/input/GestureMonitorSpyWindow;->remove()V

    .line 779
    return-void

    .line 775
    .end local v1    # "monitor":Lcom/android/server/input/GestureMonitorSpyWindow;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private setDisplayEligibilityForPointerCapture(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "isEligible"    # Z

    .line 2106
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    .line 2107
    return-void
.end method

.method private setDisplayViewportsInternal(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/display/DisplayViewport;

    .line 619
    .local v0, "vArray":[Landroid/hardware/display/DisplayViewport;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_19

    .line 620
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    aput-object v2, v0, v1

    .line 619
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 623
    .end local v1    # "i":I
    :cond_19
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/input/InputManagerServiceStub;->onDisplayViewportsSet(Ljava/util/List;)V

    .line 624
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V

    .line 628
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v1

    .line 629
    .local v1, "pointerDisplayId":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 630
    :try_start_2e
    iget v3, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    .line 631
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->updatePointerDisplayIdLocked(I)Z

    .line 633
    :cond_36
    monitor-exit v2

    .line 634
    return-void

    .line 633
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_38

    throw v3
.end method

.method private setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "light"    # Landroid/hardware/lights/Light;
    .param p3, "lightState"    # Landroid/hardware/lights/LightState;

    .line 2644
    const-string/jumbo v0, "light does not exist"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2649
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_1c

    .line 2650
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getPlayerId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setLightPlayerId(III)V

    goto :goto_29

    .line 2654
    :cond_1c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 2656
    :goto_29
    return-void
.end method

.method private setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "lightIds"    # [I
    .param p3, "lightStates"    # [Landroid/hardware/lights/LightState;

    .line 2662
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object v0

    .line 2663
    .local v0, "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2664
    .local v1, "lightArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/lights/Light;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 2665
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/Light;

    invoke-virtual {v3}, Landroid/hardware/lights/Light;->getId()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/Light;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2664
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2667
    .end local v2    # "i":I
    :cond_28
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_29
    array-length v3, p2

    if-ge v2, v3, :cond_44

    .line 2668
    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2669
    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/Light;

    aget-object v4, p3, v2

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/input/InputManagerService;->setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V

    .line 2667
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2672
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method private setMagicPointerVisibility(Z)V
    .registers 3
    .param p1, "visibility"    # Z

    .line 3406
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerServiceStub;->setMagicPointerVisibility(Z)V

    .line 3407
    return-void
.end method

.method private setPointerAcceleration(FI)V
    .registers 4
    .param p1, "acceleration"    # F
    .param p2, "displayId"    # I

    .line 1888
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;-><init>(F)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 1890
    return-void
.end method

.method private setPointerIconVisible(ZI)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "displayId"    # I

    .line 1893
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 1895
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 1882
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1884
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    .line 1885
    return-void
.end method

.method private setSensorPrivacy(IZ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "enablePrivacy"    # Z

    .line 2982
    const-class v0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 2983
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 2984
    .local v0, "sensorPrivacyManagerInternal":Landroid/hardware/SensorPrivacyManagerInternal;
    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal;->setPhysicalToggleSensorPrivacy(IIZ)V

    .line 2986
    return-void
.end method

.method private setVirtualMousePointerDisplayIdBlocking(I)Z
    .registers 10
    .param p1, "overrideDisplayId"    # I

    .line 2062
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v0

    .line 2065
    .local v3, "isRemovingOverride":Z
    :goto_8
    if-eqz v3, :cond_11

    .line 2066
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v4

    goto :goto_12

    .line 2067
    :cond_11
    move v4, p1

    :goto_12
    nop

    .line 2069
    .local v4, "resolvedDisplayId":I
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2070
    :try_start_16
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    .line 2072
    invoke-direct {p0, v4}, Lcom/android/server/input/InputManagerService;->updatePointerDisplayIdLocked(I)Z

    move-result v6

    if-nez v6, :cond_24

    iget v6, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne v6, v4, :cond_24

    .line 2075
    monitor-exit v5

    return v2

    .line 2077
    :cond_24
    if-eqz v3, :cond_2c

    iget v6, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne v6, v1, :cond_2c

    .line 2081
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3e

    return v2

    .line 2085
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    .line 2087
    goto :goto_35

    .line 2086
    :catch_34
    move-exception v1

    .line 2095
    :goto_35
    if-nez v3, :cond_3b

    :try_start_37
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne v1, p1, :cond_3c

    :cond_3b
    move v0, v2

    :cond_3c
    monitor-exit v5

    return v0

    .line 2096
    :catchall_3e
    move-exception v0

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 1348
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_77

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 1351
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1353
    :cond_17
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1356
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1359
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1360
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1040898

    .line 1362
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1040897

    .line 1364
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1366
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x108054e

    .line 1367
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 1368
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1370
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1371
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x13

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1374
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1376
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_77
    return-void
.end method

.method private updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 1938
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1939
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1938
    const-string v1, "accessibility_large_pointer_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1941
    .local v0, "accessibilityConfig":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    invoke-static {v2}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1942
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 1943
    return-void
.end method

.method private updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V
    .registers 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;)V"
        }
    .end annotation

    .line 3999
    .local p2, "updater":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4000
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 4001
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 4002
    .local v1, "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    if-nez v1, :cond_18

    .line 4003
    new-instance v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v2}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    move-object v1, v2

    .line 4004
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4006
    :cond_18
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4007
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->allDefaults()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4008
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4010
    :cond_26
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    if-eq p1, v2, :cond_56

    .line 4011
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not applying additional properties for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because the pointer is currently targeting display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    monitor-exit v0

    return-void

    .line 4016
    :cond_56
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    .line 4017
    .end local v1    # "properties":Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    monitor-exit v0

    .line 4018
    return-void

    .line 4017
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private updateBlockUntrustedTouchesModeFromSettings()V
    .registers 3

    .line 1997
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBlockUntrustedTouchesMode(Landroid/content/Context;)I

    move-result v0

    .line 1998
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setBlockUntrustedTouchesMode(I)V

    .line 1999
    return-void
.end method

.method private updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1958
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1961
    .local v0, "timeout":I
    nop

    .line 1962
    const-string/jumbo v1, "input_native_boot"

    const-string v3, "deep_press_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1964
    .local v1, "featureEnabledFlag":Z
    if-eqz v1, :cond_20

    if-gt v0, v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 1966
    .local v2, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1967
    if-eqz v2, :cond_2c

    const-string v4, "Enabling"

    goto :goto_2e

    :cond_2c
    const-string v4, "Disabling"

    :goto_2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " motion classifier because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1968
    if-eqz v1, :cond_47

    const-string v4, "enabled"

    goto :goto_49

    :cond_47
    const-string v4, "disabled"

    :goto_49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", long press timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1966
    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v3, v2}, Lcom/android/server/input/NativeInputManagerService;->setMotionClassifierEnabled(Z)V

    .line 1971
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .line 1391
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1392
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1394
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1396
    :try_start_10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_20

    .line 1398
    :try_start_15
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1399
    nop

    .line 1400
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    .line 1403
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1404
    return-void

    .line 1398
    :catchall_20
    move-exception v2

    :try_start_21
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1399
    nop

    .end local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    throw v2

    .line 1400
    .restart local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private updateMagicPointerPosition(FF)V
    .registers 4
    .param p1, "pointerX"    # F
    .param p2, "pointerY"    # F

    .line 3401
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerServiceStub;->updateMagicPointerPosition(FF)V

    .line 3402
    return-void
.end method

.method private updateMaximumObscuringOpacityForTouchFromSettings()V
    .registers 4

    .line 2014
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getMaximumObscuringOpacityForTouch()F

    move-result v0

    .line 2015
    .local v0, "opacity":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    goto :goto_1a

    .line 2020
    :cond_14
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setMaximumObscuringOpacityForTouch(F)V

    .line 2021
    return-void

    .line 2016
    :cond_1a
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maximum obscuring opacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", it should be >= 0 and <= 1, rejecting update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-void
.end method

.method private updatePointerDisplayIdLocked(I)Z
    .registers 3
    .param p1, "pointerDisplayId"    # I

    .line 2040
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    if-ne v0, p1, :cond_6

    .line 2041
    const/4 v0, 0x0

    return v0

    .line 2043
    :cond_6
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 2045
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerServiceStub;->onUpdatePointerDisplayId(I)V

    .line 2046
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerDisplayId(I)V

    .line 2047
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputProperties()V

    .line 2048
    const/4 v0, 0x1

    return v0
.end method

.method private updatePointerSpeedFromSettings()V
    .registers 2

    .line 1877
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1878
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1879
    return-void
.end method

.method private updateShowTouchesFromSettings()V
    .registers 6

    .line 1919
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 1921
    .local v1, "setting":I
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v0

    :goto_f
    invoke-interface {v2, v4}, Lcom/android/server/input/InputManagerServiceStub;->setShowTouchLevelFromSettings(I)V

    .line 1923
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz v1, :cond_17

    move v0, v3

    :cond_17
    invoke-interface {v2, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowTouches(Z)V

    .line 1924
    return-void
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 14
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1490
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1491
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 1492
    .local v7, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1495
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1496
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v11, v9, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1497
    .local v11, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1498
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "priority":I
    goto :goto_19

    .line 1499
    :cond_34
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1503
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1504
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_27

    .line 1505
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1507
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1512
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_25} :catch_26

    .line 1514
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_27

    .line 1513
    :catch_26
    move-exception v2

    .line 1516
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_27
    :goto_27
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 31
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1520
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1521
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_b

    .line 1522
    return-void

    .line 1525
    :cond_b
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1526
    .local v5, "configResId":I
    const-string v6, "/"

    const-string v7, "InputManager"

    if-nez v5, :cond_3a

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1532
    :cond_3a
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1533
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v8, :cond_45

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_45
    const-string v0, ""

    :goto_47
    move-object v12, v0

    .line 1535
    .local v12, "collection":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-eqz v0, :cond_55

    .line 1536
    move/from16 v0, p4

    move/from16 v17, v0

    .local v0, "priority":I
    goto :goto_58

    .line 1538
    .end local v0    # "priority":I
    :cond_55
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 1542
    .local v17, "priority":I
    :goto_58
    :try_start_58
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v11, v0

    .line 1543
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_1df

    move-object v9, v0

    .line 1544
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_64
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1547
    :goto_6a
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1548
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_1c6

    move-object v10, v0

    .line 1549
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_8c

    .line 1550
    nop

    .line 1596
    .end local v10    # "element":Ljava/lang/String;
    if-eqz v9, :cond_84

    :try_start_77
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_84

    .line 1597
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    :catch_7b
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_1e6

    .line 1600
    :cond_84
    :goto_84
    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_208

    .line 1552
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :cond_8c
    :try_start_8c
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 1553
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v11, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_1c6

    move-object v15, v0

    .line 1556
    .local v15, "a":Landroid/content/res/TypedArray;
    :try_start_9c
    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1558
    .local v0, "name":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 1560
    .local v18, "label":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-virtual {v15, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 1563
    .local v13, "keyboardLayoutResId":I
    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    .line 1565
    .local v20, "languageTags":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v14
    :try_end_b7
    .catchall {:try_start_9c .. :try_end_b7} :catchall_16b

    .line 1566
    .local v14, "locales":Landroid/os/LocaleList;
    const/4 v1, 0x5

    move-object/from16 v21, v4

    .end local v4    # "metaData":Landroid/os/Bundle;
    .local v21, "metaData":Landroid/os/Bundle;
    const/4 v4, -0x1

    :try_start_bb
    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_160

    move/from16 v22, v5

    move-object v5, v15

    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v5, "a":Landroid/content/res/TypedArray;
    .local v22, "configResId":I
    move v15, v1

    .line 1568
    .local v15, "vid":I
    const/4 v1, 0x4

    :try_start_c4
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 1571
    .local v16, "pid":I
    if-eqz v0, :cond_123

    if-eqz v18, :cond_123

    if-nez v13, :cond_db

    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto/16 :goto_12e

    .line 1577
    :cond_db
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e3
    .catchall {:try_start_c4 .. :try_end_e3} :catchall_158

    move-object v4, v10

    .end local v10    # "element":Ljava/lang/String;
    .local v4, "element":Ljava/lang/String;
    move-object v10, v1

    .line 1579
    .local v10, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_fe

    :try_start_e7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_f6

    if-eqz v1, :cond_ee

    goto :goto_fe

    :cond_ee
    move-object/from16 v23, v9

    move-object v3, v11

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto :goto_150

    .line 1588
    .end local v0    # "name":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "keyboardLayoutResId":I
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    :catchall_f6
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    goto/16 :goto_177

    .line 1580
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "keyboardLayoutResId":I
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v20    # "languageTags":Ljava/lang/String;
    :cond_fe
    :goto_fe
    :try_start_fe
    new-instance v1, Landroid/hardware/input/KeyboardLayout;
    :try_end_100
    .catchall {:try_start_fe .. :try_end_100} :catchall_11b

    move-object/from16 v23, v9

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v23, "parser":Landroid/content/res/XmlResourceParser;
    move-object v9, v1

    move-object v3, v11

    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v3, "resources":Landroid/content/res/Resources;
    move-object/from16 v11, v18

    move-object/from16 v24, v0

    move v0, v13

    const/16 v19, 0x1

    .end local v13    # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .local v24, "name":Ljava/lang/String;
    move/from16 v13, v17

    :try_start_10d
    invoke-direct/range {v9 .. v16}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_116

    .line 1583
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v9, p5

    :try_start_112
    invoke-interface {v9, v3, v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_150

    .line 1588
    .end local v0    # "keyboardLayoutResId":I
    .end local v1    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    :catchall_116
    move-exception v0

    move-object/from16 v9, p5

    goto/16 :goto_177

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_11b
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_177

    .line 1571
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "element":Ljava/lang/String;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "name":Ljava/lang/String;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "keyboardLayoutResId":I
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v20    # "languageTags":Ljava/lang/String;
    :cond_123
    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    .line 1572
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "name":Ljava/lang/String;
    :goto_12e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_112 .. :try_end_150} :catchall_156

    .line 1588
    .end local v0    # "keyboardLayoutResId":I
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    :goto_150
    :try_start_150
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1589
    nop

    .line 1590
    .end local v5    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_1b4

    .line 1588
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :catchall_156
    move-exception v0

    goto :goto_177

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "element":Ljava/lang/String;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_158
    move-exception v0

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_177

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "element":Ljava/lang/String;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_160
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move-object v5, v15

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "element":Ljava/lang/String;
    .local v5, "a":Landroid/content/res/TypedArray;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_177

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    :catchall_16b
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move-object v5, v15

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v4, "element":Ljava/lang/String;
    .local v5, "a":Landroid/content/res/TypedArray;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_177
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1589
    nop

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0

    .line 1591
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :cond_17c
    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v4, v10

    move-object v3, v11

    move/from16 v19, v13

    move-object/from16 v9, p5

    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v4, "element":Ljava/lang/String;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unrecognized element \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in keyboard layout resource from receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catchall {:try_start_150 .. :try_end_1b4} :catchall_1c3

    .line 1595
    .end local v4    # "element":Ljava/lang/String;
    :goto_1b4
    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v13, v19

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v3, p3

    goto/16 :goto_6a

    .line 1543
    :catchall_1c3
    move-exception v0

    move-object v1, v0

    goto :goto_1d1

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_1c6
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    move-object v1, v0

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_1d1
    if-eqz v23, :cond_1dc

    :try_start_1d3
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_1d7

    goto :goto_1dc

    :catchall_1d7
    move-exception v0

    move-object v4, v0

    :try_start_1d9
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :cond_1dc
    :goto_1dc
    throw v1
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1dd} :catch_1dd

    .line 1597
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :catch_1dd
    move-exception v0

    goto :goto_1e6

    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    :catch_1df
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 1598
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    :goto_1e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_208
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1687
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1691
    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1694
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1697
    :try_start_17
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1698
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_34

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1699
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1701
    :cond_34
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1703
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1702
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 1704
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_56

    .line 1707
    .end local v2    # "oldLayout":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1708
    nop

    .line 1709
    monitor-exit v1

    .line 1710
    return-void

    .line 1707
    :catchall_56
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1708
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1709
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_4e .. :try_end_60} :catchall_5e

    throw v2

    .line 1689
    .end local v0    # "key":Ljava/lang/String;
    :cond_61
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPortAssociation(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I

    .line 2449
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addPortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2456
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2458
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 2460
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    .line 2461
    return-void

    .line 2459
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 2452
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 2486
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addNameAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2496
    :try_start_13
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 2498
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 2499
    return-void

    .line 2497
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 2489
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canDispatchToDisplay(II)Z
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "displayId"    # I

    .line 3242
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result v0

    return v0
.end method

.method public cancelCurrentTouch()V
    .registers 3

    .line 2746
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string v1, "cancelCurrentTouch()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2751
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->cancelCurrentTouch()V

    .line 2752
    return-void

    .line 2748
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2266
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2268
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v1, :cond_17

    iget v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v2, p1, :cond_12

    goto :goto_17

    .line 2271
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 2273
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 2274
    return-void

    .line 2269
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    .line 2271
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public closeLightSession(ILandroid/os/IBinder;)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2726
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    .line 2729
    .local v1, "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    const-string/jumbo v4, "not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2731
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v3

    new-instance v4, Landroid/hardware/lights/LightState;

    invoke-direct {v4, v2}, Landroid/hardware/lights/LightState;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2732
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 2734
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    .line 2738
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$LightSession;

    .line 2739
    .local v2, "nextSession":Lcom/android/server/input/InputManagerService$LightSession;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 2741
    .end local v1    # "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    .end local v2    # "nextSession":Lcom/android/server/input/InputManagerService$LightSession;
    :cond_51
    monitor-exit v0

    .line 2742
    return-void

    .line 2741
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public disableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 1019
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1023
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->disableInputDevice(I)V

    .line 1024
    return-void

    .line 1021
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableSensor(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 2597
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->disableSensor(II)V

    .line 2599
    monitor-exit v0

    .line 2600
    return-void

    .line 2599
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2756
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2758
    :cond_b
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerServiceStub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 2761
    :cond_16
    const-string v0, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->dump()Ljava/lang/String;

    move-result-object v0

    .line 2763
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 2764
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    :cond_26
    const-string v1, "Input Manager Service (Java) State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    const-string v1, "  "

    invoke-direct {p0, p2, v1}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2769
    invoke-direct {p0, p2, v1}, Lcom/android/server/input/InputManagerService;->dumpSpyWindowGestureMonitors(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2770
    invoke-direct {p0, p2, v1}, Lcom/android/server/input/InputManagerService;->dumpDisplayInputPropertiesValues(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2771
    return-void
.end method

.method public enableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 1009
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1013
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableInputDevice(I)V

    .line 1014
    return-void

    .line 1011
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableSensor(IIII)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .line 2589
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2590
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->enableSensor(IIII)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2592
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 3093
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3094
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_f

    .line 3096
    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_15

    .line 3099
    goto :goto_c

    .line 3097
    :catch_b
    move-exception v1

    .line 3100
    :goto_c
    const/4 v1, 0x0

    :try_start_d
    monitor-exit v0

    return v1

    .line 3102
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 3103
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 3104
    const/4 v0, 0x1

    return v0

    .line 3102
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public flushSensor(II)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 2576
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2578
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 2579
    .local v2, "listener":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    if-eqz v2, :cond_19

    .line 2580
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v3, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->flushSensor(II)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 2582
    :cond_19
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 2583
    .end local v1    # "callingPid":I
    .end local v2    # "listener":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getBatteryCapacity(I)I
    .registers 3
    .param p1, "deviceId"    # I

    .line 2389
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryCapacity(I)I

    move-result v0

    return v0
.end method

.method public getBatteryStatus(I)I
    .registers 3
    .param p1, "deviceId"    # I

    .line 2383
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1632
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, "layout":Ljava/lang/String;
    if-nez v2, :cond_24

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1635
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1641
    :cond_24
    monitor-exit v1

    return-object v2

    .line 1642
    .end local v2    # "layout":Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1673
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1675
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1676
    .local v2, "layouts":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_27

    .line 1677
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1678
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1680
    :cond_27
    monitor-exit v1

    return-object v2

    .line 1681
    .end local v2    # "layouts":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 8
    .param p1, "deviceId"    # I

    .line 990
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 992
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v5

    if-ne v5, p1, :cond_13

    .line 993
    monitor-exit v0

    return-object v4

    .line 991
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 996
    :cond_16
    monitor-exit v0

    .line 997
    const/4 v0, 0x0

    return-object v0

    .line 996
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 1032
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 1034
    .local v1, "count":I
    new-array v2, v1, [I

    .line 1035
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_18

    .line 1036
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1038
    .end local v3    # "i":I
    :cond_18
    monitor-exit v0

    return-object v2

    .line 1039
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .line 1047
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 1049
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getKeyCodeForKeyLocation(II)I
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I

    .line 708
    if-lez p2, :cond_10

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-le p2, v0, :cond_9

    goto :goto_10

    .line 711
    :cond_9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeForKeyLocation(II)I

    move-result v0

    return v0

    .line 709
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyCodeState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .line 646
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1476
    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1479
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1480
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;-><init>([Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1482
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_34

    .line 1483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_34
    aget-object v1, v0, v1

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1422
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1428
    nop

    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v6

    .line 1430
    .local v6, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 1432
    .local v7, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1433
    .local v8, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$4;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1464
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1465
    .local v0, "enabledLayoutSize":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1466
    .local v1, "potentialLayoutSize":I
    add-int v2, v0, v1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 1467
    .local v2, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1468
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v1, :cond_3f

    .line 1469
    add-int v4, v0, v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    aput-object v5, v2, v4

    .line 1468
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1471
    .end local v3    # "i":I
    :cond_3f
    return-object v2
.end method

.method public getLightState(II)Landroid/hardware/lights/LightState;
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "lightId"    # I

    .line 2697
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2698
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v1

    .line 2699
    .local v1, "color":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightPlayerId(II)I

    move-result v2

    .line 2701
    .local v2, "playerId":I
    new-instance v3, Landroid/hardware/lights/LightState;

    invoke-direct {v3, v1, v2}, Landroid/hardware/lights/LightState;-><init>(II)V

    monitor-exit v0

    return-object v3

    .line 2702
    .end local v1    # "color":I
    .end local v2    # "playerId":I
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getLights(I)Ljava/util/List;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 2637
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanCodeState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .line 659
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 3
    .param p1, "deviceId"    # I

    .line 2519
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchState(III)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .line 672
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 1251
    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1253
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1254
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1255
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getVibratorIds(I)[I
    .registers 3
    .param p1, "deviceId"    # I

    .line 2213
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getVibratorIds(I)[I

    move-result-object v0

    return-object v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .line 689
    const-string/jumbo v0, "keyCodes must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 690
    const-string/jumbo v0, "keyExists must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_17

    .line 695
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->hasKeys(II[I[Z)Z

    move-result v0

    return v0

    .line 692
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must be at least as large as keyCodes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 902
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .registers 26
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 907
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v2, "injectInputEvent()"

    const/4 v12, 0x1

    invoke-direct {v1, v0, v2, v12}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 911
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v2

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 911
    invoke-interface {v2, v0, v3}, Lcom/android/server/input/InputManagerServiceStub;->jumpPermissionCheck(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2f

    .line 914
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Injecting input events requires the caller (or the source of the instrumentation, if any) to have the INJECT_EVENTS permission."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_2f
    :goto_2f
    const-string v2, "event must not be null"

    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 921
    if-eqz v10, :cond_45

    const/4 v2, 0x2

    if-eq v10, v2, :cond_45

    if-ne v10, v12, :cond_3c

    goto :goto_45

    .line 924
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mode is invalid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_45
    :goto_45
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 928
    .local v13, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 929
    .local v14, "ident":J
    const/4 v8, -0x1

    const/16 v16, 0x0

    if-eq v11, v8, :cond_54

    move v2, v12

    goto :goto_56

    :cond_54
    move/from16 v2, v16

    :goto_56
    move/from16 v17, v2

    .line 932
    .local v17, "injectIntoUid":Z
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v9, v13}, Lcom/android/server/input/InputManagerServiceStub;->beforeInjectEvent(Landroid/view/InputEvent;I)V

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectInputEvent from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x4

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 936
    :try_start_78
    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_136

    const/16 v18, 0x7530

    const/high16 v19, 0x8000000

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, p3

    move-wide/from16 v20, v6

    move/from16 v6, p2

    move/from16 v7, v18

    move v12, v8

    move/from16 v8, v19

    :try_start_8d
    invoke-interface/range {v2 .. v8}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIII)I

    move-result v2
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_134

    .line 940
    .local v2, "result":I
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 943
    nop

    .line 944
    const-string v3, "Input event injection from pid "

    const-string v4, "InputManager"

    packed-switch v2, :pswitch_data_140

    .line 972
    :pswitch_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v16

    .line 968
    :pswitch_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timed out."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return v16

    .line 948
    :pswitch_d5
    if-eqz v17, :cond_12a

    .line 957
    const-string/jumbo v3, "injectInputEvent-target-mismatch-fallback"

    invoke-direct {v1, v0, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Targeted input event was not directed at a window owned by uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Falling back to injecting into all windows."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {v1, v9, v10, v12}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0

    .line 963
    :cond_101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Targeted input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not directed at a window owned by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_12a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Injection should not result in TARGET_MISMATCH when it is not targeted into to a specific uid."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :pswitch_132
    const/4 v0, 0x1

    return v0

    .line 940
    .end local v2    # "result":I
    :catchall_134
    move-exception v0

    goto :goto_139

    :catchall_136
    move-exception v0

    move-wide/from16 v20, v6

    :goto_139
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 943
    throw v0

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_132
        :pswitch_d5
        :pswitch_9f
        :pswitch_ba
    .end packed-switch
.end method

.method public isInTabletMode()I
    .registers 4

    .line 1285
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1289
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 1287
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .line 1003
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->isInputDeviceEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isMicMuted()I
    .registers 4

    .line 1294
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public isVibrating(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .line 2219
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->isVibrating(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createSpyWindowGestureMonitor$0$com-android-server-input-InputManagerService(Landroid/view/InputChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 755
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public monitor()V
    .registers 3

    .line 2876
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_26

    .line 2877
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_23

    .line 2878
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_20

    .line 2879
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v1

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1d

    .line 2880
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1a

    .line 2881
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->monitor()V

    .line 2882
    return-void

    .line 2880
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 2879
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 2878
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 2877
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    .line 2876
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 15
    .param p1, "monitorToken"    # Landroid/os/IBinder;
    .param p2, "requestedName"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 792
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorGestureInput()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 796
    const-string/jumbo v0, "name must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v0, "token must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 799
    if-ltz p3, :cond_5a

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Gesture Monitor] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 804
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 806
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 808
    .local v9, "ident":J
    nop

    .line 809
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p3

    move v5, v7

    move v6, v8

    :try_start_3f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;III)Landroid/view/InputChannel;

    move-result-object v1

    .line 810
    .local v1, "inputChannel":Landroid/view/InputChannel;
    new-instance v2, Landroid/view/InputMonitor;

    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    invoke-direct {v2, v1, v3}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_55

    .line 812
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    return-object v2

    .line 812
    .end local v1    # "inputChannel":Landroid/view/InputChannel;
    :catchall_55
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    throw v1

    .line 800
    .end local v0    # "name":Ljava/lang/String;
    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .end local v9    # "ident":J
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 5
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 734
    const-string/jumbo v0, "inputChannelName not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    if-ltz p2, :cond_13

    .line 740
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-interface {v0, p2, p1, v1}, Lcom/android/server/input/NativeInputManagerService;->createInputMonitor(ILjava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0

    .line 737
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyIgnoredInputDevicesChanged()V
    .registers 3

    .line 2915
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mOriginInputDevices:[Landroid/view/InputDevice;

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->notifyInputDevicesChanged([Landroid/view/InputDevice;)V

    .line 2916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->notifyConfigurationChanged(J)V

    .line 2917
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1796
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 1797
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 1798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    .line 1801
    :cond_11
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 1803
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->displayRemoved(I)V

    .line 1804
    return-void
.end method

.method onPointerDisplayIdChanged(IFF)V
    .registers 7
    .param p1, "pointerDisplayId"    # I
    .param p2, "xPosition"    # F
    .param p3, "yPosition"    # F

    .line 3394
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;-><init>(IFF)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3396
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3397
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3934
    new-instance v0, Lcom/android/server/input/InputShellCommand;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/input/InputShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3935
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 2277
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2278
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 2281
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 2282
    return-void

    .line 2279
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2707
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2709
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

    .line 2710
    new-instance v1, Lcom/android/server/input/InputManagerService$LightSession;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LightSession;-><init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2c

    .line 2712
    .local v1, "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    :try_start_1c
    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2c

    .line 2716
    goto :goto_24

    .line 2713
    :catch_20
    move-exception v2

    .line 2715
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_21
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2717
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_24
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    nop

    .end local v1    # "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    monitor-exit v0

    .line 2722
    return-void

    .line 2721
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .line 1054
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1056
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1058
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_31

    .line 1063
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_39

    .line 1066
    .local v2, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_1a
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1067
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_2a
    .catchall {:try_start_1a .. :try_end_22} :catchall_39

    .line 1071
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1073
    :try_start_23
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1074
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    monitor-exit v0

    .line 1075
    return-void

    .line 1068
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :catch_2a
    move-exception v3

    .line 1070
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v4

    .line 1059
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :cond_31
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v2

    .line 1074
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 473
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1d

    .line 480
    const/4 v1, -0x1

    const/16 v2, -0x100

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-nez v1, :cond_17

    const/4 v3, 0x1

    :cond_17
    move v1, v3

    .line 482
    .local v1, "lidOpen":Z
    const-wide/16 v2, 0x0

    invoke-interface {p1, v2, v3, v1}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    .line 484
    .end local v1    # "lidOpen":Z
    :cond_1d
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 2528
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2530
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2531
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2532
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    .line 2533
    const-string v2, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The calling process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has already registered an InputSensorEventListener."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    monitor-exit v0

    return v3

    .line 2538
    :cond_36
    new-instance v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_52

    .line 2541
    .local v2, "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    :try_start_3b
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2542
    .local v4, "binder":Landroid/os/IBinder;
    invoke-interface {v4, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_4b
    .catchall {:try_start_3b .. :try_end_42} :catchall_52

    .line 2546
    .end local v4    # "binder":Landroid/os/IBinder;
    nop

    .line 2548
    :try_start_43
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2549
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    monitor-exit v0

    .line 2550
    const/4 v0, 0x1

    return v0

    .line 2543
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    :catch_4b
    move-exception v3

    .line 2545
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputSensorEventListener;
    throw v4

    .line 2549
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputSensorEventListener;
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .line 1299
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1303
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1305
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1306
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1307
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 1311
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_43

    .line 1314
    .local v2, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_24
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1315
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_34
    .catchall {:try_start_24 .. :try_end_2c} :catchall_43

    .line 1318
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1319
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1320
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    monitor-exit v0

    .line 1321
    return-void

    .line 1316
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :catch_34
    move-exception v3

    .line 1317
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v4

    .line 1308
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :cond_3b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v2

    .line 1320
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    throw v1

    .line 1301
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 10
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 2336
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2339
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2340
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2341
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2342
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    .line 2344
    .end local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    :cond_1c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 2347
    .restart local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    :goto_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_5b

    .line 2349
    .local v2, "token":J
    :try_start_28
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2350
    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not register vibrator state listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_55

    .line 2351
    const/4 v4, 0x0

    .line 2357
    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_5b

    .line 2351
    return v4

    .line 2354
    :cond_4c
    :try_start_4c
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    .line 2355
    const/4 v4, 0x1

    .line 2357
    :try_start_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2355
    return v4

    .line 2357
    :catchall_55
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "listener":Landroid/os/IVibratorStateListener;
    throw v4

    .line 2359
    .end local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    .end local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public removeInputChannel(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "connectionToken"    # Landroid/os/IBinder;

    .line 830
    const-string v0, "connectionToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 832
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1715
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1719
    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1722
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1723
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1725
    :try_start_18
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1726
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_35

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 1727
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1729
    :cond_35
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1730
    .local v3, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 1732
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1735
    :cond_50
    if-eqz v3, :cond_64

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1736
    invoke-virtual {v4, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1735
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 1737
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_64
    .catchall {:try_start_18 .. :try_end_64} :catchall_6c

    .line 1740
    .end local v2    # "oldLayout":Ljava/lang/String;
    .end local v3    # "removed":Z
    :cond_64
    :try_start_64
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1741
    nop

    .line 1742
    monitor-exit v1

    .line 1743
    return-void

    .line 1740
    :catchall_6c
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1741
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1742
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_74
    move-exception v2

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_64 .. :try_end_76} :catchall_74

    throw v2

    .line 1717
    .end local v0    # "key":Ljava/lang/String;
    :cond_77
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePortAssociation(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 2470
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "clearPortAssociations()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2477
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2479
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1c

    .line 2481
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    .line 2482
    return-void

    .line 2480
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 2473
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeUniqueIdAssociation(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 2503
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2512
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 2514
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    .line 2515
    return-void

    .line 2513
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1

    .line 2506
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 1808
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1810
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 1811
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1648
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1653
    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1656
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1659
    :try_start_18
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1663
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2e

    .line 1666
    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1667
    nop

    .line 1668
    monitor-exit v1

    .line 1669
    return-void

    .line 1666
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1667
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1668
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_36

    throw v2

    .line 1650
    .end local v0    # "key":Ljava/lang/String;
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 6
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 2425
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2427
    const/4 v1, -0x1

    :try_start_7
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 2428
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    .line 2430
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-nez v2, :cond_13

    monitor-exit v0

    return-void

    .line 2432
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    invoke-interface {v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 2433
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2d

    .line 2435
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2436
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/mirror/MirrorServiceStub;->notifyPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 2439
    :cond_2c
    return-void

    .line 2433
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "application"    # Landroid/view/InputApplicationHandle;

    .line 1787
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 1788
    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1791
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setFocusedDisplay(I)V

    .line 1792
    return-void
.end method

.method public setInTouchMode(ZIIZ)Z
    .registers 6
    .param p1, "inTouchMode"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "hasPermission"    # Z

    .line 897
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->setInTouchMode(ZIIZ)Z

    move-result v0

    return v0
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .line 1814
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputDispatchMode(ZZ)V

    .line 1815
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 6
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .line 846
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 848
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_9

    .line 849
    monitor-exit v0

    return-void

    .line 852
    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 853
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 854
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 855
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_36

    .line 857
    :try_start_15
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_36

    .line 860
    goto :goto_1a

    .line 858
    :catch_19
    move-exception v3

    .line 863
    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2a

    .line 864
    :try_start_1c
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 865
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost-IA;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_36

    .line 867
    :try_start_25
    invoke-interface {p1, v3}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_36

    .line 870
    goto :goto_2a

    .line 868
    :catch_29
    move-exception v2

    .line 873
    :cond_2a
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz p1, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    invoke-interface {v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setInputFilterEnabled(Z)V

    .line 874
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "lightIds"    # [I
    .param p3, "lightStates"    # [Landroid/hardware/lights/LightState;
    .param p4, "token"    # Landroid/os/IBinder;

    .line 2680
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    const-string/jumbo v1, "lights and light states are not same length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2682
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2683
    :try_start_12
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    .line 2684
    .local v1, "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    if-eqz v1, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    const-string/jumbo v5, "not registered"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2685
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmDeviceId(Lcom/android/server/input/InputManagerService$LightSession;)I

    move-result v4

    if-ne v4, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    const-string v3, "Incorrect device ID"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2686
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightIds(Lcom/android/server/input/InputManagerService$LightSession;[I)V

    .line 2687
    invoke-virtual {p3}, [Landroid/hardware/lights/LightState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/lights/LightState;

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightStates(Lcom/android/server/input/InputManagerService$LightSession;[Landroid/hardware/lights/LightState;)V

    .line 2691
    .end local v1    # "lightSession":Lcom/android/server/input/InputManagerService$LightSession;
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_49

    .line 2692
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 2693
    return-void

    .line 2691
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public setMagicPointerIconType(I)V
    .registers 3
    .param p1, "iconType"    # I

    .line 2418
    invoke-static {}, Lcom/android/server/wm/MiuiMagicPointerServiceStub;->get()Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiMagicPointerServiceStub;->setMagicPointerIconType(I)V

    .line 2419
    return-void
.end method

.method public setPointerIconType(I)V
    .registers 6
    .param p1, "iconType"    # I

    .line 2395
    const/4 v0, -0x1

    if-eq p1, v0, :cond_30

    .line 2398
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2399
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    .line 2400
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 2402
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-nez v2, :cond_13

    monitor-exit v0

    return-void

    .line 2404
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    invoke-interface {v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    .line 2405
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2d

    .line 2408
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2409
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/mirror/MirrorServiceStub;->notifyPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 2412
    :cond_2c
    return-void

    .line 2405
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1

    .line 2396
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use setCustomPointerIcon to set custom pointers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemUiLightsOut(Z)V
    .registers 3
    .param p1, "lightsOut"    # Z

    .line 1818
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOut(Z)V

    .line 1819
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 1261
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1265
    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1266
    const-string v0, "calibration must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1267
    if-ltz p2, :cond_3e

    const/4 v0, 0x3

    if-gt p2, v0, :cond_3e

    .line 1271
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1273
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1275
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1}, Lcom/android/server/input/NativeInputManagerService;->reloadCalibration()V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_33

    .line 1278
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1279
    nop

    .line 1280
    monitor-exit v0

    .line 1281
    return-void

    .line 1278
    :catchall_33
    move-exception v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1279
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local p2    # "surfaceRotation":I
    .end local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    throw v1

    .line 1280
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .restart local p2    # "surfaceRotation":I
    .restart local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3b

    throw v1

    .line 1268
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 3
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 461
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz v0, :cond_7

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 464
    :cond_7
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 466
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 469
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 470
    return-void
.end method

.method public start()V
    .registers 6

    .line 494
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->start()V

    .line 498
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 500
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/ScoutStub;->addScoutMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 503
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 504
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 505
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 506
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V

    .line 507
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerMaximumObscuringOpacityForTouchSettingObserver()V

    .line 508
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerBlockUntrustedTouchesModeSettingObserver()V

    .line 511
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerServiceStub;->registerStub()V

    .line 512
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->registerTouchWakeupModeSettingObserver()V

    .line 513
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->registerSubScreenTouchWakeupModeSettingObserver()V

    .line 515
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 530
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 531
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 532
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 533
    const-string/jumbo v0, "just booted"

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateMaximumObscuringOpacityForTouchFromSettings()V

    .line 535
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateBlockUntrustedTouchesModeFromSettings()V

    .line 537
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->updateTouchWakeupModeFromSettings()V

    .line 538
    invoke-static {}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/TouchWakeUpModeFeatureStub;->updateSubScreenTouchWakeupModeFromSettings()V

    .line 540
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1746
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1747
    return-void
.end method

.method public systemRunning()V
    .registers 12

    .line 547
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 550
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 555
    const/16 v2, -0x100

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v5

    .line 556
    .local v5, "switchState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_39

    .line 557
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 558
    .local v7, "callback":Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    const-wide/16 v8, 0x0

    if-nez v5, :cond_32

    move v10, v1

    goto :goto_33

    :cond_32
    move v10, v3

    :goto_33
    invoke-interface {v7, v8, v9, v10}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    .line 556
    .end local v7    # "callback":Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 560
    .end local v5    # "switchState":I
    .end local v6    # "i":I
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_ab

    .line 563
    const/16 v0, 0xe

    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 565
    .local v0, "micMuteState":I
    if-eq v0, v4, :cond_4a

    .line 566
    if-eqz v0, :cond_46

    move v5, v1

    goto :goto_47

    :cond_46
    move v5, v3

    :goto_47
    invoke-direct {p0, v1, v5}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 569
    :cond_4a
    const/16 v5, 0x9

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    .line 571
    .local v2, "cameraMuteState":I
    if-eq v2, v4, :cond_5a

    .line 572
    const/4 v4, 0x2

    if-eqz v2, :cond_56

    goto :goto_57

    :cond_56
    move v1, v3

    :goto_57
    invoke-direct {p0, v4, v1}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 575
    :cond_5a
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 587
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 588
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 595
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 596
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 598
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v3, :cond_aa

    .line 599
    invoke-interface {v3}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 601
    :cond_aa
    return-void

    .line 560
    .end local v0    # "micMuteState":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "cameraMuteState":I
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public transferTouch(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "destChannelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 723
    const-string v0, "destChannelToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;

    .line 1856
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 1857
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 1858
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/input/NativeInputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;Z)Z
    .registers 7
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;
    .param p3, "isDragDrop"    # Z

    .line 1837
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/android/server/input/NativeInputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 1864
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1869
    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 1873
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1874
    return-void

    .line 1870
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1866
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 488
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 490
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 2560
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2562
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2563
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2564
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2565
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 2566
    .local v2, "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->getListener()Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_31

    .line 2569
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3a

    .line 2567
    :cond_31
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener is not registered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputSensorEventListener;
    throw v3

    .line 2571
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputSensorEventListener;
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 2572
    return-void

    .line 2571
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 2364
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2365
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4a

    .line 2367
    .local v1, "token":J
    :try_start_7
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2368
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrator state listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_44

    .line 2369
    const/4 v3, 0x0

    .line 2375
    :try_start_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_4a

    .line 2369
    return v3

    .line 2371
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 2372
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 2373
    .local v3, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_44

    .line 2375
    :try_start_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2373
    return v4

    .line 2375
    .end local v3    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/os/IVibratorStateListener;>;"
    :catchall_44
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 2377
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 979
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2201
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 2202
    .local v0, "info":Lcom/android/server/input/InputManagerService$VibrationInfo;
    invoke-direct {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object v1

    .line 2203
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    monitor-enter v1

    .line 2204
    const/4 v2, 0x1

    :try_start_b
    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 2205
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v6

    .line 2206
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v7

    iget v8, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 2205
    move v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .line 2207
    monitor-exit v1

    .line 2208
    return-void

    .line 2207
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v2
.end method

.method public vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 20
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 2225
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v9, p1

    move-object/from16 v10, p3

    invoke-direct {v1, v9, v10}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object v11

    .line 2226
    .local v11, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    monitor-enter v11

    .line 2227
    :try_start_d
    instance-of v0, v2, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_1e

    instance-of v0, v2, Landroid/os/CombinedVibration$Stereo;

    if-nez v0, :cond_1e

    .line 2229
    const-string v0, "InputManager"

    const-string v3, "Only Mono and Stereo effects are supported"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    monitor-exit v11

    return-void

    .line 2233
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 2234
    instance-of v0, v2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_48

    .line 2235
    move-object v0, v2

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    .line 2236
    .local v0, "mono":Landroid/os/CombinedVibration$Mono;
    new-instance v3, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    move-object v12, v3

    .line 2237
    .local v12, "info":Lcom/android/server/input/InputManagerService$VibrationInfo;
    iget-object v3, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v12}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v6

    .line 2238
    invoke-virtual {v12}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v7

    iget v8, v11, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 2237
    move/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .end local v0    # "mono":Landroid/os/CombinedVibration$Mono;
    .end local v12    # "info":Lcom/android/server/input/InputManagerService$VibrationInfo;
    goto :goto_a3

    .line 2239
    :cond_48
    instance-of v0, v2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_a3

    .line 2240
    move-object v0, v2

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 2241
    .local v0, "stereo":Landroid/os/CombinedVibration$Stereo;
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    move-object v12, v3

    .line 2242
    .local v12, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    const/4 v3, 0x0

    new-array v3, v3, [J

    .line 2243
    .local v3, "pattern":[J
    const/high16 v4, -0x80000000

    .line 2244
    .local v4, "repeat":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v13, v5

    .line 2245
    .local v13, "amplitudes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v5, 0x0

    move-object v14, v3

    move v15, v4

    .end local v3    # "pattern":[J
    .end local v4    # "repeat":I
    .local v5, "i":I
    .local v14, "pattern":[J
    .local v15, "repeat":I
    :goto_66
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_96

    .line 2246
    new-instance v3, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-direct {v3, v4}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 2248
    .local v3, "info":Lcom/android/server/input/InputManagerService$VibrationInfo;
    array-length v4, v14

    if-nez v4, :cond_7f

    .line 2249
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v4

    move-object v14, v4

    .line 2251
    :cond_7f
    const/high16 v4, -0x80000000

    if-ne v15, v4, :cond_88

    .line 2252
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v4

    move v15, v4

    .line 2254
    :cond_88
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2245
    .end local v3    # "info":Lcom/android/server/input/InputManagerService$VibrationInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 2256
    .end local v5    # "i":I
    :cond_96
    iget-object v3, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v8, v11, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move/from16 v4, p1

    move-object v5, v14

    move-object v6, v13

    move v7, v15

    invoke-interface/range {v3 .. v8}, Lcom/android/server/input/NativeInputManagerService;->vibrateCombined(I[JLandroid/util/SparseArray;II)V

    goto :goto_a4

    .line 2239
    .end local v0    # "stereo":Landroid/os/CombinedVibration$Stereo;
    .end local v12    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v13    # "amplitudes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v14    # "pattern":[J
    .end local v15    # "repeat":I
    :cond_a3
    :goto_a3
    nop

    .line 2259
    :goto_a4
    monitor-exit v11

    .line 2260
    return-void

    .line 2259
    :catchall_a6
    move-exception v0

    monitor-exit v11
    :try_end_a8
    .catchall {:try_start_d .. :try_end_a8} :catchall_a6

    throw v0
.end method
