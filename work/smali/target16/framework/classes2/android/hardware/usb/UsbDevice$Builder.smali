.class public Landroid/hardware/usb/UsbDevice$Builder;
.super Ljava/lang/Object;
.source "UsbDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mClass:I

.field private final blacklist mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

.field private final blacklist mHasAudioCapture:Z

.field private final blacklist mHasAudioPlayback:Z

.field private final blacklist mHasMidi:Z

.field private final blacklist mHasVideoCapture:Z

.field private final blacklist mHasVideoPlayback:Z

.field private final blacklist mManufacturerName:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProductId:I

.field private final blacklist mProductName:Ljava/lang/String;

.field private final blacklist mProtocol:I

.field private final blacklist mSubclass:I

.field private final blacklist mVendorId:I

.field private final blacklist mVersion:Ljava/lang/String;

.field public final blacklist serialNumber:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Ljava/lang/String;ZZZZZ)V
    .registers 17

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/usb/UsbDevice$Builder;->mName:Ljava/lang/String;

    .line 447
    iput p2, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVendorId:I

    .line 448
    iput p3, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductId:I

    .line 449
    iput p4, p0, Landroid/hardware/usb/UsbDevice$Builder;->mClass:I

    .line 450
    iput p5, p0, Landroid/hardware/usb/UsbDevice$Builder;->mSubclass:I

    .line 451
    iput p6, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProtocol:I

    .line 452
    iput-object p7, p0, Landroid/hardware/usb/UsbDevice$Builder;->mManufacturerName:Ljava/lang/String;

    .line 453
    iput-object p8, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductName:Ljava/lang/String;

    .line 454
    invoke-static {p9}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVersion:Ljava/lang/String;

    .line 455
    iput-object p10, p0, Landroid/hardware/usb/UsbDevice$Builder;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    .line 456
    iput-object p11, p0, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    .line 457
    iput-boolean p12, p0, Landroid/hardware/usb/UsbDevice$Builder;->mHasAudioPlayback:Z

    .line 458
    iput-boolean p13, p0, Landroid/hardware/usb/UsbDevice$Builder;->mHasAudioCapture:Z

    .line 459
    iput-boolean p14, p0, Landroid/hardware/usb/UsbDevice$Builder;->mHasMidi:Z

    .line 460
    iput-boolean p15, p0, Landroid/hardware/usb/UsbDevice$Builder;->mHasVideoPlayback:Z

    .line 461
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/hardware/usb/UsbDevice$Builder;->mHasVideoCapture:Z

    .line 462
    return-void
.end method


# virtual methods
.method public blacklist build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;
    .registers 20

    .line 472
    move-object/from16 v0, p0

    new-instance v1, Landroid/hardware/usb/UsbDevice;

    move-object v2, v1

    iget-object v1, v0, Landroid/hardware/usb/UsbDevice$Builder;->mName:Ljava/lang/String;

    move-object v3, v2

    iget v2, v0, Landroid/hardware/usb/UsbDevice$Builder;->mVendorId:I

    move-object v4, v3

    iget v3, v0, Landroid/hardware/usb/UsbDevice$Builder;->mProductId:I

    move-object v5, v4

    iget v4, v0, Landroid/hardware/usb/UsbDevice$Builder;->mClass:I

    move-object v6, v5

    iget v5, v0, Landroid/hardware/usb/UsbDevice$Builder;->mSubclass:I

    move-object v7, v6

    iget v6, v0, Landroid/hardware/usb/UsbDevice$Builder;->mProtocol:I

    move-object v8, v7

    iget-object v7, v0, Landroid/hardware/usb/UsbDevice$Builder;->mManufacturerName:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Landroid/hardware/usb/UsbDevice$Builder;->mProductName:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Landroid/hardware/usb/UsbDevice$Builder;->mVersion:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Landroid/hardware/usb/UsbDevice$Builder;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    iget-boolean v12, v0, Landroid/hardware/usb/UsbDevice$Builder;->mHasAudioPlayback:Z

    iget-boolean v13, v0, Landroid/hardware/usb/UsbDevice$Builder;->mHasAudioCapture:Z

    iget-boolean v14, v0, Landroid/hardware/usb/UsbDevice$Builder;->mHasMidi:Z

    iget-boolean v15, v0, Landroid/hardware/usb/UsbDevice$Builder;->mHasVideoPlayback:Z

    iget-boolean v0, v0, Landroid/hardware/usb/UsbDevice$Builder;->mHasVideoCapture:Z

    const/16 v17, 0x0

    move/from16 v16, v0

    move-object v0, v11

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZLandroid/hardware/usb/UsbDevice-IA;)V

    return-object v0
.end method
