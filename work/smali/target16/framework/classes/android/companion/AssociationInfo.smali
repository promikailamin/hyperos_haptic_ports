.class public final Landroid/companion/AssociationInfo;
.super Ljava/lang/Object;
.source "AssociationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LAST_TIME_CONNECTED_NONE:Ljava/lang/String; = "None"

.field public static final blacklist METADATA_TIMESTAMP:Ljava/lang/String; = "_timestamp_"


# instance fields
.field private final blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceId:Landroid/companion/DeviceId;

.field private final blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private final blacklist mLastTimeConnectedMs:J

.field private final blacklist mMetadata:Landroid/os/PersistableBundle;

.field private final blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPackagesToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPending:Z

.field private final blacklist mRevoked:Z

.field private final blacklist mSelfManaged:Z

.field private final blacklist mSystemDataSyncFlags:I

.field private final blacklist mTimeApprovedMs:J

.field private final blacklist mTransportFlags:I

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadata(Landroid/companion/AssociationInfo;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackagesToNotify(Landroid/companion/AssociationInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportFlags(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 574
    new-instance v0, Landroid/companion/AssociationInfo$1;

    invoke-direct {v0}, Landroid/companion/AssociationInfo$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJIILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;Ljava/util/List;Landroid/os/PersistableBundle;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Landroid/net/MacAddress;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/companion/AssociatedDevice;",
            "ZZZZJJII",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/companion/DeviceId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-lez p1, :cond_45

    .line 128
    if-nez p4, :cond_12

    if-eqz p5, :cond_a

    goto :goto_12

    .line 129
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC address and the Display Name must NOT be null at the same time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_12
    :goto_12
    iput p1, p0, Landroid/companion/AssociationInfo;->mId:I

    .line 134
    iput p2, p0, Landroid/companion/AssociationInfo;->mUserId:I

    .line 135
    iput-object p3, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 137
    iput-object p5, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 138
    iput-object p6, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 140
    iput-boolean p8, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 141
    iput-boolean p9, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    .line 142
    iput-boolean p10, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    .line 143
    iput-boolean p11, p0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 144
    iput-wide p12, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    .line 145
    iput-wide p14, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    .line 146
    move/from16 p1, p16

    iput p1, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    .line 147
    move/from16 p1, p17

    iput p1, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    .line 148
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 149
    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 150
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    .line 151
    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    .line 152
    return-void

    .line 126
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Association ID should be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJIILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;Ljava/util/List;Landroid/os/PersistableBundle;Landroid/companion/AssociationInfo-IA;)V
    .registers 23

    invoke-direct/range {p0 .. p21}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJIILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;Ljava/util/List;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mId:I

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 545
    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 548
    sget-object v0, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociatedDevice;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7e

    if-ne v0, v2, :cond_7e

    .line 559
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    goto :goto_80

    .line 561
    :cond_7e
    iput-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 563
    :goto_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    if-ne v0, v2, :cond_91

    .line 565
    sget-object v0, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/DeviceId;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    goto :goto_93

    .line 567
    :cond_91
    iput-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 569
    :goto_93
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    .line 571
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/AssociationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist isSameIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 3

    .line 489
    if-nez p1, :cond_4

    if-eqz p2, :cond_16

    :cond_4
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 490
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 489
    :goto_19
    return p1
.end method


# virtual methods
.method public blacklist belongsToPackage(ILjava/lang/String;)Z
    .registers 4

    .line 263
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 461
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 462
    :cond_4
    instance-of v1, p1, Landroid/companion/AssociationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 463
    :cond_a
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 465
    iget v1, p0, Landroid/companion/AssociationInfo;->mId:I

    iget v3, p1, Landroid/companion/AssociationInfo;->mId:I

    if-ne v1, v3, :cond_a7

    iget v1, p0, Landroid/companion/AssociationInfo;->mUserId:I

    iget v3, p1, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v1, v3, :cond_a7

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    iget-boolean v3, p1, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-ne v1, v3, :cond_a7

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    iget-boolean v3, p1, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-ne v1, v3, :cond_a7

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    iget-boolean v3, p1, Landroid/companion/AssociationInfo;->mRevoked:Z

    if-ne v1, v3, :cond_a7

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mPending:Z

    iget-boolean v3, p1, Landroid/companion/AssociationInfo;->mPending:Z

    if-ne v1, v3, :cond_a7

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    iget-wide v5, p1, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_a7

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    iget-wide v5, p1, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 473
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 474
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 475
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 476
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 477
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget v1, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    iget v3, p1, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    if-ne v1, v3, :cond_a7

    iget v1, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    iget v3, p1, Landroid/companion/AssociationInfo;->mTransportFlags:I

    if-ne v1, v3, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 480
    invoke-direct {p0, v1, v3}, Landroid/companion/AssociationInfo;->isSameIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 481
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    iget-object v3, p1, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    .line 482
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    iget-object p1, p1, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    .line 483
    invoke-static {v1, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result p1

    if-eqz p1, :cond_a7

    goto :goto_a8

    :cond_a7
    move v0, v2

    .line 465
    :goto_a8
    return v0
.end method

.method public whitelist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object v0
.end method

.method public whitelist getDeviceIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceId()Landroid/companion/DeviceId;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    return-object v0
.end method

.method public whitelist getDeviceMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getDeviceMacAddressAsString()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    return v0
.end method

.method public blacklist getLastTimeConnectedMs()J
    .registers 3

    .line 296
    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-wide v0
.end method

.method public blacklist getMetadata()Landroid/os/PersistableBundle;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getMetadata(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3

    .line 360
    const-string v0, "_timestamp_"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 365
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 366
    if-nez p1, :cond_16

    .line 367
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    return-object p1

    .line 369
    :cond_16
    return-object p1

    .line 361
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get metadata for timestamp. Use getMetadataTimestamp() instead to get the timestamp."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getMetadataTimestamp()J
    .registers 5

    .line 379
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    const-string v1, "_timestamp_"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackagesToNotify()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSystemDataSyncFlags()I
    .registers 2

    .line 306
    iget v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    return v0
.end method

.method public blacklist getTimeApprovedMs()J
    .registers 3

    .line 258
    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method public blacklist getTransportFlags()I
    .registers 2

    .line 314
    iget v0, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 22

    .line 495
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v6, v0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iget-object v8, v0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 496
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 497
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-wide v13, v0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget v1, v0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    .line 498
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    iget-object v0, v0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    move-object/from16 v20, v0

    move-object/from16 v19, v1

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    .line 495
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isActive()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isLinkedTo(Ljava/lang/String;)Z
    .registers 4

    .line 393
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 395
    :cond_6
    if-nez p1, :cond_9

    return v1

    .line 399
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_15

    .line 402
    nop

    .line 403
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 400
    :catch_15
    move-exception p1

    .line 401
    return v1
.end method

.method public blacklist isNotifyOnDeviceNearby()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return v0
.end method

.method public blacklist isPending()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    return v0
.end method

.method public blacklist isRevoked()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return v0
.end method

.method public blacklist shouldBindWhenPresent()Z
    .registers 2

    .line 415
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .registers 4

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_21

    .line 424
    const-string v1, ", addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_21
    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v1, :cond_2a

    .line 427
    const-string v1, ", self-managed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_2a
    const-string v1, ", pkg=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceMacAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceProfile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAssociatedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifyOnDeviceNearby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRevoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeApprovedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTimeConnectedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 449
    iget-wide v1, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_bc

    .line 450
    const-string v1, "None"

    goto :goto_c3

    :cond_bc
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSystemDataSyncFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackagesToNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 508
    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 512
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 515
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 517
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 519
    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    iget v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget v0, p0, Landroid/companion/AssociationInfo;->mTransportFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_60

    .line 524
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_63

    .line 527
    :cond_60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    :goto_63
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    if-eqz v0, :cond_70

    .line 531
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_73

    .line 534
    :cond_70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    :goto_73
    iget-object p2, p0, Landroid/companion/AssociationInfo;->mPackagesToNotify:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 538
    iget-object p2, p0, Landroid/companion/AssociationInfo;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 539
    return-void
.end method
