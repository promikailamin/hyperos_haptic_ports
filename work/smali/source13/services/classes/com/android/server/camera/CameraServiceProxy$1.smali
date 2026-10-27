.class Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 340
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 346
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    :cond_f
    goto :goto_55

    :sswitch_10
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    goto :goto_55

    :sswitch_1a
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    goto :goto_55

    :sswitch_24
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x2

    goto :goto_55

    :sswitch_2e
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x3

    goto :goto_55

    :sswitch_38
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x6

    goto :goto_55

    :sswitch_42
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    goto :goto_55

    :sswitch_4c
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x5

    :goto_55
    packed-switch v1, :pswitch_data_b8

    goto :goto_99

    .line 360
    :pswitch_59
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 361
    :try_start_60
    const-string v2, "device"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 362
    .local v2, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v2, :cond_75

    .line 363
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 363
    invoke-static {v3, v2, v4}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z

    .line 366
    .end local v2    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_75
    monitor-exit v1

    .line 367
    goto :goto_99

    .line 366
    :catchall_77
    move-exception v2

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_77

    throw v2

    .line 352
    :pswitch_7a
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 354
    :try_start_81
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_8b

    monitor-exit v1

    return-void

    .line 355
    :cond_8b
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 356
    monitor-exit v1

    .line 357
    goto :goto_99

    .line 356
    :catchall_96
    move-exception v2

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_81 .. :try_end_98} :catchall_96

    throw v2

    .line 372
    :goto_99
    return-void

    :sswitch_data_9a
    .sparse-switch
        -0x7e02a835 -> :sswitch_4c
        -0x7ad942ef -> :sswitch_42
        -0x5fdc9a67 -> :sswitch_38
        -0x16fbb1bb -> :sswitch_2e
        -0xc02da2e -> :sswitch_24
        0x3eac4465 -> :sswitch_1a
        0x42dd01f1 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method
