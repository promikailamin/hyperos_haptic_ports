.class public final Landroid/hardware/display/DeviceProductInfo;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DeviceProductInfo$ManufactureDate;,
        Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;,
        Landroid/hardware/display/DeviceProductInfo$Builder;,
        Landroid/hardware/display/DeviceProductInfo$VideoInputType;,
        Landroid/hardware/display/DeviceProductInfo$ConnectionToSinkType;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_TO_SINK_BUILT_IN:I = 0x1

.field public static final whitelist CONNECTION_TO_SINK_DIRECT:I = 0x2

.field public static final whitelist CONNECTION_TO_SINK_TRANSITIVE:I = 0x3

.field public static final whitelist CONNECTION_TO_SINK_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DeviceProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VIDEO_INPUT_TYPE_ANALOG:I = 0x0

.field public static final blacklist VIDEO_INPUT_TYPE_DIGITAL:I = 0x1

.field public static final blacklist VIDEO_INPUT_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mConnectionToSinkType:I

.field private final blacklist mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

.field private final blacklist mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

.field private final blacklist mManufacturerPnpId:Ljava/lang/String;

.field private final blacklist mModelYear:Ljava/lang/Integer;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProductId:Ljava/lang/String;

.field private final blacklist mVideoInputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 461
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/DeviceProductInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DeviceProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 144
    sget-object v0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    .line 146
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/DeviceProductInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/DeviceProductInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 128
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 129
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 130
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 131
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 132
    iput p5, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 133
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 134
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    .line 135
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/display/DeviceProductInfo$ManufactureDate;ILandroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;I)V
    .registers 9

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 115
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 116
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 117
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 118
    iput-object p5, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 119
    iput p6, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 120
    iput-object p7, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 121
    iput p8, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/display/DeviceProductInfo$ManufactureDate;ILandroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;ILandroid/hardware/display/DeviceProductInfo-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/hardware/display/DeviceProductInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/display/DeviceProductInfo$ManufactureDate;ILandroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/hardware/display/DeviceProductInfo$ManufactureDate;ILandroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;I)V
    .registers 9

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 102
    iput-object p5, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 103
    iput p6, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 104
    iput-object p7, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 105
    iput p8, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 442
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 443
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5f

    .line 444
    :cond_12
    check-cast p1, Landroid/hardware/display/DeviceProductInfo;

    .line 445
    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 446
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 447
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 448
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 449
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    iget v3, p1, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    iget-object v3, p1, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 451
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    iget p1, p1, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    if-ne v2, p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v1

    .line 445
    :goto_5e
    return v0

    .line 443
    :cond_5f
    :goto_5f
    return v1
.end method

.method public whitelist getConnectionToSinkType()I
    .registers 2

    .line 406
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return v0
.end method

.method public blacklist getEdidStructureMetadata()Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    return-object v0
.end method

.method public blacklist getManufactureDate()Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    return-object v0
.end method

.method public whitelist getManufactureWeek()I
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 385
    return v1

    .line 387
    :cond_6
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_18
    return v1
.end method

.method public whitelist getManufactureYear()I
    .registers 3

    .line 372
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 373
    return v1

    .line 375
    :cond_6
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_18
    return v1
.end method

.method public whitelist getManufacturerPnpId()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModelYear()I
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVideoInputType()I
    .registers 2

    .line 428
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 457
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iget-object v4, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget v5, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 458
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    iget v7, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 457
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProductInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacturerPnpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufactureDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionToSinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edidStructureMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoInputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 481
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 486
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    iget p2, p0, Landroid/hardware/display/DeviceProductInfo;->mVideoInputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    return-void
.end method
