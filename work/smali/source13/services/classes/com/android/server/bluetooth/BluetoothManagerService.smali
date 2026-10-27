.class public Lcom/android/server/bluetooth/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_BLUETOOTH_STATE:Ljava/lang/String; = "android.xiaomi.bluetooth.ACTION_CHECK_BLUETOOTH_STATE"

.field private static final ACTION_PROVISION_COMPLETE:Ljava/lang/String; = "android.provision.action.PROVISION_COMPLETE"

.field private static final ACTION_UPDATE_SUCCESSED:Ljava/lang/String; = "com.android.updater.action.UPDATE_SUCCESSED"

.field private static final ACTIVE_LOG_MAX_SIZE:I = 0x14

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final ALWAYS_SHOW_ICON_DEFAULT_VALUE:I = 0x0

.field private static final BLUETOOTH_FIRST_OTA_DONE:Ljava/lang/String; = "bluetooth_first_ota_done"

.field private static final BLUETOOTH_OFF:I = 0x0

.field static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final CRASH_LOG_MAX_SIZE:I = 0x64

.field private static final DBG:Z = true

.field private static final DEFAULT_REBIND_COUNT:I = 0x3

.field private static final DELAY_BEFORE_RESTART_DUE_TO_INIT_FLAGS_CHANGED_MS:I = 0x12c

.field private static final DELAY_FOR_RETRY_INIT_FLAG_CHECK_MS:I = 0x15180

.field private static final ENABLE_DISABLE_DELAY_MS:I = 0x12c

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final FIRST_OTA_DONE:I = 0x1

.field private static final FIRST_OTA_UNDO:I = 0x0

.field private static final FLAGS_SYSTEM_APP:I = 0x81

.field private static final GLOBAL_HALFCLOSE_OFF:I = 0x0

.field private static final GLOBAL_HALFCLOSE_ON:I = 0x1

.field private static final GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final HALFCLOSE_CLOUD_CALI_DONE:I = 0x1

.field private static final HALFCLOSE_CLOUD_CALI_UNDO:I = 0x0

.field private static final HALFCLOSE_CLOUD_OFF:I = 0x0

.field private static final HALFCLOSE_CLOUD_ON:I = 0x1

.field private static final HALFCLOSE_DELAY_MS:I = 0x5dc

.field private static final HALFCLOSE_ENABLE_TIMEOUT_MS:I = 0x1f40

.field private static final HANDLE_BOOT_DELAY_MS:I = 0x3e8

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_HALFCLOSE_DELAY_COUNT:I = 0x6

.field private static final MAX_WAIT_FOR_ENABLE_DISABLE_RETRIES:I = 0xa

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DELAY_ENABLE_BT:I = 0x321

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_DISABLE_HALFCLOSE:I = 0x2bd

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_ENABLE_BT_FROM_HALFON:I = 0x320

.field private static final MESSAGE_ENABLE_HALFCLOSE:I = 0x2bc

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_HALFCLOSE_ENABLE_TIMEOUT:I = 0x2bf

.field private static final MESSAGE_HANDLE_DISABLE_DELAYED:I = 0x4

.field private static final MESSAGE_HANDLE_ENABLE_DELAYED:I = 0x3

.field private static final MESSAGE_HANDLE_HALFCLOSE_RECEIVER:I = 0x2be

.field private static final MESSAGE_INFORM_ADAPTER_SERVICE_UP:I = 0x16

.field private static final MESSAGE_INIT_FLAGS_CHANGED:I = 0x258

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_RESTORE_USER_SETTING:I = 0x1f4

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field public static final PRIVATE_ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.PRIVATE_STATE_CHANGED"

.field private static final RESTORE_SETTING_TO_OFF:I = 0x0

.field private static final RESTORE_SETTING_TO_ON:I = 0x1

.field static final RESTRICT_ENABLE_DISABLE:J = 0xd05f169L

.field private static final RESTRICT_OFF:I = 0x0

.field private static final RESTRICT_ON:I = 0x1

.field private static final RESTRICT_STATUS_BEFORE_AIRPLANE_REBOOT:Ljava/lang/String; = "bluetooth_restrict_status_before_airplane_reboot"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0x190

.field private static final SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

.field private static final USER_HANDLE_NULL:Landroid/os/UserHandle;

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static mIsEnableBle:Z

.field private static mRestrictFlag:Z


# instance fields
.field private final mActiveLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/String;

.field private mAirModeStartTime:J

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsManager:Landroid/os/BatteryStatsManager;

.field private mBinding:Z

.field private mBindingUserID:I

.field private mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothAirplaneModeListener:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothDeviceConfigListener:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothHandlerThread:Landroid/os/HandlerThread;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

.field private mBluetoothModeChangeHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCrashTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashes:I

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private mHalfCloseDelayCount:I

.field private mHalfCloseReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

.field private mIsHearingAidProfileSupported:Z

.field private mLastEnabledTime:J

.field private mName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutdownInProgress:Z

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mTryBindOnBindTimeout:Z

.field private mUnbinding:Z

.field private final mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBindingUserID(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBindingUserID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothManagerServiceInjector(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothModeChangeHelper(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothModeChangeHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothModeChangeHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHalfCloseDelayCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingIntent(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileServices(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuietEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownInProgress(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mShutdownInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateChangeCallbacks(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mTryBindOnBindTimeout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnbinding(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBindingUserID(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBindingUserID:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothBinder(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothGatt(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmErrorRecoveryRetryCounter(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHalfCloseDelayCount(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHalfCloseDelayCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuietEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuietEnableExternal(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutdownInProgress(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mShutdownInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTryBindOnBindTimeout(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mTryBindOnBindTimeout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnbinding(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddActiveLog(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCrashLog(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->addCrashLog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbluetoothStateChangeHandler(Lcom/android/server/bluetooth/BluetoothManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBleApps(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcontinueFromBleOnState(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->continueFromBleOnState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableBleScanMode(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBluetoothRestrictState(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceRestartMs(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getServiceRestartMs()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleDisable(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnable(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBluetoothPersistedStateOn(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBluetoothPersistedStateOnBluetooth(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNameAndAddressSet(Lcom/android/server/bluetooth/BluetoothManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportBluetoothRestrict(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpersistBluetoothSetting(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpropagateForegroundUserId(Lcom/android/server/bluetooth/BluetoothManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->propagateForegroundUserId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecoverBluetoothServiceFromError(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBluetoothServiceDownCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBluetoothServiceUpCallback(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBrEdrDownCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBrEdrDownCallback(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDisableMsg(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEnableMsg(Lcom/android/server/bluetooth/BluetoothManagerService;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRestrictStateChanged(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendRestrictStateChanged(Landroid/content/Context;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAlarmRepeatEveryDay(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->startAlarmRepeatEveryDay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreNameAndAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronousDisable(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousDisable(Landroid/content/AttributionSource;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msynchronousEnable(Lcom/android/server/bluetooth/BluetoothManagerService;ZLandroid/content/AttributionSource;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousEnable(ZLandroid/content/AttributionSource;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msynchronousGetAddress(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msynchronousGetName(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msynchronousGetState(Lcom/android/server/bluetooth/BluetoothManagerService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msynchronousOnBrEdrDown(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronousOnLeServiceUp(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnLeServiceUp(Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronousRegisterCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousRegisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msynchronousUnregisterCallback(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousUnregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindAllBluetoothProfileServices(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBleAppCount(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mwaitForState(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/util/Set;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetUSER_HANDLE_CURRENT_OR_SELF()Landroid/os/UserHandle;
    .registers 1

    sget-object v0, Lcom/android/server/bluetooth/BluetoothManagerService;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmRestrictFlag(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mRestrictFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetEnableDisableReasonString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtimeToLog(J)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/bluetooth/BluetoothManagerService;->mRestrictFlag:Z

    .line 159
    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    sput-object v1, Lcom/android/server/bluetooth/BluetoothManagerService;->SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

    .line 250
    sput-boolean v0, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsEnableBle:Z

    .line 260
    const/4 v0, -0x3

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/android/server/bluetooth/BluetoothManagerService;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 262
    const/16 v0, -0x2710

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/android/server/bluetooth/BluetoothManagerService;->USER_HANDLE_NULL:Landroid/os/UserHandle;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;

    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 251
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mAirModeStartTime:J

    .line 252
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mHalfCloseDelayCount:I

    .line 276
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 280
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mTryBindOnBindTimeout:Z

    .line 289
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    .line 291
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mShutdownInProgress:Z

    .line 326
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    .line 327
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    .line 337
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 355
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 357
    new-instance v3, Lcom/android/server/bluetooth/BluetoothManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$1;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 556
    new-instance v3, Lcom/android/server/bluetooth/BluetoothManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$2;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    iput-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 688
    new-instance v4, Lcom/android/server/bluetooth/BluetoothManagerService$3;

    invoke-direct {v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$3;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    iput-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mHalfCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 2517
    new-instance v4, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection-IA;)V

    iput-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    .line 760
    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "BluetoothManagerService"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothHandlerThread:Landroid/os/HandlerThread;

    .line 761
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 763
    new-instance v7, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    .line 765
    iput-object v2, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 767
    iput v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    .line 768
    iput-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 769
    iput-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 770
    iput-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 771
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    .line 772
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mTryBindOnBindTimeout:Z

    .line 773
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    .line 774
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 775
    const/16 v7, 0xa

    iput v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 776
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 777
    iput-boolean v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 778
    iput-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 779
    iput-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 780
    iput v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 782
    invoke-virtual {v7}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    iput v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mUserId:I

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 786
    new-instance v8, Landroid/os/RemoteCallbackList;

    invoke-direct {v8}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 787
    new-instance v8, Landroid/os/RemoteCallbackList;

    invoke-direct {v8}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 789
    new-instance v8, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    invoke-direct {v8}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;-><init>()V

    iput-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    .line 790
    const-class v8, Landroid/os/BatteryStatsManager;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStatsManager;

    iput-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    .line 792
    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mUserManager:Landroid/os/UserManager;

    .line 794
    nop

    .line 795
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileAshaCentralEnabled()Ljava/util/Optional;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 797
    const-string/jumbo v8, "persist.sys.fflag.override.settings_bluetooth_hearing_aid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "ro.product.mod_device"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_global"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 800
    .local v9, "isInternationalBuild":Z
    const-string v10, "bluetooth_halfclose_global_enable"

    if-eqz v9, :cond_f9

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v10, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 805
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "PrivateActionExist"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 807
    const-string/jumbo v11, "ro.miui.ui.version.code"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 808
    .local v11, "MIUIversionCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v10, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 810
    .local v10, "globalSupport":I
    const/16 v12, 0xe

    if-lt v11, v12, :cond_142

    .line 811
    if-eqz v9, :cond_11c

    if-eqz v9, :cond_142

    if-ne v10, v13, :cond_142

    .line 812
    :cond_11c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v14, "halfclose_cloud_cali"

    invoke-static {v12, v14, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 814
    .local v12, "caliValue":I
    if-nez v12, :cond_142

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v5, "enable_bluetooth_restricte"

    invoke-static {v15, v5, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v15, "bluetooth_always_show_icon_value"

    invoke-static {v5, v15, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v14, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 824
    .end local v12    # "caliValue":I
    :cond_142
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16b

    .line 825
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 826
    .local v5, "isHearingAidEnabled":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set feature flag HEARING_AID_SETTINGS to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz v5, :cond_16b

    iget-boolean v12, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    if-nez v12, :cond_16b

    .line 829
    iput-boolean v13, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 833
    .end local v5    # "isHearingAidEnabled":Z
    :cond_16b
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 834
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v12, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v12, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v12, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v12, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v12, "android.xiaomi.bluetooth.ACTION_CHECK_BLUETOOTH_STATE"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v12, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    const/16 v12, 0x3e8

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 847
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    .local v3, "filterUser":Landroid/content/IntentFilter;
    const-string v14, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v14, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v3, v12}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 853
    new-instance v12, Lcom/android/server/bluetooth/BluetoothManagerService$4;

    invoke-direct {v12, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$4;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v3, v14, v14}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 873
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 874
    .local v12, "halfCloseFilter":Landroid/content/IntentFilter;
    const-string v14, "android.provision.action.PROVISION_COMPLETE"

    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v14, "com.android.updater.action.UPDATE_SUCCESSED"

    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    iget-object v14, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mHalfCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v14, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v14

    if-eqz v14, :cond_1e9

    .line 882
    const-string v14, "Startup: Bluetooth persisted state is ON."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-boolean v13, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 887
    :cond_1e9
    nop

    .line 888
    const-string v13, "airplane_mode_radios"

    invoke-static {v7, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 889
    .local v7, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v7, :cond_1fa

    const-string v13, "bluetooth"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_205

    .line 891
    :cond_1fa
    new-instance v13, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    .line 892
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v13, v1, v4, v2}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v13, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothAirplaneModeListener:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    .line 895
    :cond_205
    const/4 v4, -0x1

    .line 898
    .local v4, "systemUiUid":I
    :try_start_206
    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v13, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v13, "com.android.systemui"

    const-wide/32 v14, 0x100000

    .line 901
    invoke-static {v14, v15}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v14

    .line 900
    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v0

    move v4, v0

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detected SystemUiUid: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_238
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_206 .. :try_end_238} :catch_239

    .line 905
    goto :goto_23f

    .line 903
    :catch_239
    move-exception v0

    .line 904
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "Unable to resolve SystemUI\'s UID."

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_23f
    iput v4, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mSystemUiUid:I

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->disableMiuiBluetoothState()V

    .line 909
    return-void
.end method

.method private addActiveLog(ILjava/lang/String;Z)V
    .registers 14
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 3819
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3820
    :try_start_3
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    .line 3821
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 3823
    :cond_12
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;

    .line 3824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;ILjava/lang/String;ZJ)V

    .line 3823
    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3825
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3c

    .line 3827
    if-eqz p3, :cond_32

    .line 3828
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BatteryStatsManager;->reportBluetoothOn(IILjava/lang/String;)V

    goto :goto_3b

    .line 3830
    :cond_32
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BatteryStatsManager;->reportBluetoothOff(IILjava/lang/String;)V

    .line 3832
    :goto_3b
    return-void

    .line 3825
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private addCrashLog()V
    .registers 5

    .line 3835
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3836
    :try_start_3
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_12

    .line 3837
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3839
    :cond_12
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3840
    iget v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    .line 3841
    monitor-exit v0

    .line 3842
    return-void

    .line 3841
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 13
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 3619
    const/4 v0, 0x1

    .line 3620
    .local v0, "isStandardBroadcast":Z
    if-ne p1, p2, :cond_4

    .line 3621
    return-void

    .line 3624
    :cond_4
    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v6, "BluetoothManagerService"

    if-eq p2, v4, :cond_4b

    if-ne p2, v1, :cond_13

    goto :goto_4b

    .line 3678
    :cond_13
    const/16 v1, 0xc

    if-ne p2, v1, :cond_31

    .line 3679
    if-ne p2, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v5

    :goto_1b
    move v1, v3

    .line 3680
    .local v1, "isUp":Z
    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 3681
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 3683
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3684
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleHalfCloseEvent(Landroid/content/Context;)V

    .line 3687
    .end local v1    # "isUp":Z
    :cond_2f
    goto/16 :goto_c1

    :cond_31
    const/16 v1, 0xe

    if-eq p2, v1, :cond_45

    const/16 v1, 0x10

    if-ne p2, v1, :cond_3a

    goto :goto_45

    .line 3692
    :cond_3a
    const/16 v1, 0xb

    if-eq p2, v1, :cond_40

    if-ne p2, v2, :cond_c1

    .line 3694
    :cond_40
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_c1

    .line 3689
    :cond_45
    :goto_45
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 3690
    const/4 v0, 0x0

    goto/16 :goto_c1

    .line 3625
    :cond_4b
    :goto_4b
    if-ne p1, v2, :cond_51

    if-ne p2, v4, :cond_51

    move v2, v3

    goto :goto_52

    :cond_51
    move v2, v5

    .line 3628
    .local v2, "intermediate_off":Z
    :goto_52
    if-ne p2, v1, :cond_6c

    .line 3631
    const-string v1, "Bluetooth is complete off, send Service Down"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 3634
    invoke-direct {p0, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 3635
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->unbindAndFinish()V

    .line 3636
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 3645
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleState(I)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    goto :goto_c0

    .line 3647
    :cond_6c
    if-nez v2, :cond_a8

    .line 3650
    const-string v1, "Bluetooth is in LE only mode"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3653
    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_a0

    .line 3657
    :cond_86
    const-string v1, "Binding Bluetooth GATT service"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3660
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v5, 0x41

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3, v5, v7}, Lcom/android/server/bluetooth/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_a3

    .line 3654
    .end local v1    # "i":Landroid/content/Intent;
    :cond_a0
    :goto_a0
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->continueFromBleOnState()V

    .line 3663
    :goto_a3
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 3665
    const/4 v0, 0x0

    goto :goto_c0

    .line 3667
    :cond_a8
    if-eqz v2, :cond_c0

    .line 3669
    const-string v1, "Intermediate off, back to LE only mode"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    invoke-direct {p0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 3673
    invoke-direct {p0, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 3675
    const/16 p2, 0xa

    .line 3676
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBrEdrDownCallback(Landroid/content/AttributionSource;)V

    .line 3678
    .end local v2    # "intermediate_off":Z
    :cond_c0
    :goto_c0
    nop

    .line 3697
    :cond_c1
    :goto_c1
    if-eqz v0, :cond_134

    .line 3698
    if-ne p1, v4, :cond_c7

    .line 3700
    const/16 p1, 0xa

    .line 3703
    :cond_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3704
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3705
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3703
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3708
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3709
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3710
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3711
    const/high16 v5, 0x1000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3712
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3713
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v8

    .line 3712
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v9, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3716
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.PRIVATE_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3717
    .local v6, "intentPrivate":Landroid/content/Intent;
    invoke-virtual {v6, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3718
    invoke-virtual {v6, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3719
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3720
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3721
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3722
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v4

    .line 3721
    invoke-virtual {v2, v6, v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3726
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v6    # "intentPrivate":Landroid/content/Intent;
    :cond_134
    return-void
.end method

.method private checkBluetoothPermissionWhenWirelessConsentRequired()Z
    .registers 3

    .line 1842
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 1844
    .local v0, "result":I
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireForeground"    # Z

    .line 1413
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 1415
    const-string v0, "checkBluetoothPermissions: bluetooth disallowed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return v2

    .line 1420
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1421
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1e

    move v3, v5

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 1422
    .local v3, "isCallerSystem":Z
    :goto_1f
    if-nez v3, :cond_43

    const/16 v4, 0x7d0

    if-eq v0, v4, :cond_43

    .line 1423
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1425
    if-eqz p3, :cond_3a

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1426
    const-string v4, "Not allowed for non-active and non system user"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return v2

    .line 1430
    :cond_3a
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkConnectPermissionForDataDelivery(Landroid/content/Context;Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1431
    return v2

    .line 1434
    :cond_43
    return v5
.end method

.method public static checkConnectPermissionForDataDelivery(Landroid/content/Context;Landroid/content/AttributionSource;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "message"    # Ljava/lang/String;

    .line 4188
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 14

    .line 3565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3566
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3567
    .local v1, "callingUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3568
    .local v2, "callingIdentity":J
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 3569
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v5

    .line 3570
    .local v5, "uh":Landroid/os/UserHandle;
    if-eqz v5, :cond_1e

    move-object v6, v5

    goto :goto_20

    :cond_1e
    sget-object v6, Lcom/android/server/bluetooth/BluetoothManagerService;->USER_HANDLE_NULL:Landroid/os/UserHandle;

    .line 3571
    .local v6, "parentUser":Landroid/os/UserHandle;
    :goto_20
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 3572
    .local v7, "callingAppId":I
    const/4 v8, 0x0

    .line 3574
    .local v8, "valid":Z
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 3575
    .local v9, "foregroundUser":Landroid/os/UserHandle;
    if-eq v1, v9, :cond_40

    if-eq v6, v9, :cond_40

    const/16 v10, 0x403

    if-eq v7, v10, :cond_40

    iget v10, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mSystemUiUid:I

    if-eq v7, v10, :cond_40

    const/16 v10, 0x7d0

    if-ne v7, v10, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v10, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v10, 0x1

    :goto_41
    move v8, v10

    .line 3578
    if-nez v8, :cond_7a

    .line 3579
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_25 .. :try_end_7a} :catchall_7f

    .line 3584
    .end local v9    # "foregroundUser":Landroid/os/UserHandle;
    :cond_7a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3585
    nop

    .line 3586
    return v8

    .line 3584
    :catchall_7f
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3585
    throw v9
.end method

.method private checkPackage(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1812
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_4f

    .line 1817
    if-nez p2, :cond_1f

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called with null packageName from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    return-void

    .line 1822
    :cond_1f
    :try_start_1f
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_22} :catch_24

    .line 1826
    nop

    .line 1827
    return-void

    .line 1823
    :catch_24
    move-exception v0

    .line 1824
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1813
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called before system boot up, uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System has not boot yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 4153
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 4154
    .local v0, "pm":Landroid/permission/PermissionManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4155
    return v1

    .line 4157
    :cond_c
    new-instance v2, Landroid/content/AttributionSource$Builder;

    .line 4158
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/AttributionSource$Builder;-><init>(Landroid/content/AttributionSource;)V

    .line 4159
    invoke-virtual {v2, p2}, Landroid/content/AttributionSource$Builder;->setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;

    move-result-object v2

    .line 4160
    invoke-virtual {v2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v2

    .line 4161
    .local v2, "currentAttribution":Landroid/content/AttributionSource;
    invoke-virtual {v0, p1, v2, p3}, Landroid/permission/PermissionManager;->checkPermissionForDataDeliveryFromDataSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v3

    .line 4163
    .local v3, "result":I
    if-nez v3, :cond_25

    .line 4164
    const/4 v1, 0x1

    return v1

    .line 4167
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " permission for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4169
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x2

    if-eq v3, v5, :cond_55

    .line 4172
    const-string v5, "BluetoothManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    return v1

    .line 4170
    :cond_55
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBleApps()V
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1513
    return-void
.end method

.method private continueFromBleOnState()V
    .registers 6

    .line 1530
    const-string v0, "BluetoothManagerService"

    const-string v1, "continueFromBleOnState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :try_start_7
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1534
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_24

    .line 1535
    const-string/jumbo v1, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_1a} :catch_a3
    .catchall {:try_start_7 .. :try_end_1a} :catchall_a1

    .line 1562
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1536
    return-void

    .line 1538
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v1

    .line 1539
    .local v1, "st":I
    const/16 v2, 0xf

    if-eq v1, v2, :cond_51

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceUp: state isn\'t BLE_ON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1541
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_47} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_47} :catch_a3
    .catchall {:try_start_24 .. :try_end_47} :catchall_a1

    .line 1562
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1542
    return-void

    .line 1544
    :cond_51
    :try_start_51
    iget-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-nez v2, :cond_7c

    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1545
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1546
    const-string v2, "Bluetooth was disabled while enabling BLE, disable BLE now"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 1548
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_72} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_51 .. :try_end_72} :catch_a3
    .catchall {:try_start_51 .. :try_end_72} :catchall_a1

    .line 1562
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1549
    return-void

    .line 1551
    :cond_7c
    :try_start_7c
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-nez v2, :cond_86

    iget-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v2, :cond_a0

    .line 1554
    :cond_86
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1555
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1554
    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(ZLandroid/content/AttributionSource;)V

    .line 1556
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnLeServiceUp(Landroid/content/AttributionSource;)V

    .line 1557
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_a0} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7c .. :try_end_a0} :catch_a3
    .catchall {:try_start_7c .. :try_end_a0} :catchall_a1

    .line 1562
    .end local v1    # "st":I
    :cond_a0
    goto :goto_aa

    :catchall_a1
    move-exception v0

    goto :goto_b5

    .line 1559
    :catch_a3
    move-exception v1

    .line 1560
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a4
    const-string v2, "Unable to call onServiceUp"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_a1

    .line 1562
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_aa
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1563
    nop

    .line 1564
    return-void

    .line 1562
    :goto_b5
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1563
    throw v0
.end method

.method private disableBleScanMode()V
    .registers 4

    .line 1354
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1355
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_29

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1357
    const-string v1, "Resetting the mEnable flag for clean disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-nez v1, :cond_29

    .line 1360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_29} :catch_2c
    .catchall {:try_start_2 .. :try_end_29} :catchall_2a

    .line 1366
    :cond_29
    goto :goto_34

    :catchall_2a
    move-exception v0

    goto :goto_3f

    .line 1363
    :catch_2c
    move-exception v1

    .line 1364
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string/jumbo v2, "getState()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    .line 1366
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1367
    nop

    .line 1368
    return-void

    .line 1366
    :goto_3f
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1367
    throw v0
.end method

.method private disableMiuiBluetoothState()V
    .registers 6

    .line 4327
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isCtsMode()Z

    move-result v0

    .line 4328
    .local v0, "cts":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diasbleMiuiBluetoothState isCtsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :try_start_1c
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.bluetooth"

    const-string v3, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4332
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4333
    const/4 v3, 0x1

    if-eqz v0, :cond_30

    move v4, v3

    goto :goto_31

    .line 4334
    :cond_30
    const/4 v4, 0x2

    :goto_31
    nop

    .line 4333
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_35} :catch_36

    .line 4338
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_3a

    .line 4336
    :catch_36
    move-exception v1

    .line 4337
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4339
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 4090
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4091
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isEnabled()Z

    move-result v1

    const-wide v2, 0x10800000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4092
    iget v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    const-wide v2, 0x10500000002L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4093
    iget v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 4094
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    .line 4093
    const-wide v2, 0x10900000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4095
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    const-wide v2, 0x10900000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4096
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    const-wide v2, 0x10900000005L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4097
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    if-eqz v1, :cond_50

    .line 4098
    const-wide v1, 0x10300000006L

    iget-wide v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mLastEnabledTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4100
    :cond_50
    const-wide v1, 0x10300000007L

    .line 4101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4100
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4102
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;

    .line 4103
    .local v2, "log":Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;
    const-wide v3, 0x20b00000008L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4104
    .local v3, "token":J
    invoke-virtual {v2, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 4105
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4106
    .end local v2    # "log":Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;
    .end local v3    # "token":J
    goto :goto_62

    .line 4107
    :cond_7e
    const-wide v1, 0x10500000009L

    iget v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4108
    const-wide v1, 0x1080000000aL

    iget v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_95

    const/4 v3, 0x1

    goto :goto_96

    :cond_95
    const/4 v3, 0x0

    :goto_96
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4110
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4111
    .local v2, "time":Ljava/lang/Long;
    const-wide v3, 0x2030000000bL

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4112
    .end local v2    # "time":Ljava/lang/Long;
    goto :goto_9f

    .line 4113
    :cond_b8
    const-wide v1, 0x1050000000cL

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4114
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;

    .line 4115
    .local v2, "app":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    const-wide v3, 0x2090000000dL

    .line 4116
    invoke-virtual {v2}, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4115
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4117
    .end local v2    # "app":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_d0

    .line 4118
    :cond_e9
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4119
    return-void
.end method

.method private getBluetoothRestrictState(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 4342
    const/4 v0, 0x0

    .line 4343
    .local v0, "restrictState":I
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 4344
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_restricte_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothRestrictState enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    :cond_26
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    move v1, v2

    :cond_2a
    return v1
.end method

.method private getDeviceOwner()Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/UserHandle;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4242
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 4243
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4244
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 4245
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4246
    .local v2, "ident":J
    const/4 v4, 0x0

    .line 4247
    .local v4, "deviceOwnerUser":Landroid/os/UserHandle;
    const/4 v5, 0x0

    .line 4249
    .local v5, "deviceOwnerComponent":Landroid/content/ComponentName;
    :try_start_14
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v4, v6

    .line 4250
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_34

    move-object v5, v6

    .line 4252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4253
    nop

    .line 4254
    if-eqz v4, :cond_33

    if-eqz v5, :cond_33

    .line 4255
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d

    goto :goto_33

    .line 4258
    :cond_2d
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4256
    :cond_33
    :goto_33
    return-object v1

    .line 4252
    :catchall_34
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4253
    throw v1
.end method

.method private static getEnableDisableReasonString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 4122
    packed-switch p0, :pswitch_data_3e

    .line 4146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4144
    :pswitch_1d
    const-string v0, "INIT_FLAGS_CHANGED"

    return-object v0

    .line 4142
    :pswitch_20
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 4140
    :pswitch_23
    const-string v0, "RESTORE_USER_SETTING"

    return-object v0

    .line 4138
    :pswitch_26
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 4136
    :pswitch_29
    const-string v0, "CRASH"

    return-object v0

    .line 4134
    :pswitch_2c
    const-string v0, "SYSTEM_BOOT"

    return-object v0

    .line 4132
    :pswitch_2f
    const-string v0, "START_ERROR"

    return-object v0

    .line 4130
    :pswitch_32
    const-string v0, "RESTARTED"

    return-object v0

    .line 4128
    :pswitch_35
    const-string v0, "DISALLOWED"

    return-object v0

    .line 4126
    :pswitch_38
    const-string v0, "AIRPLANE_MODE"

    return-object v0

    .line 4124
    :pswitch_3b
    const-string v0, "APPLICATION_REQUEST"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private getServiceRestartMs()I
    .registers 2

    .line 4002
    iget v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x190

    return v0
.end method

.method private static getSyncTimeout()Ljava/time/Duration;
    .registers 1

    .line 165
    sget-object v0, Lcom/android/server/bluetooth/BluetoothManagerService;->SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

    return-object v0
.end method

.method static getTempAllowlistBroadcastOptions()Landroid/os/Bundle;
    .registers 9

    .line 4201
    const-wide/16 v0, 0x2710

    .line 4202
    .local v0, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 4203
    .local v8, "bOptions":Landroid/app/BroadcastOptions;
    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    const/16 v6, 0xcb

    const-string v7, ""

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 4206
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private handleDisable()V
    .registers 4

    .line 3548
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3549
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_25

    .line 3551
    const-string v1, "Sending off request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousDisable(Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 3554
    const-string v1, "IBluetooth.disable() returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_25} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_25} :catch_28
    .catchall {:try_start_2 .. :try_end_25} :catchall_26

    .line 3560
    :cond_25
    goto :goto_2f

    :catchall_26
    move-exception v0

    goto :goto_3a

    .line 3557
    :catch_28
    move-exception v1

    .line 3558
    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v2, "Unable to call disable()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    .line 3560
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3561
    nop

    .line 3562
    return-void

    .line 3560
    :goto_3a
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3561
    throw v0
.end method

.method private handleEnable(Z)V
    .registers 9
    .param p1, "quietMode"    # Z

    .line 3502
    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    .line 3505
    :try_start_2
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3506
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_91

    const-string v1, "BluetoothManagerService"

    if-nez v0, :cond_68

    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    if-nez v2, :cond_68

    .line 3507
    const-string v0, "binding Bluetooth service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3510
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3511
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3512
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v5, 0x41

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 3514
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_85

    .line 3516
    :cond_46
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    .line 3517
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBindingUserID:I

    .line 3518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding BT service. Current user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBindingUserID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_11 .. :try_end_67} :catchall_91

    goto :goto_85

    .line 3520
    .end local v0    # "timeoutMsg":Landroid/os/Message;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_68
    if-eqz v0, :cond_85

    .line 3523
    :try_start_6a
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousEnable(ZLandroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 3524
    const-string v0, "IBluetooth.enable() returned false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7d} :catch_7e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6a .. :try_end_7d} :catch_7e
    .catchall {:try_start_6a .. :try_end_7d} :catchall_91

    .line 3528
    :cond_7d
    goto :goto_86

    .line 3526
    :catch_7e
    move-exception v0

    .line 3527
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7f
    const-string v2, "Unable to call enable()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_91

    goto :goto_86

    .line 3520
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_85
    :goto_85
    nop

    .line 3531
    :goto_86
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3532
    nop

    .line 3533
    return-void

    .line 3531
    :catchall_91
    move-exception v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3532
    throw v0
.end method

.method private handleHalfCloseEvent(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 4405
    sget-boolean v0, Lcom/android/server/bluetooth/BluetoothManagerService;->mRestrictFlag:Z

    if-eqz v0, :cond_20

    .line 4406
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "handle restrict state done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    const/16 v0, 0xc

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendRestrictStateChanged(Landroid/content/Context;IIZ)V

    .line 4409
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v0, :cond_1d

    .line 4410
    const/16 v1, 0x2bf

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 4412
    :cond_1d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/bluetooth/BluetoothManagerService;->mRestrictFlag:Z

    .line 4414
    :cond_20
    return-void
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .line 915
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method private isBleState(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 3605
    packed-switch p1, :pswitch_data_8

    .line 3611
    const/4 v0, 0x0

    return v0

    .line 3609
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isBluetoothDisallowed()Z
    .registers 12

    .line 3882
    const-string v0, ""

    const-string/jumbo v1, "skip_update_check"

    const-string v2, "BluetoothManagerService"

    :try_start_7
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3883
    .local v3, "skipUpdateCheck":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if to start bluetooth, skipUpdateCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    if-nez v3, :cond_71

    .line 3885
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3886
    const-string/jumbo v1, "ro.mi.os.version.code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3887
    .local v1, "codeStr":Ljava/lang/String;
    const-string/jumbo v4, "ro.build.version.release"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3888
    .local v0, "osStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 3889
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3890
    .local v4, "osVersion":I
    const/16 v6, 0xd

    if-ne v4, v6, :cond_71

    .line 3891
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 3892
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3893
    .local v6, "code":I
    if-lt v6, v5, :cond_71

    .line 3894
    const-string v7, "Delay 15s to start bluetooth"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v8, 0x321

    invoke-virtual {v7, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 3896
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v9, 0x3a98

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_70} :catch_72

    .line 3897
    return v5

    .line 3905
    .end local v0    # "osStr":Ljava/lang/String;
    .end local v1    # "codeStr":Ljava/lang/String;
    .end local v3    # "skipUpdateCheck":I
    .end local v4    # "osVersion":I
    .end local v6    # "code":I
    .end local v7    # "msg":Landroid/os/Message;
    :cond_71
    goto :goto_89

    .line 3903
    :catch_72
    move-exception v0

    .line 3904
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while Update Check"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3908
    .local v0, "callingIdentity":J
    :try_start_8d
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_bluetooth"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 3909
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_a4

    .line 3911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    return v2

    .line 3911
    :catchall_a4
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3912
    throw v2
.end method

.method private isBluetoothPersistedStateOn()Z
    .registers 5

    .line 928
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 929
    return v1

    .line 931
    :cond_8
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 933
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method private isBluetoothPersistedStateOnAirplane()Z
    .registers 5

    .line 939
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 940
    return v1

    .line 942
    :cond_8
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 944
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method private isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    .line 953
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 954
    return v1

    .line 956
    :cond_8
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_14

    move v1, v3

    :cond_14
    return v1
.end method

.method private isCtsMode()Z
    .registers 3

    .line 4322
    nop

    .line 4323
    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4322
    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isDeviceOwner(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4262
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 4263
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "isDeviceOwner: packageName is null, returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    return v0

    .line 4267
    :cond_c
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getDeviceOwner()Landroid/util/Pair;

    move-result-object v1

    .line 4270
    .local v1, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/UserHandle;Landroid/content/ComponentName;>;"
    if-nez v1, :cond_13

    return v0

    .line 4272
    :cond_13
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 4273
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    nop

    .line 4272
    :goto_32
    return v0
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .line 1292
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method private isNameAndAddressSet()Z
    .registers 3

    .line 983
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isPrivileged(II)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 4233
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 4235
    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 4237
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 4233
    :goto_26
    return v0
.end method

.method private isProfileOwner(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4279
    const-string v0, "BluetoothManagerService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4280
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 4279
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_40

    .line 4284
    .local v2, "userContext":Landroid/content/Context;
    nop

    .line 4285
    if-nez v2, :cond_2b

    .line 4286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve user context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    return v1

    .line 4289
    :cond_2b
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    .line 4290
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 4291
    .local v3, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-nez v3, :cond_3b

    .line 4292
    const-string v4, "Error retrieving DPM service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    return v1

    .line 4295
    :cond_3b
    invoke-virtual {v3, p2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4281
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :catch_40
    move-exception v2

    .line 4282
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Unknown package name"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    return v1
.end method

.method private isSupportBluetoothRestrict(Landroid/content/Context;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 4367
    const-string v0, "BluetoothManagerService"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 4368
    return v1

    .line 4370
    :cond_6
    const/4 v2, 0x0

    .line 4371
    .local v2, "enableRestrict":I
    :try_start_7
    const-string/jumbo v3, "ro.miui.ui.version.code"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_74

    .line 4372
    .local v3, "MIUIversionCode":I
    const/16 v4, 0xe

    const/4 v5, 0x1

    const-string v6, "enable_bluetooth_restricte"

    if-lt v3, v4, :cond_50

    .line 4373
    :try_start_15
    const-string/jumbo v4, "ro.product.mod_device"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "_global"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4374
    .local v4, "isInternationalBuild":Z
    if-nez v4, :cond_30

    .line 4375
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    goto :goto_4f

    .line 4378
    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bluetooth_halfclose_global_enable"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 4380
    .local v7, "globalSupport":I
    if-nez v7, :cond_46

    .line 4381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    goto :goto_4f

    .line 4384
    :cond_46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    .line 4388
    .end local v4    # "isInternationalBuild":Z
    .end local v7    # "globalSupport":I
    :goto_4f
    goto :goto_59

    .line 4389
    :cond_50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 4392
    :goto_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportBluetoothRestrict = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_70} :catch_74

    .line 4393
    if-ne v2, v5, :cond_73

    .line 4394
    return v5

    .line 4396
    :cond_73
    return v1

    .line 4397
    .end local v2    # "enableRestrict":I
    .end local v3    # "MIUIversionCode":I
    :catch_74
    move-exception v2

    .line 4398
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "fail to get properties"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4400
    return v1
.end method

.method private loadStoredNameAndAddress()V
    .registers 5

    .line 992
    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isAdapterAddressValidationEnabled()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 995
    const-string v3, "bluetooth_addr_valid"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2d

    .line 999
    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void

    .line 1003
    :cond_2d
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 1004
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name=*****,Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 1009
    invoke-virtual {v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method private persistBluetoothSetting(I)V
    .registers 6
    .param p1, "value"    # I

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting Bluetooth Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 970
    .local v0, "callingIdentity":J
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2c

    .line 973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    nop

    .line 975
    return-void

    .line 973
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    throw v2
.end method

.method private propagateForegroundUserId(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1188
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1190
    :try_start_9
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_16

    .line 1191
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->setForegroundUserId(ILandroid/content/AttributionSource;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_23
    .catchall {:try_start_9 .. :try_end_16} :catchall_21

    .line 1196
    :cond_16
    nop

    :goto_17
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1197
    goto :goto_2d

    .line 1196
    :catchall_21
    move-exception v0

    goto :goto_2e

    .line 1193
    :catch_23
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to set foreground user id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    .line 1196
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 1198
    :goto_2d
    return-void

    .line 1196
    :goto_2e
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1197
    throw v0
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .registers 6
    .param p1, "clearBle"    # Z

    .line 3849
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "recoverBluetoothServiceFromError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    :try_start_8
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3852
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_20

    .line 3854
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousUnregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_20} :catch_23
    .catchall {:try_start_8 .. :try_end_20} :catchall_21

    .line 3859
    :cond_20
    goto :goto_2a

    :catchall_21
    move-exception v0

    goto :goto_65

    .line 3856
    :catch_23
    move-exception v1

    .line 3857
    .local v1, "e":Ljava/lang/Exception;
    :try_start_24
    const-string v2, "Unable to unregister"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    .line 3859
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3860
    nop

    .line 3862
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    .line 3864
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 3866
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 3867
    iput v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 3869
    if-eqz p1, :cond_52

    .line 3870
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V

    .line 3873
    :cond_52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 3876
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3877
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3878
    return-void

    .line 3859
    .end local v0    # "restartMsg":Landroid/os/Message;
    :goto_65
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3860
    throw v0
.end method

.method private registerForBleScanModeChange()V
    .registers 5

    .line 1322
    new-instance v0, Lcom/android/server/bluetooth/BluetoothManagerService$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$6;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Handler;)V

    .line 1347
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1349
    return-void
.end method

.method private registerForProvisioningStateChange()V
    .registers 5

    .line 1298
    new-instance v0, Lcom/android/server/bluetooth/BluetoothManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$5;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Handler;)V

    .line 1315
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1316
    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1315
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1318
    return-void
.end method

.method private resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "flags"    # I

    .line 4211
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4212
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_8

    .line 4213
    const/4 v1, 0x0

    return-object v1

    .line 4215
    :cond_8
    const/4 v1, 0x0

    .line 4216
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 4217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4218
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_21

    .line 4219
    goto :goto_33

    .line 4221
    :cond_21
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    .local v4, "foundComp":Landroid/content/ComponentName;
    if-nez v1, :cond_36

    .line 4227
    move-object v1, v4

    .line 4216
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4224
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_36
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4229
    .end local v2    # "i":I
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_63
    return-object v1
.end method

.method private sendBleStateChanged(II)V
    .registers 8
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 3591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending BLE State Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3592
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3593
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3591
    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3598
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3599
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3600
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3601
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getTempAllowlistBroadcastOptions()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3602
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 8

    .line 2339
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2342
    .local v1, "n":I
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_5a

    .line 2343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_52

    .line 2345
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_5a

    .line 2348
    goto :goto_4f

    .line 2346
    :catch_36
    move-exception v3

    .line 2347
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_37
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_5a

    .line 2343
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2351
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_52
    :try_start_52
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2352
    nop

    .line 2353
    monitor-exit v0

    .line 2354
    return-void

    .line 2351
    :catchall_5a
    move-exception v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2352
    nop

    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    throw v1

    .line 2353
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 8

    .line 2316
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2319
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2320
    .local v1, "n":I
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_6e

    .line 2321
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_5d

    .line 2323
    :try_start_33
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_40} :catch_41
    .catchall {:try_start_33 .. :try_end_40} :catchall_6e

    .line 2326
    goto :goto_5a

    .line 2324
    :catch_41
    move-exception v3

    .line 2325
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_42
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_6e

    .line 2321
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 2329
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2330
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2331
    nop

    .line 2332
    monitor-exit v0

    .line 2333
    return-void

    .line 2329
    :catchall_6e
    move-exception v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2330
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2331
    nop

    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    throw v1

    .line 2332
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_5d .. :try_end_81} :catchall_7f

    throw v1
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8
    .param p1, "isUp"    # Z

    .line 2295
    const-string v0, "BluetoothManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2297
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_5e

    .line 2300
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v1, :cond_57

    .line 2302
    :try_start_31
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d
    .catchall {:try_start_31 .. :try_end_3c} :catchall_5e

    .line 2305
    goto :goto_54

    .line 2303
    :catch_3d
    move-exception v3

    .line 2304
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_5e

    .line 2300
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 2308
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_57
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2309
    nop

    .line 2310
    return-void

    .line 2308
    :catchall_5e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2309
    throw v0
.end method

.method private declared-synchronized sendBrEdrDownCallback(Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    monitor-enter p0

    .line 1579
    :try_start_1
    const-string v0, "BluetoothManagerService"

    const-string v1, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_15

    .line 1583
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth handle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_74

    .line 1584
    monitor-exit p0

    return-void

    .line 1587
    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_74

    if-eqz v0, :cond_3d

    .line 1590
    :try_start_1b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1591
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_26

    .line 1592
    invoke-interface {v1, p1, v0}, Landroid/bluetooth/IBluetoothGatt;->unregAll(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1594
    :cond_26
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_33
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_32} :catch_33
    .catchall {:try_start_1b .. :try_end_32} :catchall_74

    .line 1597
    .end local v0    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_68

    .line 1595
    :catch_33
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to disconnect all apps."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_74

    .line 1597
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_68

    .line 1600
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1601
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4d

    .line 1602
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4d} :catch_59
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3d .. :try_end_4d} :catch_59
    .catchall {:try_start_3d .. :try_end_4d} :catchall_57

    .line 1607
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :goto_53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_74

    .line 1608
    goto :goto_68

    .line 1607
    :catchall_57
    move-exception v0

    goto :goto_6a

    .line 1604
    :catch_59
    move-exception v0

    .line 1605
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v1, "BluetoothManagerService"

    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_57

    .line 1607
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_61
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_74

    goto :goto_53

    .line 1611
    :goto_68
    monitor-exit p0

    return-void

    .line 1607
    :goto_6a
    :try_start_6a
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1608
    throw v0
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_74

    .line 1578
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendDisableMsg(ILjava/lang/String;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3801
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3802
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 3803
    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;)V
    .registers 5
    .param p1, "quietMode"    # Z
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3806
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;Z)V

    .line 3807
    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;Z)V
    .registers 8
    .param p1, "quietMode"    # Z
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isBle"    # Z

    .line 3813
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p4, p3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3814
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 3815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mLastEnabledTime:J

    .line 3816
    return-void
.end method

.method private sendRestrictStateChanged(Landroid/content/Context;IIZ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "write"    # Z

    .line 4352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRestrictStateChanged Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.xiaomi.bluetooth.WRITE_RESTRICT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4355
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4356
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4357
    const-string v1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE_WRITE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4358
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4359
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4360
    if-eqz p1, :cond_46

    .line 4361
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4363
    :cond_46
    return-void
.end method

.method private startAlarmRepeatEveryDay()V
    .registers 12

    .line 736
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "startAlarmRepeatEveryDay"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.xiaomi.bluetooth.ACTION_CHECK_BLUETOOTH_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 739
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 741
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 742
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 743
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 744
    const/16 v4, 0xb

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 745
    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 746
    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 748
    .local v6, "systemTime":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 749
    .local v8, "selectTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "systemTime = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    cmp-long v4, v6, v8

    if-lez v4, :cond_71

    .line 751
    const/4 v4, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 752
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 754
    :cond_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v10, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 756
    return-void
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intentAction"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4314
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissionWhenWirelessConsentRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4315
    const/4 v0, 0x0

    return v0

    .line 4317
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 1021
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_12

    .line 1022
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1023
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 1029
    const-string v1, "Stored Bluetooth name: *****"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_12
    if-eqz p2, :cond_41

    .line 1035
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1036
    iput-object p2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUserId:I

    .line 1044
    invoke-static {v4, v2, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v3, v2}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_41
    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    .line 1051
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "bluetooth_addr_valid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1053
    :cond_4d
    return-void
.end method

.method private supportBluetoothPersistedState()Z
    .registers 3

    .line 921
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isSupportPersistedStateEnabled()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private synchronousDisable(Landroid/content/AttributionSource;)Z
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1104
    :cond_6
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1105
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, v0}, Landroid/bluetooth/IBluetooth;->disable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1106
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private synchronousEnable(ZLandroid/content/AttributionSource;)Z
    .registers 6
    .param p1, "quietMode"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1113
    :cond_6
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1114
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, v0}, Landroid/bluetooth/IBluetooth;->enable(ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1115
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private synchronousGetAddress(Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1122
    :cond_6
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1123
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, v0}, Landroid/bluetooth/IBluetooth;->getAddressWithAttribution(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1124
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private synchronousGetName(Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1131
    :cond_6
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1132
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, v0}, Landroid/bluetooth/IBluetooth;->getName(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1133
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private synchronousGetState()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/16 v1, 0xa

    if-nez v0, :cond_7

    return v1

    .line 1140
    :cond_7
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1141
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetooth;->getState(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1142
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_5

    return-void

    .line 1149
    :cond_5
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1150
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1151
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-void
.end method

.method private synchronousOnLeServiceUp(Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_5

    return-void

    .line 1158
    :cond_5
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1159
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, v0}, Landroid/bluetooth/IBluetooth;->onLeServiceUp(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1160
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    return-void
.end method

.method private synchronousRegisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_5

    return-void

    .line 1167
    :cond_5
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1168
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2, v0}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1169
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    return-void
.end method

.method private synchronousUnregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_5

    return-void

    .line 1176
    :cond_5
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    .line 1177
    .local v0, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2, v0}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1178
    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    return-void
.end method

.method private static timeToLog(J)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "timestamp"    # J

    .line 294
    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private unbindAllBluetoothProfileServices()V
    .registers 9

    .line 1987
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1989
    .local v2, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4d

    .line 1991
    .local v3, "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :try_start_21
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_4d

    .line 1994
    goto :goto_42

    .line 1992
    :catch_27
    move-exception v4

    .line 1993
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_28
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_42
    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$mremoveAllProxies(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;)V

    .line 1996
    .end local v2    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    goto :goto_d

    .line 1997
    :cond_46
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1998
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_28 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1371
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;

    .line 1372
    .local v0, "r":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    const/16 v1, 0xa

    .line 1373
    .local v1, "st":I
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    const-string v4, "BluetoothManagerService"

    if-nez v0, :cond_61

    if-eqz p2, :cond_61

    .line 1374
    new-instance v5, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v5, p0, p3}, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Ljava/lang/String;)V

    .line 1376
    .local v5, "deathRec":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    :try_start_18
    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_41

    .line 1379
    nop

    .line 1380
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registered for death of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1386
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsEnableBle:Z

    goto :goto_8c

    .line 1377
    :catch_41
    move-exception v2

    .line 1378
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BLE app ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") already dead!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1389
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "deathRec":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    :cond_61
    if-nez p2, :cond_8c

    if-eqz v0, :cond_8c

    .line 1391
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1392
    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered for death of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1398
    sput-boolean v3, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsEnableBle:Z

    goto :goto_8d

    .line 1389
    :cond_8c
    :goto_8c
    nop

    .line 1403
    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 1405
    .local v2, "appCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " registered Ble Apps"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return v2
.end method

.method private updateOppLauncherComponentState(Landroid/os/UserHandle;Z)V
    .registers 22
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "bluetoothSharingDisallowed"    # Z

    move-object/from16 v1, p0

    .line 3927
    const/4 v2, 0x0

    const-string v3, "BluetoothManagerService"

    if-eqz p2, :cond_a

    .line 3928
    const/4 v0, 0x2

    move v4, v0

    .local v0, "newState":I
    goto :goto_23

    .line 3929
    .end local v0    # "newState":I
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileOppEnabled()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3930
    const/4 v0, 0x1

    move v4, v0

    .restart local v0    # "newState":I
    goto :goto_23

    .line 3932
    .end local v0    # "newState":I
    :cond_21
    const/4 v0, 0x0

    move v4, v0

    .line 3937
    .local v4, "newState":I
    :goto_23
    new-instance v0, Lcom/android/server/bluetooth/BluetoothManagerService$8;

    invoke-direct {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$8;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    move-object v5, v0

    .line 3948
    .local v5, "baseBluetoothOppActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 3949
    .local v6, "systemPackageManager":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_117

    move-object/from16 v7, p1

    :try_start_34
    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 3950
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v8, v0

    .line 3951
    .local v8, "userPackageManager":Landroid/content/pm/PackageManager;
    const/16 v0, 0x3ea

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 3952
    .local v9, "allPackages":[Ljava/lang/String;
    array-length v10, v9

    move v11, v2

    :goto_46
    if-ge v11, v10, :cond_10e

    aget-object v0, v9, v11

    move-object v12, v0

    .line 3954
    .local v12, "candidatePackage":Ljava/lang/String;
    const-string v0, "com.xiaomi.bluetooth"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isCtsMode()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 3955
    goto/16 :goto_107

    .line 3958
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Searching package "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_71} :catch_115

    .line 3961
    const-wide/32 v13, 0x402201

    .line 3963
    :try_start_74
    invoke-static {v13, v14}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 3961
    invoke-virtual {v6, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_7c} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_d7

    .line 3975
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 3976
    :try_start_7d
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v13, :cond_83

    .line 3977
    goto/16 :goto_107

    .line 3979
    :cond_83
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v14, v13

    move v15, v2

    :goto_87
    if-ge v15, v14, :cond_d4

    aget-object v16, v13, v15

    move-object/from16 v17, v16

    .line 3980
    .local v17, "activity":Landroid/content/pm/ActivityInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v18, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v0, "Checking activity "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v17

    .end local v17    # "activity":Landroid/content/pm/ActivityInfo;
    .local v2, "activity":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 3982
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3983
    .local v1, "activityName":Ljava/lang/String;
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v12, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v4, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 3988
    .end local v1    # "activityName":Ljava/lang/String;
    goto :goto_b5

    .line 3989
    :cond_cb
    return-void

    .line 3979
    .end local v2    # "activity":Landroid/content/pm/ActivityInfo;
    :cond_cc
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto :goto_87

    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_d4
    move-object/from16 v18, v0

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_107

    .line 3972
    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_d7
    move-exception v0

    .line 3973
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while loading package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    goto :goto_107

    .line 3968
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ef
    move-exception v0

    .line 3970
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    nop

    .line 3952
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "candidatePackage":Ljava/lang/String;
    :goto_107
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_46

    .line 3994
    :cond_10e
    const-string v0, "Cannot toggle Bluetooth OPP activities, could not find them in any package"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_113} :catch_115

    .line 3998
    nop

    .end local v4    # "newState":I
    .end local v5    # "baseBluetoothOppActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "systemPackageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "userPackageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "allPackages":[Ljava/lang/String;
    goto :goto_131

    .line 3996
    :catch_115
    move-exception v0

    goto :goto_11a

    :catch_117
    move-exception v0

    move-object/from16 v7, p1

    .line 3997
    .local v0, "e":Ljava/lang/Exception;
    :goto_11a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOppLauncherComponentState failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_131
    return-void
.end method

.method private waitForState(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 3729
    .local p1, "states":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3730
    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    const-string v2, "BluetoothManagerService"

    if-ge v0, v1, :cond_67

    .line 3732
    :try_start_7
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3733
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_12} :catch_4c
    .catchall {:try_start_7 .. :try_end_12} :catchall_4a

    if-nez v1, :cond_1e

    .line 3743
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3734
    goto :goto_67

    .line 3736
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2a} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_2a} :catch_4c
    .catchall {:try_start_1e .. :try_end_2a} :catchall_4a

    if-eqz v1, :cond_38

    .line 3737
    nop

    .line 3743
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3737
    const/4 v1, 0x1

    return v1

    .line 3743
    :cond_38
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3744
    nop

    .line 3745
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 3746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3743
    :catchall_4a
    move-exception v1

    goto :goto_5d

    .line 3739
    :catch_4c
    move-exception v1

    .line 3740
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string/jumbo v3, "getState()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_4a

    .line 3743
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3741
    goto :goto_67

    .line 3743
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3744
    throw v1

    .line 3748
    :cond_67
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " time out"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .registers 11
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    const/4 v1, 0x0

    .line 1926
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1917
    if-nez v0, :cond_2a

    .line 1918
    const-string v0, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindBluetoothProfileService:Trying to bind to profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while Bluetooth is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return v1

    .line 1922
    :cond_2a
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1923
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;

    .line 1925
    .local v3, "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_59

    .line 1926
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileHfpAgEnabled()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1927
    new-instance v2, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_78

    .line 1928
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_59
    const/16 v5, 0x1b

    if-ne p1, v5, :cond_c9

    .line 1929
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileCcpServerEnabled()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 1930
    new-instance v2, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothLeCallControl;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_78
    if-nez v3, :cond_ac

    .line 1936
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    new-instance v5, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;

    invoke-direct {v5, p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Intent;)V

    move-object v3, v5

    .line 1940
    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$mbindService(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;I)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 1941
    monitor-exit v0

    return v1

    .line 1944
    :cond_a1
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    .line 1947
    :cond_ac
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v5, "psc is not null in bindBluetoothProfileService"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_2d .. :try_end_b5} :catchall_cb

    .line 1951
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1952
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1953
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1954
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1955
    return v4

    .line 1932
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    .restart local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :cond_c9
    :try_start_c9
    monitor-exit v0

    return v1

    .line 1948
    .end local v3    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_cb

    throw v1
.end method

.method public disable(Landroid/content/AttributionSource;Z)Z
    .registers 12
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1722
    if-nez p2, :cond_b

    .line 1723
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v2, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_b
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "disable"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_21

    .line 1730
    const-string v1, "BluetoothManagerService"

    const-string v2, "disable(): not disabling - bluetooth disallowed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return v3

    .line 1735
    :cond_21
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->handleBluetoothChange(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1736
    return v3

    .line 1740
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1741
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1742
    .local v4, "callingPid":I
    const-wide/32 v5, 0xd05f169

    invoke-static {v5, v6, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1743
    invoke-direct {p0, v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isPrivileged(II)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1744
    invoke-virtual {p0, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSystem(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1745
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isDeviceOwner(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1746
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isProfileOwner(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1747
    return v3

    .line 1751
    :cond_54
    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {v5, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->checkBluetoothPermission(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result v5

    .line 1752
    .local v5, "status":I
    sget-boolean v6, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v6, :cond_86

    invoke-direct {p0, v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isPrivileged(II)Z

    move-result v6

    if-nez v6, :cond_86

    .line 1753
    invoke-virtual {p0, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSystem(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_86

    .line 1754
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isDeviceOwner(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 1755
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isProfileOwner(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_86

    const/4 v6, 0x5

    if-ne v5, v6, :cond_83

    const-string v6, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1757
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/bluetooth/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_85

    :cond_83
    if-ne v5, v2, :cond_86

    .line 1759
    :cond_85
    return v3

    .line 1764
    :cond_86
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): mBluetooth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBinding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v6

    .line 1769
    :try_start_b9
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnAirplane()Z

    move-result v7

    if-nez v7, :cond_c6

    .line 1770
    if-eqz p2, :cond_c6

    .line 1771
    invoke-direct {p0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1772
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 1775
    :cond_c6
    if-eqz p2, :cond_cc

    .line 1776
    invoke-direct {p0, v2, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    goto :goto_10d

    .line 1780
    :cond_cc
    monitor-enter p0
    :try_end_cd
    .catchall {:try_start_b9 .. :try_end_cd} :catchall_11d

    .line 1781
    :try_start_cd
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V

    .line 1782
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_11a

    .line 1785
    :try_start_d1
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1786
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 1787
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v7, :cond_f2

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_ee

    .line 1789
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 1790
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V

    goto :goto_f2

    .line 1792
    :cond_ee
    const/4 v3, 0x6

    invoke-direct {p0, v3, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_f2} :catch_fb
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d1 .. :try_end_f2} :catch_fb
    .catchall {:try_start_d1 .. :try_end_f2} :catchall_f9

    .line 1799
    :cond_f2
    :goto_f2
    :try_start_f2
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_11d

    goto :goto_109

    :catchall_f9
    move-exception v2

    goto :goto_10f

    .line 1796
    :catch_fb
    move-exception v3

    .line 1797
    .local v3, "e":Ljava/lang/Exception;
    :try_start_fc
    const-string v7, "BluetoothManagerService"

    const-string v8, "Unable to initiate disable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_f9

    .line 1799
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_103
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    :goto_109
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1800
    nop

    .line 1802
    :goto_10d
    monitor-exit v6

    .line 1803
    return v2

    .line 1799
    :goto_10f
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1800
    nop

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v5    # "status":I
    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "persist":Z
    throw v2
    :try_end_11a
    .catchall {:try_start_103 .. :try_end_11a} :catchall_11d

    .line 1782
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "callingUid":I
    .restart local v4    # "callingPid":I
    .restart local v5    # "status":I
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "persist":Z
    :catchall_11a
    move-exception v2

    :try_start_11b
    monitor-exit p0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v5    # "status":I
    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "persist":Z
    :try_start_11c
    throw v2

    .line 1802
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "callingUid":I
    .restart local v4    # "callingPid":I
    .restart local v5    # "status":I
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "persist":Z
    :catchall_11d
    move-exception v2

    monitor-exit v6
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_11d

    throw v2
.end method

.method public disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "disableBle"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "BluetoothManagerService"

    if-nez v1, :cond_15

    .line 1477
    const-string v1, "disableBLE(): bluetooth disallowed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return v2

    .line 1483
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBle("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "):  mBluetooth ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mBinding = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mState = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 1485
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-direct {p0, p2, v2, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    .line 1492
    iget v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_62

    .line 1493
    const-string v1, "disableBLE(): Already disabled"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return v2

    .line 1497
    :cond_62
    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ne v1, v3, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1498
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    if-eqz v1, :cond_74

    .line 1499
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->disableBleScanMode()V

    .line 1501
    :cond_74
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-nez v1, :cond_7e

    .line 1502
    invoke-direct {p0, v4, v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendBrEdrDownCallback(Landroid/content/AttributionSource;)V

    .line 1507
    :cond_7e
    return v4
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 3536
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3537
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3538
    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1b

    .line 3542
    :cond_19
    const/4 v1, 0x1

    return v1

    .line 3539
    :cond_1b
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4007
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_11

    .line 4009
    return-void

    .line 4011
    :cond_11
    array-length v3, v0

    const/4 v4, 0x0

    if-lez v3, :cond_23

    aget-object v3, v0, v4

    const-string v5, "--proto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 4012
    invoke-direct/range {p0 .. p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 4013
    return-void

    .line 4015
    :cond_23
    const/4 v3, 0x0

    .line 4017
    .local v3, "errorMsg":Ljava/lang/String;
    const-string v5, "Bluetooth Status"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothManagerServiceInjector:Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;

    iget-object v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 4023
    invoke-virtual {v6, v7}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4022
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  isSupportBluetoothHalfOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  BluetoothHalfOnState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    iget-boolean v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_12d

    .line 4029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mLastEnabledTime:J

    sub-long/2addr v7, v9

    .line 4030
    .local v7, "onDuration":J
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-wide/32 v10, 0x36ee80

    div-long v10, v7, v10

    long-to-int v10, v10

    .line 4031
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const-wide/32 v10, 0xea60

    div-long v10, v7, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    long-to-int v10, v10

    .line 4032
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x2

    const-wide/16 v14, 0x3e8

    div-long v16, v7, v14

    rem-long v11, v16, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    rem-long v11, v7, v14

    long-to-int v11, v11

    .line 4033
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4030
    const-string v10, "%02d:%02d:%02d.%03d"

    invoke-static {v5, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4034
    .local v5, "onDurationString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  time since enabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    .end local v5    # "onDurationString":Ljava/lang/String;
    .end local v7    # "onDuration":J
    :cond_12d
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const-string v7, "  "

    if-nez v5, :cond_13d

    .line 4038
    const-string v5, "\nBluetooth never enabled!"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_169

    .line 4040
    :cond_13d
    const-string v5, "\nEnable log:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_148
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_169

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;

    .line 4042
    .local v8, "log":Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    .end local v8    # "log":Lcom/android/server/bluetooth/BluetoothManagerService$ActiveLog;
    goto :goto_148

    .line 4046
    :cond_169
    :goto_169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nBluetooth crashed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4047
    iget v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    const-string/jumbo v9, "s"

    const-string v10, ""

    if-ne v8, v6, :cond_18b

    move-object v8, v10

    goto :goto_18c

    :cond_18b
    move-object v8, v9

    :goto_18c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4046
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    iget v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashes:I

    const/16 v8, 0x64

    if-ne v5, v8, :cond_1a2

    .line 4049
    const-string v5, "(last 100)"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    :cond_1a2
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 4052
    .local v8, "time":Ljava/lang/Long;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/bluetooth/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    .end local v8    # "time":Ljava/lang/Long;
    goto :goto_1a8

    .line 4055
    :cond_1d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " BLE app"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v6, :cond_1f5

    move-object v9, v10

    :cond_1f5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " registered"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    iget-object v5, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_210
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_235

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;

    .line 4058
    .local v8, "app":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4059
    .end local v8    # "app":Lcom/android/server/bluetooth/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_210

    .line 4061
    :cond_235
    const-string v5, "\nBluetoothManagerService:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mEnable:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mQuietEnable:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mEnableExternal:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mQuietEnableExternal:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4068
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 4069
    array-length v5, v0

    if-nez v5, :cond_2ab

    .line 4071
    new-array v0, v6, [Ljava/lang/String;

    .line 4072
    .end local p3    # "args":[Ljava/lang/String;
    .local v0, "args":[Ljava/lang/String;
    const-string v5, "--print"

    aput-object v5, v0, v4

    move-object v4, v0

    goto :goto_2ac

    .line 4069
    .end local v0    # "args":[Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_2ab
    move-object v4, v0

    .line 4075
    .end local p3    # "args":[Ljava/lang/String;
    .local v4, "args":[Ljava/lang/String;
    :goto_2ac
    iget-object v0, v1, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v0, :cond_2b5

    .line 4076
    const-string v3, "Bluetooth Service not connected"

    move-object/from16 v5, p1

    goto :goto_2c0

    .line 4079
    :cond_2b5
    move-object/from16 v5, p1

    :try_start_2b7
    invoke-interface {v0, v5, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2ba
    .catch Landroid/os/RemoteException; {:try_start_2b7 .. :try_end_2ba} :catch_2bb

    .line 4082
    goto :goto_2c0

    .line 4080
    :catch_2bb
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 4081
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "RemoteException while dumping Bluetooth Service"

    .line 4084
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2c0
    if-eqz v3, :cond_2c5

    .line 4085
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    :cond_2c5
    return-void
.end method

.method public enable(Landroid/content/AttributionSource;)Z
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    .line 1651
    const-string v1, "BluetoothManagerService"

    const-string v2, "enable(): not enabling - bluetooth disallowed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return v3

    .line 1657
    :cond_16
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/enterprise/RestrictionsHelper;->handleBluetoothChange(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1658
    return v3

    .line 1662
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1663
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1664
    .local v4, "callingPid":I
    const-wide/32 v5, 0xd05f169

    invoke-static {v5, v6, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1665
    invoke-direct {p0, v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isPrivileged(II)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1666
    invoke-virtual {p0, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSystem(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1667
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isDeviceOwner(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1668
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isProfileOwner(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1669
    return v3

    .line 1673
    :cond_49
    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {v5, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerServiceInjector;->checkBluetoothPermission(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result v5

    .line 1674
    .local v5, "status":I
    sget-boolean v6, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v6, :cond_7b

    invoke-direct {p0, v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isPrivileged(II)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1675
    invoke-virtual {p0, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSystem(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1676
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isDeviceOwner(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1677
    invoke-direct {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isProfileOwner(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b

    const/4 v6, 0x5

    if-ne v5, v6, :cond_78

    const-string v6, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1679
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/bluetooth/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7a

    :cond_78
    if-ne v5, v2, :cond_7b

    .line 1681
    :cond_7a
    return v3

    .line 1686
    :cond_7b
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):  mBluetooth ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBinding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 1687
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1686
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_restricte_state"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1692
    .local v6, "restrictState":I
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_dd

    if-ne v6, v2, :cond_dd

    .line 1693
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x320

    invoke-virtual {v3, v7}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1694
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v7, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1695
    return v2

    .line 1699
    .end local v3    # "msg":Landroid/os/Message;
    :cond_dd
    const-string v7, "com.google.android.gms"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    sget-boolean v7, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsEnableBle:Z

    if-eqz v7, :cond_f1

    .line 1700
    const-string v7, "BluetoothManagerService"

    const-string v8, "GMS enable ble"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 1702
    :cond_f1
    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1706
    :goto_f4
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 1707
    :try_start_f7
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 1708
    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 1711
    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 1713
    monitor-exit v7
    :try_end_ff
    .catchall {:try_start_f7 .. :try_end_ff} :catchall_107

    .line 1715
    const-string v3, "BluetoothManagerService"

    const-string v7, "enable returning"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    return v2

    .line 1713
    :catchall_107
    move-exception v2

    :try_start_108
    monitor-exit v7
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v2
.end method

.method public enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1439
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "enableBle"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1441
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_82

    .line 1449
    :cond_14
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBle("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    .line 1451
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1449
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    .line 1455
    iget v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mState:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_7a

    const/16 v4, 0xf

    if-eq v3, v4, :cond_7a

    const/16 v4, 0xb

    if-eq v3, v4, :cond_7a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7a

    const/16 v4, 0xe

    if-ne v3, v4, :cond_6f

    goto :goto_7a

    .line 1463
    :cond_6f
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 1465
    :try_start_72
    invoke-direct {p0, v2, v1, v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;Z)V

    .line 1467
    monitor-exit v3

    .line 1468
    return v1

    .line 1467
    :catchall_77
    move-exception v1

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_77

    throw v1

    .line 1460
    :cond_7a
    :goto_7a
    const-string v2, "BluetoothManagerService"

    const-string v3, "enableBLE(): Bluetooth is already enabled or is turning on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    return v1

    .line 1443
    :cond_82
    :goto_82
    const-string v1, "BluetoothManagerService"

    const-string v3, "enableBle(): bluetooth disallowed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return v2
.end method

.method public enableNoAutoConnect(Landroid/content/AttributionSource;)Z
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1614
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "enableNoAutoConnect"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkBluetoothPermissions(Landroid/content/AttributionSource;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1617
    const-string v1, "BluetoothManagerService"

    const-string v3, "enableNoAutoConnect(): not enabling - bluetooth disallowed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return v2

    .line 1623
    :cond_15
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->handleBluetoothChange(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1624
    return v2

    .line 1629
    :cond_1f
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mBinding = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1634
    .local v1, "callingAppId":I
    const/16 v2, 0x403

    if-ne v1, v2, :cond_60

    .line 1638
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 1639
    :try_start_54
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 1640
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    .line 1641
    invoke-direct {p0, v3, v3, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 1643
    monitor-exit v2

    .line 1644
    return v3

    .line 1643
    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    throw v3

    .line 1635
    :cond_60
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to enable Bluetooth quietly"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public factoryReset()Z
    .registers 11

    .line 2418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2419
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 2421
    .local v1, "callerSystem":Z
    :goto_11
    const-string v4, "BluetoothManagerService"

    if-nez v1, :cond_2a

    .line 2422
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v5

    if-nez v5, :cond_21

    .line 2423
    const-string v2, "factoryReset(): not allowed for non-active and non system user"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return v3

    .line 2427
    :cond_21
    iget-object v5, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v7, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v5

    .line 2434
    .local v5, "state":I
    const/16 v6, 0xe

    const/16 v7, 0xc

    const/16 v8, 0xf

    if-eq v5, v6, :cond_41

    const/16 v6, 0xb

    if-eq v5, v6, :cond_41

    const/16 v6, 0xd

    if-ne v5, v6, :cond_54

    .line 2437
    :cond_41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 2438
    return v3

    .line 2443
    :cond_54
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V

    .line 2445
    :try_start_57
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2446
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v6, :cond_6c

    .line 2447
    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 2448
    iget-boolean v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleEnable(Z)V

    goto :goto_c6

    .line 2449
    :cond_6c
    const/16 v9, 0xa

    if-ne v5, v9, :cond_85

    .line 2450
    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    .line 2451
    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 2452
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v8

    .line 2451
    invoke-interface {v6, v7, v8}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2453
    iget-boolean v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleEnable(Z)V

    goto :goto_c6

    .line 2454
    :cond_85
    if-ne v5, v8, :cond_a9

    .line 2455
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 2457
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2455
    invoke-direct {p0, v9, v6, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2458
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V

    .line 2459
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 2460
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v8

    .line 2459
    invoke-interface {v6, v7, v8}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    goto :goto_c6

    .line 2461
    :cond_a9
    if-ne v5, v7, :cond_c6

    .line 2462
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 2464
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2462
    invoke-direct {p0, v9, v6, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2465
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleDisable()V

    .line 2466
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v7, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 2467
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v8

    .line 2466
    invoke-interface {v6, v7, v8}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_c6} :catch_d3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_57 .. :try_end_c6} :catch_d3
    .catchall {:try_start_57 .. :try_end_c6} :catchall_d1

    .line 2473
    :cond_c6
    :goto_c6
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2474
    nop

    .line 2475
    return v2

    .line 2473
    :catchall_d1
    move-exception v2

    goto :goto_e4

    .line 2469
    :catch_d3
    move-exception v2

    .line 2470
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d4
    const-string v6, "factoryReset(): Unable to do factoryReset."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_d1

    .line 2471
    nop

    .line 2473
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2471
    return v3

    .line 2473
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e4
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2474
    throw v2
.end method

.method public getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 2357
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getAddress"

    invoke-static {v0, p1, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkConnectPermissionForDataDelivery(Landroid/content/Context;Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2358
    return-object v1

    .line 2361
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    const-string v3, "BluetoothManagerService"

    if-eq v0, v2, :cond_22

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2362
    const-string v0, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    return-object v1

    .line 2366
    :cond_22
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 2368
    const-string v0, "02:00:00:00:00:00"

    return-object v0

    .line 2372
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2373
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4a

    .line 2374
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_40} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_40} :catch_4d
    .catchall {:try_start_2f .. :try_end_40} :catchall_4b

    .line 2381
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2374
    return-object v0

    .line 2381
    :cond_4a
    goto :goto_54

    :catchall_4b
    move-exception v0

    goto :goto_61

    .line 2376
    :catch_4d
    move-exception v0

    .line 2377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4e
    const-string v1, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_4b

    .line 2381
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2382
    nop

    .line 2387
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v0

    .line 2381
    :goto_61
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2382
    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    .line 1892
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName(Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 2391
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getName"

    invoke-static {v0, p1, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkConnectPermissionForDataDelivery(Landroid/content/Context;Landroid/content/AttributionSource;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2392
    return-object v1

    .line 2395
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    const-string v3, "BluetoothManagerService"

    if-eq v0, v2, :cond_22

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2396
    const-string v0, "getName(): not allowed for non-active and non system user"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    return-object v1

    .line 2401
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2402
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3d

    .line 2403
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_33} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_33} :catch_40
    .catchall {:try_start_22 .. :try_end_33} :catchall_3e

    .line 2408
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2403
    return-object v0

    .line 2408
    :cond_3d
    goto :goto_47

    :catchall_3e
    move-exception v0

    goto :goto_54

    .line 2405
    :catch_40
    move-exception v0

    .line 2406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v1, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 2408
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2409
    nop

    .line 2414
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v0

    .line 2408
    :goto_54
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2409
    throw v0
.end method

.method public getState()I
    .registers 5

    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_19

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1202
    const-string/jumbo v0, "getState(): report OFF for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v1

    .line 1207
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1208
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_34

    .line 1209
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetState()I

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19 .. :try_end_2a} :catch_37
    .catchall {:try_start_19 .. :try_end_2a} :catchall_35

    .line 1214
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1209
    return v0

    .line 1214
    :cond_34
    goto :goto_3f

    :catchall_35
    move-exception v0

    goto :goto_4a

    .line 1211
    :catch_37
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_38
    const-string/jumbo v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    .line 1214
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1215
    nop

    .line 1216
    return v1

    .line 1214
    :goto_4a
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1215
    throw v0
.end method

.method public handleOnBootPhase()V
    .registers 14

    .line 2007
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth boot completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2010
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v1

    .line 2011
    .local v1, "isBluetoothDisallowed":Z
    if-eqz v1, :cond_1a

    .line 2012
    return-void

    .line 2014
    :cond_1a
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v2

    .line 2016
    .local v2, "isSafeMode":Z
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x6

    const-string v5, "Auto-enabling Bluetooth."

    const/16 v6, 0xc8

    const-string v7, "Getting adapter name and address"

    const/4 v8, 0x1

    if-eqz v3, :cond_a7

    .line 2017
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "bluetooth_restricte_state"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2019
    iget-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v3, :cond_92

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_92

    if-nez v2, :cond_92

    .line 2021
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 2024
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "bluetooth_restrict_status_before_airplane_reboot"

    invoke-static {v3, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_61

    move v3, v8

    goto :goto_62

    :cond_61
    move v3, v10

    .line 2026
    .local v3, "isRestrictBeforeAirplaneReboot":Z
    :goto_62
    if-eqz v3, :cond_86

    .line 2027
    const-string v6, "bt airplane reboot, need enable restrict"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    sput-boolean v8, Lcom/android/server/bluetooth/BluetoothManagerService;->mRestrictFlag:Z

    .line 2029
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v0, :cond_81

    .line 2030
    const/16 v6, 0x2bf

    invoke-virtual {v0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2031
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2032
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v11, 0x1f40

    invoke-virtual {v6, v0, v11, v12}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2034
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_81
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v5, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2037
    .end local v3    # "isRestrictBeforeAirplaneReboot":Z
    :cond_86
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 2039
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2037
    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto :goto_d6

    .line 2040
    :cond_92
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v3

    if-nez v3, :cond_d6

    .line 2042
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2045
    .restart local v0    # "getMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2046
    .end local v0    # "getMsg":Landroid/os/Message;
    goto :goto_d6

    .line 2049
    :cond_a7
    iget-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v3, :cond_c2

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v3

    if-eqz v3, :cond_c2

    if-nez v2, :cond_c2

    .line 2051
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 2055
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2053
    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto :goto_d6

    .line 2056
    :cond_c2
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v3

    if-nez v3, :cond_d6

    .line 2058
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2061
    .restart local v0    # "getMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2065
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_d6
    :goto_d6
    new-instance v0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothModeChangeHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    .line 2066
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothAirplaneModeListener:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    if-eqz v3, :cond_e6

    .line 2067
    invoke-virtual {v3, v0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->start(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;)V

    .line 2069
    :cond_e6
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->registerForProvisioningStateChange()V

    .line 2070
    new-instance v0, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    invoke-direct {v0, p0, v8}, Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothDeviceConfigListener:Lcom/android/server/bluetooth/BluetoothDeviceConfigListener;

    .line 2072
    :try_start_f0
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/bluetooth/BluetoothManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/bluetooth/BluetoothManagerService$7;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2082
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_fd} :catch_fe

    .line 2085
    goto :goto_102

    .line 2083
    :catch_fe
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2086
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_102
    return-void
.end method

.method public handleOnSwitchUser(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2096
    return-void
.end method

.method public handleOnUnlockUser(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v2, 0x12d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2106
    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 4196
    new-instance v0, Lcom/android/server/bluetooth/BluetoothShellCommand;

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/bluetooth/BluetoothShellCommand;-><init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 4197
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 4196
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/bluetooth/BluetoothShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isBleAppPresent()Z
    .registers 3

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isBleAppPresent() count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .registers 4

    .line 1275
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z

    if-nez v0, :cond_c

    .line 1276
    return v1

    .line 1279
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_14} :catch_18

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 1281
    :catch_18
    move-exception v0

    .line 1283
    return v1
.end method

.method public isBluetoothAvailableForBinding()Z
    .registers 4

    .line 1897
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v0

    .line 1902
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_2f

    if-eqz v1, :cond_24

    const/16 v1, 0xc

    if-eq v0, v1, :cond_19

    const/16 v1, 0xb

    if-ne v0, v1, :cond_24

    .line 1905
    :cond_19
    const/4 v1, 0x1

    .line 1910
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1905
    return v1

    .line 1907
    :cond_24
    const/4 v1, 0x0

    .line 1910
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1907
    return v1

    .line 1910
    .end local v0    # "state":I
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1911
    throw v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isHearingAidProfileSupported()Z
    .registers 2

    .line 1288
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    return v0
.end method

.method public isSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4301
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4302
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 4301
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 4303
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_23
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_1a

    const/4 v2, 0x1

    .line 4307
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4303
    return v2

    .line 4307
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4308
    throw v2

    .line 4304
    :catch_23
    move-exception v3

    .line 4305
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 4307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4305
    return v2
.end method

.method public onAirplaneModeChanged()V
    .registers 14

    .line 438
    monitor-enter p0

    .line 439
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_16

    .line 440
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 441
    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V

    goto :goto_16

    .line 443
    :cond_13
    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e2

    .line 447
    :cond_16
    :goto_16
    const/16 v0, 0xa

    .line 449
    .local v0, "st":I
    :try_start_18
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 450
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousGetState()I

    move-result v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_1c4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_25} :catch_1c4
    .catchall {:try_start_18 .. :try_end_25} :catchall_1c2

    move v0, v3

    .line 455
    :try_start_26
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 456
    nop

    .line 458
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane Mode change - current state:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAirplaneModeOn()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 460
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x2bd

    const/16 v6, 0xb

    const/16 v7, 0xe

    const/16 v8, 0x2bc

    const/16 v9, 0xf

    const-wide/16 v10, 0x5dc

    const/16 v12, 0xc

    if-eqz v3, :cond_126

    .line 464
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V
    :try_end_73
    .catchall {:try_start_26 .. :try_end_73} :catchall_1e2

    .line 467
    if-ne v0, v9, :cond_be

    .line 469
    :try_start_75
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 470
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_97

    .line 471
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 471
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 474
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V

    .line 475
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnable:Z
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_97} :catch_a4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_75 .. :try_end_97} :catch_a4
    .catchall {:try_start_75 .. :try_end_97} :catchall_a2

    .line 480
    :cond_97
    :try_start_97
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    :goto_9d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_1e2

    .line 481
    goto/16 :goto_1c0

    .line 480
    :catchall_a2
    move-exception v1

    goto :goto_b3

    .line 477
    :catch_a4
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a5
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to call onBrEdrDown"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_a2

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_ac
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    goto :goto_9d

    :goto_b3
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 481
    nop

    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    throw v1

    .line 484
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    :cond_be
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAirModeStartTime:J

    .line 486
    if-ne v0, v12, :cond_f5

    .line 487
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v2, :cond_df

    .line 488
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "remove disable halfclose msg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 491
    :cond_df
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c0

    .line 492
    const-string v2, "BluetoothManagerService"

    const-string v3, "Airplane: enable restrict"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v12, v4, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendRestrictStateChanged(Landroid/content/Context;IIZ)V

    goto/16 :goto_1c0

    .line 496
    :cond_f5
    if-eq v0, v7, :cond_fb

    if-eq v0, v9, :cond_fb

    if-ne v0, v6, :cond_1c0

    .line 498
    :cond_fb
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v1, :cond_1c0

    .line 499
    const-string v1, "BluetoothManagerService"

    const-string v2, "Airplane: delay enable halfclose"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 501
    .local v1, "halfCloseMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 502
    nop

    .end local v1    # "halfCloseMsg":Landroid/os/Message;
    goto/16 :goto_1c0

    .line 506
    :cond_114
    const-string v1, "BluetoothManagerService"

    const-string v3, "Airplane ON: sendDisableMsg"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 508
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-direct {p0, v2, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    goto/16 :goto_1c0

    .line 511
    :cond_126
    iget-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v3, :cond_1c0

    .line 512
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_14c

    .line 513
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 514
    const-string v1, "BluetoothManagerService"

    const-string v3, "Airplane OFF: sendEnableMsg"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mQuietEnableExternal:Z

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto/16 :goto_1c0

    .line 521
    :cond_14c
    if-ne v0, v12, :cond_1a8

    .line 522
    const-string v2, "BluetoothManagerService"

    const-string v3, "Airplane: disable restrict"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v2, :cond_15c

    .line 524
    invoke-virtual {v2, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 526
    :cond_15c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mAirModeStartTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 527
    .local v2, "timeDiff":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-ltz v3, :cond_17d

    .line 528
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 529
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v4, v12, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendRestrictStateChanged(Landroid/content/Context;IIZ)V

    goto :goto_1af

    .line 533
    :cond_17d
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "halfclose off, sendMessageDelayed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v1, :cond_1af

    .line 535
    invoke-virtual {v1, v5}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 536
    .restart local v1    # "halfCloseMsg":Landroid/os/Message;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1a2

    .line 537
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v10, v4

    invoke-virtual {v3, v1, v10, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1af

    .line 539
    :cond_1a2
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v1, v10, v11}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1af

    .line 543
    .end local v1    # "halfCloseMsg":Landroid/os/Message;
    .end local v2    # "timeDiff":Ljava/lang/Long;
    :cond_1a8
    if-eq v0, v7, :cond_1b0

    if-eq v0, v9, :cond_1b0

    if-ne v0, v6, :cond_1af

    goto :goto_1b0

    :cond_1af
    :goto_1af
    goto :goto_1c0

    .line 545
    :cond_1b0
    :goto_1b0
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    if-eqz v1, :cond_1c0

    .line 546
    const-string v1, "BluetoothManagerService"

    const-string v2, "Airplane: cancel delay enable halfclose"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v8}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 553
    .end local v0    # "st":I
    :cond_1c0
    :goto_1c0
    monitor-exit p0
    :try_end_1c1
    .catchall {:try_start_ac .. :try_end_1c1} :catchall_1e2

    .line 554
    return-void

    .line 455
    .restart local v0    # "st":I
    :catchall_1c2
    move-exception v1

    goto :goto_1d7

    .line 451
    :catch_1c4
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c5
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to call getState"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1cc
    .catchall {:try_start_1c5 .. :try_end_1cc} :catchall_1c2

    .line 455
    :try_start_1cc
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit p0

    .line 453
    return-void

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d7
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 456
    nop

    .end local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    throw v1

    .line 553
    .end local v0    # "st":I
    .restart local p0    # "this":Lcom/android/server/bluetooth/BluetoothManagerService;
    :catchall_1e2
    move-exception v0

    monitor-exit p0
    :try_end_1e4
    .catchall {:try_start_1cc .. :try_end_1e4} :catchall_1e2

    throw v0
.end method

.method public onFactoryReset(Landroid/content/AttributionSource;)Z
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 394
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v2, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v0

    .line 399
    .local v0, "state":I
    const/16 v1, 0xc

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1e

    const/16 v4, 0xb

    if-eq v0, v4, :cond_1e

    const/16 v4, 0xd

    if-ne v0, v4, :cond_31

    .line 402
    :cond_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->waitForState(Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 403
    return v3

    .line 408
    :cond_31
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->clearBleApps()V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->getState()I

    move-result v0

    .line 411
    :try_start_38
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 412
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_43} :catch_88
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_38 .. :try_end_43} :catch_88
    .catchall {:try_start_38 .. :try_end_43} :catchall_86

    if-nez v4, :cond_50

    .line 413
    nop

    .line 431
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 413
    return v3

    .line 415
    :cond_50
    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ne v0, v2, :cond_6c

    .line 416
    :try_start_55
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-direct {p0, v5, v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousOnBrEdrDown(Landroid/content/AttributionSource;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_61} :catch_88
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_55 .. :try_end_61} :catch_88
    .catchall {:try_start_55 .. :try_end_61} :catchall_86

    .line 420
    nop

    .line 431
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 420
    return v4

    .line 421
    :cond_6c
    if-ne v0, v1, :cond_85

    .line 422
    :try_start_6e
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 424
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-direct {p0, v5, v1, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousDisable(Landroid/content/AttributionSource;)Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7a} :catch_88
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6e .. :try_end_7a} :catch_88
    .catchall {:try_start_6e .. :try_end_7a} :catchall_86

    .line 426
    nop

    .line 431
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 426
    return v4

    .line 431
    :cond_85
    goto :goto_91

    :catchall_86
    move-exception v1

    goto :goto_9c

    .line 428
    :catch_88
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    :try_start_89
    const-string v2, "BluetoothManagerService"

    const-string v4, "Unable to shutdown Bluetooth"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 431
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_91
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 432
    nop

    .line 433
    return v3

    .line 431
    :goto_9c
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 432
    throw v1
.end method

.method public onInitFlagsChanged()V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    return-void
.end method

.method public onUserRestrictionsChanged(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 367
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_bluetooth"

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 369
    .local v0, "newBluetoothDisallowed":Z
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_bluetooth_sharing"

    invoke-virtual {v1, v2, p1}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 372
    .local v1, "newBluetoothSharingDisallowed":Z
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    if-ne p1, v2, :cond_2b

    .line 373
    if-eqz v0, :cond_27

    .line 374
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateOppLauncherComponentState(Landroid/os/UserHandle;Z)V

    .line 375
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-direct {p0, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    goto :goto_2e

    .line 378
    :cond_27
    invoke-direct {p0, p1, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateOppLauncherComponentState(Landroid/os/UserHandle;Z)V

    goto :goto_2e

    .line 381
    :cond_2b
    invoke-direct {p0, p1, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->updateOppLauncherComponentState(Landroid/os/UserHandle;Z)V

    .line 383
    :goto_2e
    return-void
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1056
    if-nez p1, :cond_b

    .line 1057
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in registerAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1060
    :cond_b
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1061
    :try_start_e
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1062
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_17

    .line 1063
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0

    .line 1062
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1077
    if-nez p1, :cond_b

    .line 1078
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "registerStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void

    .line 1081
    :cond_b
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1083
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1084
    return-void
.end method

.method public unbindAndFinish()V
    .registers 6

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindAndFinish(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnbinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :try_start_33
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1856
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_97

    if-eqz v0, :cond_4a

    .line 1886
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1857
    return-void

    .line 1859
    :cond_4a
    const/4 v0, 0x1

    :try_start_4b
    iput-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    .line 1860
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1861
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1864
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    .line 1867
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_97

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_88

    .line 1870
    :try_start_64
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1871
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1870
    invoke-direct {p0, v0, v4}, Lcom/android/server/bluetooth/BluetoothManagerService;->synchronousUnregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6f} :catch_70
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_64 .. :try_end_6f} :catch_70
    .catchall {:try_start_64 .. :try_end_6f} :catchall_97

    .line 1874
    goto :goto_76

    .line 1872
    :catch_70
    move-exception v0

    .line 1873
    .local v0, "e":Ljava/lang/Exception;
    :try_start_71
    const-string v4, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_76
    iput-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 1876
    iput-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1877
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mConnection:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1878
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    .line 1879
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBinding:Z

    .line 1880
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mTryBindOnBindTimeout:Z

    goto :goto_8a

    .line 1882
    :cond_88
    iput-boolean v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mUnbinding:Z

    .line 1884
    :goto_8a
    iput-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_97

    .line 1886
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1887
    nop

    .line 1888
    return-void

    .line 1886
    :catchall_97
    move-exception v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1887
    throw v0
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 10
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1961
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1962
    :try_start_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1963
    .local v1, "profile":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;

    .line 1964
    .local v2, "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_1c

    .line 1965
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: psc is null, returning"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    monitor-exit v0

    return-void

    .line 1968
    :cond_1c
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: calling psc.removeProxy"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-static {v2, p2}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$mremoveProxy(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1972
    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->-$$Nest$misEmpty(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_78

    if-nez v3, :cond_76

    .line 1975
    :try_start_37
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_78

    .line 1978
    goto :goto_58

    .line 1976
    :catch_3d
    move-exception v3

    .line 1977
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3e
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unbind service with intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_58
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "psc.isEmpty is true, removing psc entry for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    .end local v1    # "profile":Ljava/lang/Integer;
    .end local v2    # "psc":Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
    :cond_76
    monitor-exit v0

    .line 1984
    return-void

    .line 1983
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3e .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1067
    if-nez p1, :cond_a

    .line 1068
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in unregisterAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1071
    :cond_a
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1072
    :try_start_d
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1073
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1087
    if-nez p1, :cond_b

    .line 1088
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void

    .line 1091
    :cond_b
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1092
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService;->mHandler:Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1094
    return-void
.end method
