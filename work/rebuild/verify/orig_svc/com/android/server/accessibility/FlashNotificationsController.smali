.class public Lcom/android/server/accessibility/FlashNotificationsController;
.super Ljava/lang/Object;
.source "FlashNotificationsController.java"


# static fields
.field static final ACTION_FLASH_NOTIFICATION_START_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

.field static final ACTION_FLASH_NOTIFICATION_STOP_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_COLOR:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_TYPE:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

.field static final PREVIEW_TYPE_LONG:I = 0x1

.field static final PREVIEW_TYPE_SHORT:I = 0x0

.field static final SETTING_KEY_CAMERA_FLASH_NOTIFICATION:Ljava/lang/String; = "camera_flash_notification"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION:Ljava/lang/String; = "screen_flash_notification"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR:Ljava/lang/String; = "screen_flash_notification_color_global"


# instance fields
.field public final mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCameraId:Ljava/lang/String;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field final mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

.field public final mFlashNotificationHandler:Landroid/os/Handler;

.field public final mFlashNotifications:Ljava/util/LinkedList;

.field public mIsAlarming:Z

.field public mIsCameraFlashNotificationEnabled:Z

.field public mIsCameraOpened:Z

.field public mIsScreenFlashNotificationEnabled:Z

.field public mIsTorchOn:Z

.field public mIsTorchTouched:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mScreenFlashNotificationOverlayView:Landroid/view/View;

.field public volatile mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

.field final mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$5mFsdLGHYnwASjELIFuZP7HfFb0(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeOutScreenNotificationOverlayViewMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$RHNwJQ_YYjN63noLxJ3Is4adkhU(Lcom/android/server/accessibility/FlashNotificationsController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->showScreenNotificationOverlayViewMainThread(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKwpLHiqWVLGSIVewpYylLEeS-A(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLgKpDcfS6pQ6YdeW07NMkD75nc(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->hideScreenNotificationOverlayViewMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$ylyUb5RdxmoWiL86NHOUU-9BSxk(Lcom/android/server/accessibility/FlashNotificationsController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->lambda$startFlashNotificationSequence$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioPlaybackCallback(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/media/AudioManager$AudioPlaybackCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/util/LinkedList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTorchCallback(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager$TorchCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/hardware/camera2/CameraManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayState(Lcom/android/server/accessibility/FlashNotificationsController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCameraOpened(Lcom/android/server/accessibility/FlashNotificationsController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsScreenFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsTorchOn(Lcom/android/server/accessibility/FlashNotificationsController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThread(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOn(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareForCameraFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartFlashNotificationLongPreview(Lcom/android/server/accessibility/FlashNotificationsController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLongPreview(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationSequenceForAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartFlashNotificationShortPreview(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationShortPreview()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopFlashNotificationLongPreview(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLongPreview()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationSequenceForAlarm()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 234
    const-string v0, "FlashNotificationThread"

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->getStartedHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "FlashNotifController"

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->getStartedHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 8

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    const/4 v1, 0x1

    .line 170
    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    .line 171
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 175
    new-instance v2, Lcom/android/server/accessibility/FlashNotificationsController$1;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$1;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 184
    new-instance v2, Lcom/android/server/accessibility/FlashNotificationsController$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$2;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 204
    new-instance v2, Lcom/android/server/accessibility/FlashNotificationsController$3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$3;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 240
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 241
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    .line 242
    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    .line 243
    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    .line 245
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;

    invoke-direct {p2, p0, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 247
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    new-instance p3, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    const/4 v2, 0x4

    .line 252
    invoke-virtual {p1, p3, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 255
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 256
    const-string p3, "a11y:FlashNotificationsController"

    invoke-virtual {p2, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 259
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$4;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$4;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    if-eqz p1, :cond_92

    .line 281
    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_92
    return-void
.end method

.method public static getStartedHandler(Ljava/lang/String;)Landroid/os/Handler;
    .registers 2

    .line 286
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 288
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final doCameraFlashNotification(Z)V
    .registers 6

    .line 656
    const-string v0, "Failed to setTorchMode: "

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v2, "FlashNotifController"

    if-eqz v1, :cond_3c

    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-eqz v3, :cond_3c

    .line 658
    :try_start_c
    invoke-virtual {v1, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 659
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_11} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    goto :goto_16

    :catch_14
    move-exception p0

    goto :goto_29

    .line 663
    :goto_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 661
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void

    .line 666
    :cond_3c
    const-string p0, "Can not use camera flash notification, please check CameraManager!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doCameraFlashNotificationOff()V
    .registers 2

    .line 622
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    :cond_8
    return-void
.end method

.method public final doCameraFlashNotificationOn()V
    .registers 2

    .line 610
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    :cond_c
    return-void
.end method

.method public final doScreenFlashNotificationOff()V
    .registers 1

    .line 647
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->hideScreenNotificationOverlayView()V

    return-void
.end method

.method public final doScreenFlashNotificationOn(IZ)V
    .registers 5

    .line 634
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->isDozeMode()Z

    move-result v0

    .line 635
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    if-nez v1, :cond_a

    if-eqz p2, :cond_f

    :cond_a
    if-nez v0, :cond_f

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->showScreenNotificationOverlayView(I)V

    :cond_f
    return-void
.end method

.method public final fadeOutScreenNotificationOverlayViewMainThread()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    :cond_8
    return-void
.end method

.method public final fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V
    .registers 5

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    move v1, p0

    :goto_8
    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move p0, v0

    :goto_c
    const/4 p2, 0x2

    .line 454
    new-array p2, p2, [F

    const/4 v0, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p0, p2, v0

    .line 453
    const-string p0, "alpha"

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 455
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 p1, 0xc8

    .line 457
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final getCameraId()Ljava/lang/String;
    .registers 8

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 392
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 393
    iget-object v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 394
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 395
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_34

    if-eqz v4, :cond_34

    .line 397
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    return-object v3

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenFlashColorPreference()I
    .registers 4

    .line 493
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const v0, 0x66ffff00

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_flash_notification_color_global"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getScreenFlashColorPreference(I)I
    .registers 2

    .line 488
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference()I

    move-result p0

    return p0
.end method

.method public final getScreenFlashColorPreference(ILjava/lang/String;)I
    .registers 3

    .line 482
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference()I

    move-result p0

    return p0
.end method

.method public final getScreenNotificationOverlayView(I)Landroid/view/View;
    .registers 3

    .line 472
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x0

    .line 474
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method

.method public final hideScreenNotificationOverlayView()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xd2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final hideScreenNotificationOverlayViewMainThread()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    if-eqz v0, :cond_1b

    const/16 v1, 0x8

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    :cond_1b
    return-void
.end method

.method public final isDozeMode()Z
    .registers 2

    .line 606
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$startFlashNotificationSequence$0(Ljava/lang/String;)V
    .registers 2

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    return-void
.end method

.method public final prepareForCameraFlashNotification()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_25

    .line 381
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;
    :try_end_14
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 383
    const-string v1, "FlashNotifController"

    const-string v2, "CameraAccessException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :goto_1d
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_25
    return-void
.end method

.method public final removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 551
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 552
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v1, :cond_7

    .line 553
    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 554
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 555
    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->tryUnlinkToDeath()Z

    return-object v1

    .line 563
    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_3c

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 564
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->tryUnlinkToDeath()Z

    .line 565
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 8

    .line 341
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_flash_notifications"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 343
    iget-object v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_flash_notification"

    .line 343
    invoke-static {v4, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v3

    :goto_1f
    iput-boolean v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v0, :cond_33

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_flash_notification"

    .line 346
    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_33

    move v3, v2

    :cond_33
    iput-boolean v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    .line 355
    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    if-ne v0, v2, :cond_50

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    if-eqz v0, :cond_50

    .line 356
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda3;-><init>()V

    .line 357
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x12c

    .line 356
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 361
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final showScreenNotificationOverlayView(I)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>()V

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 406
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final showScreenNotificationOverlayViewMainThread(I)V
    .registers 8

    .line 422
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x138

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7df

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 431
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    .line 432
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 434
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 437
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    if-nez v2, :cond_38

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenNotificationOverlayView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 439
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    invoke-interface {p1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    :cond_38
    return-void
.end method

.method public final startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 8

    .line 499
    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    .line 500
    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object v1

    .line 503
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    if-nez v2, :cond_17

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1b

    .line 510
    :cond_17
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    if-eqz v2, :cond_1c

    :goto_1b
    return-void

    .line 515
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 516
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    .line 519
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 521
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_65

    const/4 v5, 0x1

    if-eq v0, v5, :cond_56

    const/4 v5, 0x3

    if-ne v0, v5, :cond_35

    goto :goto_56

    :cond_35
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4e

    .line 533
    :try_start_38
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_45

    .line 534
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 535
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_63

    .line 537
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    goto :goto_5e

    .line 540
    :cond_4e
    const-string p0, "FlashNotifController"

    const-string p1, "Unavailable flash notification type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 523
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_5b

    goto :goto_5e

    .line 530
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 542
    :goto_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_43

    .line 544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 542
    :goto_63
    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_43

    :try_start_64
    throw p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p0

    .line 544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    throw p0
.end method

.method public startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    .line 310
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 311
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference(ILjava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController-IA;)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return v1
.end method

.method public final startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .registers 4

    .line 600
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 601
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;Lcom/android/server/accessibility/FlashNotificationsController-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 602
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startFlashNotificationLongPreview(I)V
    .registers 6

    .line 321
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string/jumbo v3, "preview"

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z
    .registers 11

    .line 294
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference(I)I

    move-result v3

    new-instance v5, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v2, 0x2

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Lcom/android/server/accessibility/FlashNotificationsController-IA;)V

    .line 298
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->tryLinkToDeath()Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final startFlashNotificationSequenceForAlarm()V
    .registers 6

    .line 330
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    const/4 v1, 0x2

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference(I)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "alarm"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController-IA;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final startFlashNotificationShortPreview()V
    .registers 6

    .line 316
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    const/4 v1, 0x4

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference(I)I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "preview"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController-IA;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final startNextFlashNotificationLocked()V
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-void

    .line 591
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final stopFlashNotification(Ljava/lang/String;)V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v0

    .line 368
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    move-result-object p1

    .line 369
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v1, :cond_16

    if-ne p1, v1, :cond_16

    .line 370
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    .line 371
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 373
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

.method public final stopFlashNotificationLocked()V
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    if-eqz v0, :cond_c

    .line 577
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->cancel()V

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 580
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    return-void
.end method

.method public final stopFlashNotificationLongPreview()V
    .registers 2

    .line 326
    const-string/jumbo v0, "preview"

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    return-void
.end method

.method public stopFlashNotificationSequence(Ljava/lang/String;)Z
    .registers 2

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final stopFlashNotificationSequenceForAlarm()V
    .registers 2

    .line 335
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    return-void
.end method
