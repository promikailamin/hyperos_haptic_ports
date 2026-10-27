.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$ViewBehavior;,
        Landroid/view/InputDevice$MotionRange;,
        Landroid/view/InputDevice$Builder;,
        Landroid/view/InputDevice$Source;,
        Landroid/view/InputDevice$InputSourceClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final whitelist KEYBOARD_TYPE_NONE:I = 0x0

.field public static final whitelist KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field private static final greylist-max-o MAX_RANGES:I = 0x3e8

.field public static final whitelist MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_ANY:I = -0x100

.field public static final whitelist SOURCE_BLUETOOTH_STYLUS:I = 0xc002

.field public static final whitelist SOURCE_CLASS_BUTTON:I = 0x1

.field public static final whitelist SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final whitelist SOURCE_CLASS_MASK:I = 0xff

.field public static final whitelist SOURCE_CLASS_NONE:I = 0x0

.field public static final whitelist SOURCE_CLASS_POINTER:I = 0x2

.field public static final whitelist SOURCE_CLASS_POSITION:I = 0x8

.field public static final whitelist SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final whitelist SOURCE_DPAD:I = 0x201

.field public static final whitelist SOURCE_GAMEPAD:I = 0x401

.field public static final whitelist SOURCE_HDMI:I = 0x2000001

.field public static final whitelist SOURCE_JOYSTICK:I = 0x1000010

.field public static final whitelist SOURCE_KEYBOARD:I = 0x101

.field public static final whitelist SOURCE_MOUSE:I = 0x2002

.field public static final whitelist SOURCE_MOUSE_RELATIVE:I = 0x20004

.field public static final whitelist SOURCE_ROTARY_ENCODER:I = 0x400000

.field public static final whitelist SOURCE_SENSOR:I = 0x4000000

.field public static final whitelist SOURCE_STYLUS:I = 0x4002

.field public static final whitelist SOURCE_TOUCHPAD:I = 0x100008

.field public static final whitelist SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final whitelist SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final whitelist SOURCE_TRACKBALL:I = 0x10004

.field public static final whitelist SOURCE_UNKNOWN:I = 0x0

.field private static final blacklist VIBRATOR_ID_ALL:I = -0x1


# instance fields
.field private final blacklist mAssociatedDisplayId:I

.field private final greylist-max-o mControllerNumber:I

.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final blacklist mDeviceBus:I

.field private final blacklist mEnabled:Z

.field private final greylist-max-o mGeneration:I

.field private final blacklist mHasBattery:Z

.field private final greylist-max-o mHasMicrophone:Z

.field private final blacklist mHasSensor:Z

.field private final greylist-max-o mHasVibrator:Z

.field private final blacklist mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private final greylist-max-p mIsExternal:Z

.field private final blacklist mIsVirtualDevice:Z

.field private final greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final blacklist mKeyboardLanguageTag:Ljava/lang/String;

.field private final blacklist mKeyboardLayoutType:Ljava/lang/String;

.field private final greylist-max-o mKeyboardType:I

.field private blacklist mLightsManager:Landroid/hardware/lights/LightsManager;

.field private final greylist-max-o mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mProductId:I

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;

.field private final greylist-max-o mSources:I

.field private final greylist-max-o mVendorId:I

.field private greylist-max-o mVibrator:Landroid/os/Vibrator;

.field private blacklist mVibratorManager:Landroid/os/VibratorManager;

.field private final blacklist mViewBehavior:Landroid/view/InputDevice$ViewBehavior;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddMotionRange(Landroid/view/InputDevice;IIFFFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetShouldSmoothScroll(Landroid/view/InputDevice;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InputDevice;->setShouldSmoothScroll(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 488
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/lang/String;IIILjava/lang/String;ZZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZIIIZ)V
    .registers 25

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/view/InputDevice$ViewBehavior;

    invoke-direct {v0, p0}, Landroid/view/InputDevice$ViewBehavior;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    .line 507
    iput p1, p0, Landroid/view/InputDevice;->mId:I

    .line 508
    iput p2, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 509
    iput p3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 510
    iput-object p4, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 511
    iput p5, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 512
    iput p6, p0, Landroid/view/InputDevice;->mProductId:I

    .line 513
    iput p7, p0, Landroid/view/InputDevice;->mDeviceBus:I

    .line 514
    iput-object p8, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 515
    iput-boolean p9, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 516
    iput-boolean p10, p0, Landroid/view/InputDevice;->mIsVirtualDevice:Z

    .line 517
    iput p11, p0, Landroid/view/InputDevice;->mSources:I

    .line 518
    iput p12, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 519
    iput-object p13, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 520
    invoke-static {p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4c

    .line 522
    nop

    .line 523
    invoke-static {p14}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 525
    const-string p3, "und"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_48

    goto :goto_49

    :cond_48
    move-object p2, p1

    :goto_49
    iput-object p2, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 526
    goto :goto_4e

    .line 527
    :cond_4c
    iput-object p2, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 529
    :goto_4e
    move-object/from16 p1, p15

    iput-object p1, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    .line 530
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 531
    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 532
    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 533
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 534
    new-instance p1, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p1, p8, p5, p6}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 535
    new-instance p1, Landroid/hardware/input/HostUsiVersion;

    move/from16 p2, p20

    move/from16 p3, p21

    invoke-direct {p1, p2, p3}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    iput-object p1, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 536
    move/from16 p1, p22

    iput p1, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    .line 537
    move/from16 p1, p23

    iput-boolean p1, p0, Landroid/view/InputDevice;->mEnabled:Z

    .line 538
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILjava/lang/String;IIILjava/lang/String;ZZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZIIIZLandroid/view/InputDevice-IA;)V
    .registers 25

    invoke-direct/range {p0 .. p23}, Landroid/view/InputDevice;-><init>(IIILjava/lang/String;IIILjava/lang/String;ZZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZIIIZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 13

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/view/InputDevice$ViewBehavior;

    invoke-direct {v0, p0}, Landroid/view/InputDevice$ViewBehavior;-><init>(Landroid/view/InputDevice;)V

    iput-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    .line 541
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mProductId:I

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    move v0, v1

    goto :goto_56

    :cond_55
    move v0, v2

    :goto_56
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    move v0, v1

    goto :goto_61

    :cond_60
    move v0, v2

    :goto_61
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsVirtualDevice:Z

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    move v0, v1

    goto :goto_84

    :cond_83
    move v0, v2

    :goto_84
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    goto :goto_8f

    :cond_8e
    move v0, v2

    :goto_8f
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_99

    move v0, v1

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4

    move v0, v1

    goto :goto_a5

    :cond_a4
    move v0, v2

    :goto_a5
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 560
    sget-object v0, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/HostUsiVersion;

    iput-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_bf

    :cond_be
    move v1, v2

    :goto_bf
    iput-boolean v1, p0, Landroid/view/InputDevice;->mEnabled:Z

    .line 563
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v1, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    iget v4, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-direct {v0, v1, v3, v4}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_d7

    .line 567
    move v0, v1

    .line 570
    :cond_d7
    nop

    :goto_d8
    if-ge v2, v0, :cond_fd

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 571
    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 575
    :cond_fd
    move-object v3, p0

    iget-object v0, v3, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {v0, p1}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V

    .line 576
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/InputDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-r addMotionRange(IIFFFFF)V
    .registers 18

    .line 1219
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/InputDevice$MotionRange;

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    return-void
.end method

.method private greylist-max-o appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 5

    .line 1732
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_d

    .line 1733
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    :cond_d
    return-void
.end method

.method public static whitelist getDevice(I)Landroid/view/InputDevice;
    .registers 2

    .line 815
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDeviceIds()[I
    .registers 1

    .line 823
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist setShouldSmoothScroll(Z)V
    .registers 3

    .line 1224
    iget-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-static {v0, p1}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V

    .line 1225
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1655
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disable()V
    .registers 3

    .line 1375
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->disableInputDevice(I)V

    .line 1376
    return-void
.end method

.method public blacklist enable()V
    .registers 3

    .line 1364
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->enableInputDevice(I)V

    .line 1365
    return-void
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2

    .line 1421
    iget v0, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    return v0
.end method

.method public whitelist getBatteryState()Landroid/hardware/BatteryState;
    .registers 4

    .line 1303
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    iget-boolean v2, p0, Landroid/view/InputDevice;->mHasBattery:Z

    .line 1304
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;

    move-result-object v0

    .line 1303
    return-object v0
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .registers 3

    .line 1241
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    .line 1242
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    return-object v0
.end method

.method public whitelist getControllerNumber()I
    .registers 2

    .line 859
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public whitelist getDescriptor()Ljava/lang/String;
    .registers 2

    .line 954
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceBus()I
    .registers 2

    .line 928
    iget v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    return v0
.end method

.method public greylist-max-o getGeneration()I
    .registers 2

    .line 886
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public blacklist getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .registers 2

    .line 1415
    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0}, Landroid/hardware/input/HostUsiVersion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 839
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public greylist-max-o getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;
    .registers 2

    .line 873
    iget-object v0, p0, Landroid/view/InputDevice;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-object v0
.end method

.method public whitelist getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .line 1053
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public whitelist getKeyCodeForKeyLocation(I)I
    .registers 4

    .line 1135
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    .line 1136
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getKeyCodeForKeyLocation(II)I

    move-result p1

    .line 1135
    return p1
.end method

.method public blacklist getKeyboardLanguageTag()Ljava/lang/String;
    .registers 2

    .line 1066
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyboardLayoutType()Ljava/lang/String;
    .registers 2

    .line 1077
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKeyboardType()I
    .registers 2

    .line 1045
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public whitelist getLightsManager()Landroid/hardware/lights/LightsManager;
    .registers 4

    .line 1317
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1318
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    if-nez v1, :cond_13

    .line 1319
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1320
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 1322
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1323
    iget-object v0, p0, Landroid/view/InputDevice;->mLightsManager:Landroid/hardware/lights/LightsManager;

    return-object v0

    .line 1322
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .registers 6

    .line 1154
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1155
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1156
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1157
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 1158
    return-object v2

    .line 1155
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1161
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .registers 7

    .line 1179
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1180
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 1181
    iget-object v2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 1182
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_1e

    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_1e

    .line 1183
    return-object v2

    .line 1180
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1186
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getMotionRanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 1017
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .registers 2

    .line 913
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public whitelist getSensorManager()Landroid/hardware/SensorManager;
    .registers 4

    .line 1339
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1340
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_13

    .line 1341
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1342
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1344
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1345
    iget-object v0, p0, Landroid/view/InputDevice;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    .line 1344
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist getSources()I
    .registers 2

    .line 1025
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public whitelist getVendorId()I
    .registers 2

    .line 899
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public whitelist getVibrator()Landroid/os/Vibrator;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1260
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1261
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1f

    .line 1262
    iget-boolean v1, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v1, :cond_19

    .line 1263
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1264
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibrator(II)Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    goto :goto_1f

    .line 1267
    :cond_19
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 1270
    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    .line 1271
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist getVibratorManager()Landroid/os/VibratorManager;
    .registers 4

    .line 1284
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_13

    .line 1286
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    .line 1287
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    .line 1289
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 1290
    iget-object v0, p0, Landroid/view/InputDevice;->mVibratorManager:Landroid/os/VibratorManager;

    return-object v0

    .line 1289
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getViewBehavior()Landroid/view/InputDevice$ViewBehavior;
    .registers 2

    .line 1212
    iget-object v0, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    return-object v0
.end method

.method public blacklist hasBattery()Z
    .registers 2

    .line 1401
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    return v0
.end method

.method public varargs whitelist hasKeys([I)[Z
    .registers 4

    .line 1088
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object p1

    return-object p1
.end method

.method public whitelist hasMicrophone()Z
    .registers 2

    .line 1383
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    return v0
.end method

.method public blacklist hasSensor()Z
    .registers 2

    .line 1392
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 1353
    iget-boolean v0, p0, Landroid/view/InputDevice;->mEnabled:Z

    return v0
.end method

.method public whitelist isExternal()Z
    .registers 2

    .line 980
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public greylist-max-o isFullKeyboard()Z
    .registers 3

    .line 1008
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    const/16 v1, 0x101

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isPhysicalDevice()Z
    .registers 2

    .line 997
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsVirtualDevice:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isVirtual()Z
    .registers 2

    .line 970
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist supportsSource(I)Z
    .registers 3

    .line 1037
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1661
    const-string v1, "Input Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    const-string v1, "  Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const-string v1, "  Generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const-string v1, "  Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v3, :cond_4d

    const-string v3, "external"

    goto :goto_4f

    :cond_4d
    const-string v3, "built-in"

    :goto_4f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    const-string v1, "  Virtual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsVirtualDevice:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    const-string v1, "  Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    const-string v1, "  Keyboard Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget v1, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v1, :pswitch_data_1ec

    goto :goto_93

    .line 1678
    :pswitch_81
    const-string v1, "alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 1675
    :pswitch_87
    const-string v1, "non-alphabetic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    goto :goto_93

    .line 1672
    :pswitch_8d
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    nop

    .line 1681
    :goto_93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    const-string v1, "  Has Vibrator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    const-string v1, "  Has Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    const-string v1, "  Has battery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    const-string v1, "  Has mic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    const-string v1, "  USI Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    if-eqz v1, :cond_f6

    .line 1694
    const-string v1, " Keyboard language tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    :cond_f6
    iget-object v1, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    if-eqz v1, :cond_109

    .line 1699
    const-string v1, " Keyboard layout type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    :cond_109
    const-string v1, "  Sources: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    const/16 v1, 0x101

    const-string v3, "keyboard"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1704
    const/16 v1, 0x201

    const-string v3, "dpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1705
    const/16 v1, 0x1002

    const-string v3, "touchscreen"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1706
    const/16 v1, 0x2002

    const-string v3, "mouse"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1707
    const/16 v1, 0x4002

    const-string v3, "stylus"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1708
    const v1, 0x10004

    const-string v3, "trackball"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1709
    const v1, 0x20004

    const-string v3, "mouse_relative"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1710
    const v1, 0x100008

    const-string v3, "touchpad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1711
    const v1, 0x1000010

    const-string v3, "joystick"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1712
    const/16 v1, 0x401

    const-string v3, "gamepad"

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1713
    const-string v1, " )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1716
    const/4 v3, 0x0

    :goto_174
    if-ge v3, v1, :cond_1e7

    .line 1717
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 1718
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    const-string v5, ": source=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    const-string v5, " min="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1721
    const-string v5, " max="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1722
    const-string v5, " flat="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1723
    const-string v5, " fuzz="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1724
    const-string v5, " resolution="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1725
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    add-int/lit8 v3, v3, 0x1

    goto :goto_174

    .line 1727
    :cond_1e7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_87
        :pswitch_81
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1613
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1614
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1618
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget v0, p0, Landroid/view/InputDevice;->mDeviceBus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1622
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsVirtualDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyboardLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1628
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasMicrophone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasSensor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasBattery:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v0, p0, Landroid/view/InputDevice;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/HostUsiVersion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1633
    iget p2, p0, Landroid/view/InputDevice;->mAssociatedDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    iget-boolean p2, p0, Landroid/view/InputDevice;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    iget-object p2, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1637
    const/16 v0, 0x3e8

    if-le p2, v0, :cond_79

    move p2, v0

    .line 1638
    :cond_79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    const/4 v0, 0x0

    :goto_7d
    if-ge v0, p2, :cond_bb

    .line 1640
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 1641
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1644
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1645
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1646
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1647
    invoke-static {v1}, Landroid/view/InputDevice$MotionRange;->-$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1639
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 1650
    :cond_bb
    iget-object p2, p0, Landroid/view/InputDevice;->mViewBehavior:Landroid/view/InputDevice$ViewBehavior;

    invoke-static {p2}, Landroid/view/InputDevice$ViewBehavior;->-$$Nest$fgetmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1651
    return-void
.end method
