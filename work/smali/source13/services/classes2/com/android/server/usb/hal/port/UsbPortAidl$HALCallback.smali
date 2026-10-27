.class Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
.super Landroid/hardware/usb/IUsbCallback$Stub;
.source "UsbPortAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/UsbPortAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HALCallback"
.end annotation


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;


# direct methods
.method constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortAidl;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "portManager"    # Lcom/android/server/usb/UsbPortManager;
    .param p3, "usbPortAidl"    # Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 448
    invoke-direct {p0}, Landroid/hardware/usb/IUsbCallback$Stub;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 450
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 451
    iput-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 452
    return-void
.end method

.method private toContaminantProtectionStatus(B)I
    .registers 7
    .param p1, "aidlContaminantProtection"    # B

    .line 495
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_28

    .line 507
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized aidlContaminantProtection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 510
    return v0

    .line 505
    :pswitch_1e
    const/16 v0, 0x8

    return v0

    .line 503
    :pswitch_21
    const/4 v0, 0x4

    return v0

    .line 501
    :pswitch_23
    const/4 v0, 0x2

    return v0

    .line 499
    :pswitch_25
    const/4 v0, 0x1

    return v0

    .line 497
    :pswitch_27
    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method private toPortMode(B)I
    .registers 7
    .param p1, "aidlPortMode"    # B

    .line 459
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    .line 473
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized aidlPortMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 475
    return v0

    .line 471
    :pswitch_1e
    const/16 v0, 0x8

    return v0

    .line 469
    :pswitch_21
    const/4 v0, 0x4

    return v0

    .line 467
    :pswitch_23
    const/4 v0, 0x3

    return v0

    .line 465
    :pswitch_25
    const/4 v0, 0x2

    return v0

    .line 463
    :pswitch_27
    const/4 v0, 0x1

    return v0

    .line 461
    :pswitch_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method private toSupportedContaminantProtectionModes([B)I
    .registers 7
    .param p1, "aidlModes"    # [B

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "supportedContaminantProtectionModes":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget-byte v3, p1, v2

    .line 518
    .local v3, "aidlMode":B
    invoke-direct {p0, v3}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v4

    or-int/2addr v0, v4

    .line 517
    .end local v3    # "aidlMode":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 521
    :cond_f
    return v0
.end method

.method private toSupportedModes([B)I
    .registers 7
    .param p1, "aidlPortModes"    # [B

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "supportedModes":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget-byte v3, p1, v2

    .line 483
    .local v3, "aidlPortMode":B
    invoke-direct {p0, v3}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v4

    or-int/2addr v0, v4

    .line 482
    .end local v3    # "aidlPortMode":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 486
    :cond_f
    return v0
.end method

.method private toUsbDataStatusInt([B)I
    .registers 6
    .param p1, "usbDataStatusHal"    # [B

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "usbDataStatus":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 527
    aget-byte v2, p1, v1

    packed-switch v2, :pswitch_data_3c

    .line 547
    or-int/lit8 v0, v0, 0x0

    goto :goto_1f

    .line 544
    :pswitch_d
    or-int/lit8 v0, v0, 0x20

    .line 545
    goto :goto_1f

    .line 541
    :pswitch_10
    or-int/lit8 v0, v0, 0x10

    .line 542
    goto :goto_1f

    .line 538
    :pswitch_13
    or-int/lit8 v0, v0, 0x8

    .line 539
    goto :goto_1f

    .line 535
    :pswitch_16
    or-int/lit8 v0, v0, 0x4

    .line 536
    goto :goto_1f

    .line 532
    :pswitch_19
    or-int/lit8 v0, v0, 0x2

    .line 533
    goto :goto_1f

    .line 529
    :pswitch_1c
    or-int/lit8 v0, v0, 0x1

    .line 530
    nop

    .line 526
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 550
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIDL UsbDataStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 551
    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 731
    const-string v0, "9762531142d72e03bb4228209846c135f276d40e"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V
    .registers 10
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "retval"    # I
    .param p4, "operationID"    # J

    .line 646
    if-nez p3, :cond_31

    .line 647
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContaminantEnabledStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_59

    .line 651
    :cond_31
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notifyContaminantEnabledStatus: opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 655
    :goto_59
    return-void
.end method

.method public notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V
    .registers 10
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "retval"    # I
    .param p4, "operationID"    # J

    .line 623
    if-nez p3, :cond_31

    .line 624
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyEnableUsbDataStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_59

    .line 628
    :cond_31
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notifyEnableUsbDataStatus: opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 633
    :goto_59
    :try_start_59
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p3, :cond_67

    .line 634
    const/4 v1, 0x0

    goto :goto_68

    .line 635
    :cond_67
    const/4 v1, 0x1

    .line 633
    :goto_68
    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6b} :catch_6c

    .line 640
    goto :goto_75

    .line 636
    :catch_6c
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "notifyEnableUsbDataStatus: Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_75
    return-void
.end method

.method public notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "operationID"    # J

    .line 685
    if-nez p2, :cond_26

    .line 686
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_4e

    .line 689
    :cond_26
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notifyEnableUsbDataWhileDockedStatus: opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 694
    :goto_4e
    :try_start_4e
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 695
    .local v0, "callback":Landroid/hardware/usb/IUsbOperationInternal;
    if-eqz v0, :cond_6c

    .line 696
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p2, :cond_68

    .line 697
    const/4 v2, 0x0

    goto :goto_69

    .line 698
    :cond_68
    const/4 v2, 0x1

    .line 696
    :goto_69
    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6c} :catch_6d

    .line 704
    .end local v0    # "callback":Landroid/hardware/usb/IUsbOperationInternal;
    :cond_6c
    goto :goto_76

    .line 700
    :catch_6d
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "notifyEnableUsbDataWhileDockedStatus: Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 705
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_76
    return-void
.end method

.method public notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V
    .registers 10
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "limit"    # Z
    .param p3, "retval"    # I
    .param p4, "operationID"    # J

    .line 660
    if-nez p3, :cond_26

    .line 661
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_4e

    .line 664
    :cond_26
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notifyLimitPowerTransferStatus: opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 669
    :goto_4e
    :try_start_4e
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 670
    .local v0, "callback":Landroid/hardware/usb/IUsbOperationInternal;
    if-eqz v0, :cond_6c

    .line 671
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p3, :cond_68

    .line 672
    const/4 v2, 0x0

    goto :goto_69

    .line 673
    :cond_68
    const/4 v2, 0x1

    .line 671
    :goto_69
    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6c} :catch_6d

    .line 679
    .end local v0    # "callback":Landroid/hardware/usb/IUsbOperationInternal;
    :cond_6c
    goto :goto_75

    .line 675
    :catch_6d
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_75
    return-void
.end method

.method public notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V
    .registers 27
    .param p1, "currentPortStatus"    # [Landroid/hardware/usb/PortStatus;
    .param p2, "retval"    # I

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-static {v2}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortAidl;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 558
    return-void

    .line 561
    :cond_d
    if-eqz p2, :cond_19

    .line 562
    const/4 v2, 0x6

    iget-object v3, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "port status enquiry failed"

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 563
    return-void

    .line 566
    :cond_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v2, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    array-length v3, v1

    .line 569
    .local v3, "numStatus":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v3, :cond_8e

    .line 570
    aget-object v5, v1, v4

    .line 571
    .local v5, "current":Landroid/hardware/usb/PortStatus;
    new-instance v23, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v6, v23

    iget-object v7, v5, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    iget-object v8, v5, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 572
    invoke-direct {v0, v8}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toSupportedModes([B)I

    move-result v8

    iget-object v9, v5, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 573
    invoke-direct {v0, v9}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toSupportedContaminantProtectionModes([B)I

    move-result v9

    iget-byte v10, v5, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 575
    invoke-direct {v0, v10}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v10

    iget-boolean v11, v5, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    iget-byte v12, v5, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    iget-boolean v13, v5, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    iget-byte v14, v5, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    iget-boolean v15, v5, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v16, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 582
    invoke-direct {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v17

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v18, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    move/from16 v19, v1

    iget-object v1, v5, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 585
    invoke-direct {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toUsbDataStatusInt([B)I

    move-result v20

    iget-boolean v1, v5, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    move/from16 v21, v1

    iget-byte v1, v5, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    move/from16 v22, v1

    invoke-direct/range {v6 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    move-object/from16 v1, v23

    .line 588
    .local v1, "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    const/4 v6, 0x4

    iget-object v7, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientCallback AIDL V1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 569
    .end local v1    # "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    .end local v5    # "current":Landroid/hardware/usb/PortStatus;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto :goto_20

    .line 592
    .end local v4    # "i":I
    :cond_8e
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 593
    return-void
.end method

.method public notifyQueryPortStatus(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "operationID"    # J

    .line 611
    const-string v0, ": opID:"

    if-nez p2, :cond_26

    .line 612
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " successful"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_4b

    .line 615
    :cond_26
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed. err:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 618
    :goto_4b
    return-void
.end method

.method public notifyResetUsbPortStatus(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "retval"    # I
    .param p3, "operationID"    # J

    .line 710
    if-nez p2, :cond_27

    .line 711
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyResetUsbPortStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_4f

    .line 714
    :cond_27
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notifyEnableUsbDataStatus: opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 719
    :goto_4f
    :try_start_4f
    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortAidl;->-$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez p2, :cond_5d

    .line 720
    const/4 v1, 0x0

    goto :goto_5e

    .line 721
    :cond_5d
    const/4 v1, 0x1

    .line 719
    :goto_5e
    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_61} :catch_62

    .line 726
    goto :goto_6b

    .line 722
    :catch_62
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "notifyResetUsbPortStatus: Failed to call onOperationComplete"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6b
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V
    .registers 10
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/PortRole;
    .param p3, "retval"    # I
    .param p4, "operationID"    # J

    .line 598
    if-nez p3, :cond_20

    .line 599
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role switch successful. opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_48

    .line 603
    :cond_20
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role switch failed. err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 607
    :goto_48
    return-void
.end method
