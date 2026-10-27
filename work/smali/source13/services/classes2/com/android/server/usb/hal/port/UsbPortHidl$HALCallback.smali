.class Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;
.super Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.source "UsbPortHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/UsbPortHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HALCallback"
.end annotation


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "portManager"    # Lcom/android/server/usb/UsbPortManager;
    .param p3, "usbPortHidl"    # Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 396
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 398
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 399
    iput-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 400
    return-void
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .registers 25
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 404
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_0/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 405
    return-void

    .line 408
    :cond_b
    if-eqz p2, :cond_17

    .line 409
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 410
    return-void

    .line 413
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 416
    .local v3, "current":Landroid/hardware/usb/V1_0/PortStatus;
    new-instance v21, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v4, v21

    iget-object v5, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v7, 0x0

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    .line 425
    .local v4, "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/4 v5, 0x4

    iget-object v6, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 428
    .end local v3    # "current":Landroid/hardware/usb/V1_0/PortStatus;
    .end local v4    # "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    goto :goto_20

    .line 430
    :cond_71
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 431
    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .registers 27
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .line 436
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_1/PortStatus_1_1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 437
    return-void

    .line 440
    :cond_b
    if-eqz p2, :cond_17

    .line 441
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 442
    return-void

    .line 445
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 448
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_82

    .line 449
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 450
    .local v5, "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    new-instance v23, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v6, v23

    iget-object v7, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v9, 0x0

    iget v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v11, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v11, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v12, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v12, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v13, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v13, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v14, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v15, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v15, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    .line 459
    .local v6, "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const/4 v7, 0x4

    iget-object v8, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClientCallback V1_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v10, v10, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 448
    .end local v5    # "current":Landroid/hardware/usb/V1_1/PortStatus_1_1;
    .end local v6    # "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_82
    move-object/from16 v4, p1

    .line 463
    .end local v3    # "i":I
    iget-object v3, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 464
    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .registers 28
    .param p2, "retval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_2/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .line 468
    .local p1, "currentPortStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/V1_2/PortStatus;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 469
    return-void

    .line 472
    :cond_b
    if-eqz p2, :cond_17

    .line 473
    const/4 v1, 0x6

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "port status enquiry failed"

    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 474
    return-void

    .line 477
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/hal/port/RawPortInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 480
    .local v2, "numStatus":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_a4

    .line 481
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_2/PortStatus;

    .line 482
    .local v5, "current":Landroid/hardware/usb/V1_2/PortStatus;
    new-instance v23, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v6, v23

    iget-object v7, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v7, v7, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget-object v8, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v8, v8, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget-object v10, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget v10, v10, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-object v11, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v11, v11, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v11, v11, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget-object v12, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v12, v12, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v12, v12, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-object v13, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v13, v13, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v13, v13, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget-object v14, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v14, v14, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v14, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-object v15, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v15, v15, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-boolean v15, v15, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move/from16 v24, v2

    .end local v2    # "numStatus":I
    .local v24, "numStatus":I
    iget-boolean v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v16, v2

    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    move/from16 v17, v2

    iget-boolean v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v18, v2

    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    move/from16 v19, v2

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    move-object/from16 v2, v23

    .line 497
    .local v2, "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    const/4 v6, 0x4

    iget-object v7, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientCallback V1_2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v9, v9, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v9, v9, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 480
    .end local v2    # "temp":Lcom/android/server/usb/hal/port/RawPortInfo;
    .end local v5    # "current":Landroid/hardware/usb/V1_2/PortStatus;
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v24

    goto/16 :goto_21

    .end local v24    # "numStatus":I
    .local v2, "numStatus":I
    :cond_a4
    move/from16 v24, v2

    .line 501
    .end local v2    # "numStatus":I
    .end local v3    # "i":I
    .restart local v24    # "numStatus":I
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 502
    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .registers 8
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "role"    # Landroid/hardware/usb/V1_0/PortRole;
    .param p3, "retval"    # I

    .line 505
    if-nez p3, :cond_1c

    .line 506
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role switch successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_35

    .line 508
    :cond_1c
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role switch failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 510
    :goto_35
    return-void
.end method
