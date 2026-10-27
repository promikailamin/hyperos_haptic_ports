.class public Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataAdvancedProtectionHook.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;


# direct methods
.method public static synthetic $r8$lambda$aAI_fs7gEFSamM2E7aY-RlznWgk(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->lambda$updateDelayedDisableTask$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oZWZMf1L9Z0QGQUsSlUNk6csGnk(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->lambda$updateDelayedNotificationTask$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final determineUsbChargeStateAndSendNotification(Landroid/hardware/usb/UsbPortStatus;)V
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mclearExistingNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 476
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 478
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDataRequiredForHighPowerCharge(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 479
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcreateAndSendNotificationIfDeviceIsLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;I)V

    :cond_1a
    return-void

    .line 483
    :cond_1b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->isPdCompliant()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDataRequiredForHighPowerCharge(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 484
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcreateAndSendNotificationIfDeviceIsLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;I)V

    return-void

    .line 487
    :cond_30
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0, p1, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcreateAndSendNotificationIfDeviceIsLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;I)V

    return-void
.end method

.method public final dumpUsbDevices()V
    .registers 7

    .line 494
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 495
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AdvancedProtectionUsb"

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 498
    :cond_39
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 500
    array-length v0, p0

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_66

    aget-object v3, p0, v1

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_66
    return-void
.end method

.method public final getAtomUsbErrorType(Ljava/lang/String;)I
    .registers 6

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p0, :sswitch_data_44

    goto :goto_3a

    :sswitch_f
    const-string p0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_3a

    :cond_18
    move v3, v0

    goto :goto_3a

    :sswitch_1a
    const-string p0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_3a

    :cond_23
    move v3, v1

    goto :goto_3a

    :sswitch_25
    const-string p0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v3, 0x1

    goto :goto_3a

    :sswitch_30
    const-string p0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    packed-switch v3, :pswitch_data_56

    return v2

    :pswitch_3e
    const/4 p0, 0x5

    return p0

    :pswitch_40
    const/4 p0, 0x4

    return p0

    :pswitch_42
    return v0

    :pswitch_43
    return v1

    :sswitch_data_44
    .sparse-switch
        -0x7e02a835 -> :sswitch_30
        -0x5fdc9a67 -> :sswitch_25
        0x4189e133 -> :sswitch_1a
        0x5fafef01 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_40
        :pswitch_3e
    .end packed-switch
.end method

.method public final synthetic lambda$updateDelayedDisableTask$1()V
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 462
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)Z

    :cond_12
    return-void
.end method

.method public final synthetic lambda$updateDelayedNotificationTask$0()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmLastUsbPortStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->determineUsbChargeStateAndSendNotification(Landroid/hardware/usb/UsbPortStatus;)V

    return-void
.end method

.method public final logUnexpectedUsbEvent(Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->getAtomUsbErrorType(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x41e

    const/4 v1, 0x0

    .line 409
    invoke-static {p1, v1, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 325
    const-string p1, "AdvancedProtectionUsb"

    :try_start_2
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 326
    const-string/jumbo v0, "portStatus"

    const-class v1, Landroid/hardware/usb/UsbPortStatus;

    .line 327
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    if-nez p2, :cond_24

    .line 332
    const-string p0, "UsbPort Changed: USB Data protection failed to retrieve port status"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_21
    move-exception p0

    goto/16 :goto_eb

    .line 338
    :cond_24
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fputmLastUsbPortStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;)V

    .line 340
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_30

    .line 341
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->dumpUsbDevices()V

    .line 344
    :cond_30
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 345
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->updateDelayedDisableTask(Landroid/hardware/usb/UsbPortStatus;)V

    .line 348
    :cond_3f
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_50

    .line 349
    iget-object p2, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcleanUpNotificationHandlerTasks(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 350
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mclearExistingNotification(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    return-void

    .line 359
    :cond_50
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    .line 361
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_67

    .line 363
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbPortPowerBrickConnectionCheckTimeoutMillis(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)J

    move-result-wide v0

    goto :goto_68

    :cond_67
    move-wide v0, v2

    .line 366
    :goto_68
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isPdCompliant()Z

    move-result v4

    if-nez v4, :cond_75

    .line 367
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v4}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmUsbPortPdComplianceCheckTimeoutMillis(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)J

    move-result-wide v4

    goto :goto_76

    :cond_75
    move-wide v4, v2

    :goto_76
    add-long/2addr v0, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_84

    .line 371
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcleanUpNotificationHandlerTasks(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 372
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->determineUsbChargeStateAndSendNotification(Landroid/hardware/usb/UsbPortStatus;)V

    return-void

    .line 374
    :cond_84
    invoke-virtual {p0, v0, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->updateDelayedNotificationTask(J)V

    return-void

    .line 377
    :cond_88
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcleanUpNotificationHandlerTasks(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)V

    .line 378
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0, p2, v1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$mcreateAndSendNotificationIfDeviceIsLocked(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;I)V

    return-void

    .line 386
    :cond_93
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 387
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$msetUsbDataSignalIfPossible(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Z)Z

    return-void

    .line 388
    :cond_a6
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 394
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmApmRequestedUsbDataStatus(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected USB event when USB is disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->logUnexpectedUsbEvent(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->dumpUsbDevices()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ea} :catch_21

    :cond_ea
    return-void

    .line 404
    :goto_eb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "USB Data protection failed with: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateDelayedDisableTask(Landroid/hardware/usb/UsbPortStatus;)V
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0, p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$musbPortIsConnected(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;Landroid/hardware/usb/UsbPortStatus;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 456
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 457
    :cond_13
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result p1

    if-nez p1, :cond_39

    .line 458
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedDisableHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V

    const-wide/16 v1, 0x3a98

    .line 459
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_39

    .line 467
    const-string p0, "AdvancedProtectionUsb"

    const-string p1, "Delayed Disable Task: Failed to post task"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method public final updateDelayedNotificationTask(J)V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedNotificationHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2a

    .line 440
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;->this$0:Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;->-$$Nest$fgetmDelayedNotificationHandler(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/advancedprotection/features/UsbDataAdvancedProtectionHook$1;)V

    .line 441
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 448
    const-string p0, "AdvancedProtectionUsb"

    const-string p1, "Delayed Disable Task: Failed to post task"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method
