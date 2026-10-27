.class public Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_63

    .line 600
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_aa

    goto :goto_60

    :sswitch_14
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_60

    :cond_1d
    const/4 v1, 0x6

    goto :goto_60

    :sswitch_1f
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_60

    :cond_28
    const/4 v1, 0x5

    goto :goto_60

    :sswitch_2a
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_60

    :cond_33
    const/4 v1, 0x4

    goto :goto_60

    :sswitch_35
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_60

    :cond_3e
    const/4 v1, 0x3

    goto :goto_60

    :sswitch_40
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_60

    :cond_49
    const/4 v1, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_60

    :cond_54
    const/4 v1, 0x1

    goto :goto_60

    :sswitch_56
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    packed-switch v1, :pswitch_data_c8

    :goto_63
    return-void

    .line 606
    :pswitch_64
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 608
    :try_start_6b
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_77

    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    goto :goto_82

    .line 609
    :cond_77
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 610
    monitor-exit v0

    return-void

    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_75

    throw p0

    .line 614
    :pswitch_84
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 615
    :try_start_8b
    const-string v1, "device"

    const-class v2, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_a5

    .line 617
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 618
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 617
    invoke-static {p0, p2, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z

    goto :goto_a5

    :catchall_a3
    move-exception p0

    goto :goto_a7

    .line 620
    :cond_a5
    :goto_a5
    monitor-exit v0

    return-void

    :goto_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_a3

    throw p0

    nop

    :sswitch_data_aa
    .sparse-switch
        -0x7e02a835 -> :sswitch_56
        -0x7ad942ef -> :sswitch_4b
        -0x5fdc9a67 -> :sswitch_40
        -0x16fbb1bb -> :sswitch_35
        -0xc02da2e -> :sswitch_2a
        0x3eac4465 -> :sswitch_1f
        0x42dd01f1 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_84
        :pswitch_64
        :pswitch_84
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method
