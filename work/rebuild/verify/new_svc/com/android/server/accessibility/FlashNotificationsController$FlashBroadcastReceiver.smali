.class Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlashNotificationsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 855
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_99

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-eq p1, p2, :cond_1a

    goto/16 :goto_d2

    .line 860
    :cond_1a
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;

    move-result-object p2

    .line 861
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "camera_flash_notification"

    const/4 v3, -0x2

    .line 860
    invoke-static {p2, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    invoke-static {p1, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    .line 863
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 864
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mprepareForCameraFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;)V

    goto :goto_57

    .line 866
    :cond_40
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 867
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmTorchCallback(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 871
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_76

    .line 873
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmAudioPlaybackCallback(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/media/AudioManager$AudioPlaybackCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCallbackHandler(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 877
    :cond_76
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/hardware/camera2/CameraManager;)V

    .line 878
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCallbackHandler(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void

    .line 881
    :cond_99
    const-string p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 883
    const-string p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 885
    const-string v2, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_b9

    .line 888
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstartFlashNotificationLongPreview(Lcom/android/server/accessibility/FlashNotificationsController;I)V

    return-void

    :cond_b9
    if-nez p2, :cond_d2

    .line 890
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstartFlashNotificationShortPreview(Lcom/android/server/accessibility/FlashNotificationsController;)V

    return-void

    .line 892
    :cond_c1
    const-string p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 894
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstopFlashNotificationLongPreview(Lcom/android/server/accessibility/FlashNotificationsController;)V

    :cond_d2
    :goto_d2
    return-void
.end method
