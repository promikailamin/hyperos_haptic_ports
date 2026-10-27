.class public Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "UsbDataAdvancedProtectionHook.java"


# static fields
.field public static final NOTIFICATION_TYPE_TO_TEXT:Ljava/util/Map;

.field public static final NOTIFICATION_TYPE_TO_TEXT_WITH_REPLUG:Ljava/util/Map;

.field public static final NOTIFICATION_TYPE_TO_TITLE:Ljava/util/Map;

.field public static final NOTIFICATION_TYPE_TO_TITLE_WITH_REPLUG:Ljava/util/Map;


# instance fields
.field public mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

.field public mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBroadcastReceiverIsRegistered:Z

.field public mCanSetUsbDataSignal:Z

.field public final mContext:Landroid/content/Context;

.field public mDataRequiredForHighPowerCharge:Z

.field public mDelayedDisableHandler:Landroid/os/Handler;

.field public mDelayedNotificationHandler:Landroid/os/Handler;

.field public final mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

.field public mIsAfterFirstUnlock:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field public mNotificationChannel:Landroid/app/NotificationChannel;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mReplugRequiredUponEnable:Z

.field public mSilenceDataNotification:Z

.field public mSilencePowerNotification:Z

.field public mUsbDataSignalUpdateExecutor:Ljava/util/concurrent/ExecutorService;

.field public mUsbManager:Landroid/hardware/usb/UsbManager;

.field public mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

.field public mUsbPortPdComplianceCheckTimeoutMillis:J

.field public mUsbPortPowerBrickConnectionCheckTimeoutMillis:J

.field public mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmApmRequestedUsbDataStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataRequiredForHighPowerCharge(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDataRequiredForHighPowerCharge:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedNotificationHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedNotificationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastUsbPortStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbPortStatus;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mLastUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSilenceDataNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSilencePowerNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbPortPdComplianceCheckTimeoutMillis(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbPortPdComplianceCheckTimeoutMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbPortPowerBrickConnectionCheckTimeoutMillis(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbPortPowerBrickConnectionCheckTimeoutMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmIsAfterFirstUnlock(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mIsAfterFirstUnlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastUsbPortStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mLastUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSilenceDataNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSilencePowerNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanUpNotificationHandlerTasks(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->cleanUpNotificationHandlerTasks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearExistingNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->clearExistingNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateAndSendNotificationIfDeviceIsLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->createAndSendNotificationIfDeviceIsLocked(Landroid/hardware/usb/UsbPortStatus;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcurrentUserIsGuest(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->currentUserIsGuest()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->setUsbDataSignalIfPossible(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$musbPortIsConnected(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->usbPortIsConnected(Landroid/hardware/usb/UsbPortStatus;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, 0x1040ac1

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x2

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    .line 137
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TITLE:Ljava/util/Map;

    const v0, 0x1040ac3

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    move-object v6, v2

    .line 145
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TITLE_WITH_REPLUG:Ljava/util/Map;

    const v0, 0x1040abd

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x1040abc

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x1040abe

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 154
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TEXT:Ljava/util/Map;

    const v0, 0x1040ac2

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 162
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TEXT_WITH_REPLUG:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/IUsbManagerInternal;Landroid/app/KeyguardManager;Landroid/app/NotificationManager;Landroid/os/UserManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .registers 16

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 170
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 173
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    .line 177
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedNotificationHandler:Landroid/os/Handler;

    .line 179
    new-instance v1, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 190
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbDataSignalUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 199
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDataRequiredForHighPowerCharge:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mReplugRequiredUponEnable:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    .line 242
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 244
    iput-object p3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 245
    iput-object p4, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    .line 246
    iput-object p5, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 247
    iput-object p6, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    .line 248
    iput-object p9, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedNotificationHandler:Landroid/os/Handler;

    .line 249
    iput-object p8, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    .line 250
    iput-boolean p11, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mCanSetUsbDataSignal:Z

    .line 251
    iput-boolean p12, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mIsAfterFirstUnlock:Z

    .line 252
    iput-object p7, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUserManager:Landroid/os/UserManager;

    .line 253
    iput-object p10, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .registers 7

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 170
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedDisableHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedNotificationHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 190
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbDataSignalUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mCanSetUsbDataSignal:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDataRequiredForHighPowerCharge:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mReplugRequiredUponEnable:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mIsAfterFirstUnlock:Z

    .line 209
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.accessory"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    return-void

    .line 215
    :cond_5f
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 216
    const-class v0, Landroid/app/NotificationManager;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    .line 218
    iput-object p3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 219
    const-class p3, Landroid/hardware/usb/IUsbManagerInternal;

    .line 220
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/usb/IUsbManagerInternal;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/hardware/usb/IUsbManagerInternal;

    iput-object p3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    .line 221
    const-class p3, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 222
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUserManager:Landroid/os/UserManager;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->canSetUsbDataSignal()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mCanSetUsbDataSignal:Z

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public final canSetUsbDataSignal()Z
    .registers 3

    .line 830
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_20

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB_HAL_VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedProtectionUsb"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_20
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    move-result p0

    const/16 v0, 0xd

    if-lt p0, v0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final cleanUpNotificationHandlerTasks()V
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDelayedNotificationHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearExistingNotification()V
    .registers 3

    .line 639
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "AdvancedProtectionUsb"

    const/16 v1, 0x3f5

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public final createAndSendNotificationIfDeviceIsLocked(Landroid/hardware/usb/UsbPortStatus;I)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_d

    .line 525
    iget-boolean v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    if-nez v3, :cond_19

    :cond_d
    if-nez p2, :cond_13

    iget-boolean v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilencePowerNotification:Z

    if-nez v3, :cond_19

    :cond_13
    if-ne p2, v1, :cond_1f

    iget-boolean v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mSilenceDataNotification:Z

    if-eqz v3, :cond_1f

    .line 531
    :cond_19
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->logDialogShown(IIZ)V

    return-void

    .line 538
    :cond_1f
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->usbPortIsConnectedWithDataDisabled(Landroid/hardware/usb/UsbPortStatus;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_c1

    .line 545
    :cond_2f
    iget-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mReplugRequiredUponEnable:Z

    if-eqz p1, :cond_60

    .line 546
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TITLE_WITH_REPLUG:Ljava/util/Map;

    .line 548
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 547
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 549
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TEXT_WITH_REPLUG:Ljava/util/Map;

    .line 550
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8c

    .line 552
    :cond_60
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TITLE:Ljava/util/Map;

    .line 553
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 554
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->NOTIFICATION_TYPE_TO_TEXT:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 557
    :goto_8c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.security.advancedprotection.features.silence"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v5, "silence_power_notification"

    const-string/jumbo v6, "silence_data_notification"

    if-ne p2, v2, :cond_a2

    .line 559
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_ad

    :cond_a2
    if-nez p2, :cond_a8

    .line 562
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_ad

    :cond_a8
    if-ne p2, v1, :cond_ad

    .line 564
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    :cond_ad
    :goto_ad
    iget-object v5, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    .line 569
    invoke-static {v5, v0, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 571
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->getAtomUsbNotificationType(I)I

    move-result p2

    .line 566
    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 573
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->logDialogShown(IIZ)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public final createHelpPendingIntent()Landroid/app/PendingIntent;
    .registers 11

    .line 795
    const-string v1, "AdvancedProtectionUsb"

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const v2, 0x10402ae

    .line 796
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 798
    :try_start_d
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse help intent "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_28
    move-exception v0

    move-object p0, v0

    goto :goto_69

    :cond_2b
    const/high16 v0, 0x10000000

    .line 803
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 804
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 805
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_54

    .line 806
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 812
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    .line 806
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 814
    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve help intent "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_68} :catch_28

    return-object v3

    .line 817
    :goto_69
    const-string v0, "Failed to create help intent"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public final currentUserIsGuest()Z
    .registers 2

    .line 825
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 826
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final deviceHaveUsbDataConnection()Z
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 720
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_39

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbDataSignal: false, Port status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->toString()Ljava/lang/String;

    move-result-object v2

    .line 721
    const-string v3, "AdvancedProtectionUsb"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_39
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->usbPortIsConnected(Landroid/hardware/usb/UsbPortStatus;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public final getAtomUsbNotificationType(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, p0, :cond_a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0

    :cond_a
    const/4 p0, 0x3

    :cond_b
    return p0
.end method

.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public final initialize()V
    .registers 4

    .line 305
    const-string/jumbo v0, "ro.usb.data_protection.disable_when_locked.data_required_for_high_power_charge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDataRequiredForHighPowerCharge:Z

    .line 308
    const-string/jumbo v0, "ro.usb.data_protection.disable_when_locked.replug_required_upon_enable"

    .line 309
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mReplugRequiredUponEnable:Z

    .line 311
    const-string/jumbo v0, "ro.usb.data_protection.disable_when_locked.power_brick_connection_check_timeout"

    const-wide/16 v1, 0xbb8

    .line 312
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbPortPowerBrickConnectionCheckTimeoutMillis:J

    .line 315
    const-string/jumbo v0, "ro.usb.data_protection.disable_when_locked.pd_compliance_check_timeout"

    const-wide/16 v1, 0x3e8

    .line 316
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbPortPdComplianceCheckTimeoutMillis:J

    .line 319
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->initializeNotifications()V

    .line 320
    new-instance v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final initializeNotifications()V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "APM_USB_SERVICE_NOTIF_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_19

    .line 510
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "ApmUsbProtectionUiNotificationChannel"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 515
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_19
    return-void
.end method

.method public isAvailable()Z
    .registers 5

    .line 264
    const-string/jumbo v0, "ro.usb.data_protection.disable_when_locked.supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 266
    const-string v2, "AdvancedProtectionUsb"

    const-string v3, "USB data protection is disabled through system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_11
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.accessory"

    .line 271
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_2d
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mAdvancedProtectionService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 272
    invoke-virtual {v2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isUsbDataProtectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-boolean p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mCanSetUsbDataSignal:Z

    if-eqz p0, :cond_3d

    if-eqz v0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    return v1
.end method

.method public onAdvancedProtectionChanged(Z)V
    .registers 5

    .line 279
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->isAvailable()Z

    move-result v0

    const-string v1, "AdvancedProtectionUsb"

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 280
    const-string p0, "AAPM USB data protection feature is disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvancedProtectionChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_45

    .line 285
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_2e

    .line 286
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->initialize()V

    .line 288
    :cond_2e
    iget-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    if-nez p1, :cond_38

    .line 289
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->registerReceiver()V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->registerKeyguardLockListener()V

    .line 292
    :cond_38
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->setUsbDataSignalIfPossible(Z)Z

    :cond_44
    return-void

    .line 296
    :cond_45
    iget-boolean p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    if-eqz p1, :cond_4c

    .line 297
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->unregisterReceiver()V

    :cond_4c
    const/4 p1, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->setUsbDataSignalIfPossible(Z)Z

    return-void
.end method

.method public final registerKeyguardLockListener()V
    .registers 3

    .line 763
    new-instance v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;

    invoke-direct {v0, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$2;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 780
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbDataSignalUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, p0, v0}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    return-void
.end method

.method public final registerReceiver()V
    .registers 12

    .line 739
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const/16 v0, 0x3e8

    .line 740
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 741
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 751
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$NotificationSilenceReceiver;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook-IA;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.security.advancedprotection.features.silence"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    return-void
.end method

.method public final sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 9

    .line 597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 598
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const v2, 0x1040abf

    .line 600
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 598
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const-string v3, "APM_USB_SERVICE_NOTIF_CHANNEL"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10805e6

    .line 605
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const v3, 0x1060363

    .line 607
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 606
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 609
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 610
    invoke-virtual {v1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 611
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 612
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 613
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p3, :cond_5d

    .line 615
    iget-object p2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    const v0, 0x1040ac0

    .line 617
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 615
    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 624
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->createHelpPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 626
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 629
    :cond_66
    iget-boolean p2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mIsAfterFirstUnlock:Z

    if-eqz p2, :cond_73

    .line 630
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    goto :goto_79

    .line 631
    :cond_73
    iget-object p2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 632
    :goto_79
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p3, 0x3f5

    .line 633
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 632
    const-string v0, "AdvancedProtectionUsb"

    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/16 p0, 0x475

    .line 634
    invoke-static {p0, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public final setUsbDataSignalIfPossible(Z)Z
    .registers 8

    .line 672
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 678
    const-string v0, "AdvancedProtectionUsb"

    const/4 v1, 0x0

    if-nez p1, :cond_22

    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->deviceHaveUsbDataConnection()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mIsAfterFirstUnlock:Z

    if-eqz v2, :cond_22

    .line 679
    const-string p1, "USB Data protection toggle skipped due to existing USB connection"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1f

    .line 713
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_1f
    move-exception p1

    goto/16 :goto_85

    :cond_22
    move v2, v1

    :goto_23
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_78

    .line 686
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting USB data: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManagerInternal:Landroid/hardware/usb/IUsbManagerInternal;

    invoke-interface {v3, p1, v4}, Landroid/hardware/usb/IUsbManagerInternal;->enableUsbDataSignal(ZI)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 688
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_48} :catch_51
    .catchall {:try_start_27 .. :try_end_48} :catchall_1f

    .line 690
    :try_start_48
    const-string v2, "Successfully set USB data"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4f
    .catchall {:try_start_48 .. :try_end_4d} :catchall_1f

    move v2, v4

    goto :goto_78

    :catch_4f
    move-exception v2

    goto :goto_6f

    :catch_51
    move-exception v3

    move v4, v2

    move-object v2, v3

    goto :goto_6f

    .line 693
    :cond_55
    :try_start_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB Data protection toggle to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " attempt failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6e} :catch_51
    .catchall {:try_start_55 .. :try_end_6e} :catchall_1f

    goto :goto_75

    .line 696
    :goto_6f
    :try_start_6f
    const-string v3, "RemoteException thrown when calling enableUsbDataSignal"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_78
    :goto_78
    if-lez v1, :cond_7f

    const/16 v0, 0x41e

    .line 703
    invoke-static {v0, p1, v1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    :cond_7f
    if-eqz p1, :cond_8b

    .line 710
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->clearExistingNotification()V
    :try_end_84
    .catchall {:try_start_6f .. :try_end_84} :catchall_1f

    goto :goto_8b

    .line 713
    :goto_85
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 714
    throw p1

    .line 713
    :cond_8b
    :goto_8b
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mDisableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2
.end method

.method public final unregisterReceiver()V
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbProtectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 790
    iput-boolean v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mBroadcastReceiverIsRegistered:Z

    return-void
.end method

.method public final usbPortIsConnected(Landroid/hardware/usb/UsbPortStatus;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 735
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final usbPortIsConnectedWithDataDisabled(Landroid/hardware/usb/UsbPortStatus;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 643
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 644
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v1

    .line 646
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    const/4 v2, 0x1

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v0

    :goto_19
    if-eqz p1, :cond_25

    .line 652
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mApmRequestedUsbDataStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v2

    goto :goto_26

    :cond_25
    move v3, v0

    .line 653
    :goto_26
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    move-result p0

    const/16 v4, 0xd

    if-le p0, v4, :cond_37

    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_36

    move v3, v2

    goto :goto_37

    :cond_36
    move v3, v0

    :cond_37
    :goto_37
    if-nez v3, :cond_3c

    if-eqz p1, :cond_3c

    return v2

    :cond_3c
    return v0
.end method
