.class public final Landroid/hardware/display/DeviceProductInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DeviceProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectionToSinkType:I

.field private blacklist mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

.field private blacklist mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

.field private blacklist mManufacturerPnpId:Ljava/lang/String;

.field private blacklist mModelYear:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProductId:Ljava/lang/String;

.field private blacklist mVideoInputType:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, -0x1

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 156
    iput v0, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mModelYear:I

    .line 157
    new-instance v2, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-direct {v2, v1, v1}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mConnectionToSinkType:I

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 160
    iput v0, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mVideoInputType:I

    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufacturerPnpId:Ljava/lang/String;

    .line 171
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mProductId:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/display/DeviceProductInfo;
    .registers 11

    .line 324
    new-instance v0, Landroid/hardware/display/DeviceProductInfo;

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mProductId:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mModelYear:I

    iget-object v5, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget v6, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mConnectionToSinkType:I

    iget-object v7, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    iget v8, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mVideoInputType:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/hardware/display/DeviceProductInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/display/DeviceProductInfo$ManufactureDate;ILandroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;ILandroid/hardware/display/DeviceProductInfo-IA;)V

    return-object v0
.end method

.method public blacklist setConnectionToSinkType(I)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 2

    .line 272
    iput p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mConnectionToSinkType:I

    .line 273
    return-object p0
.end method

.method public blacklist setEdidStructureMetadata(II)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 4

    .line 288
    if-ltz p1, :cond_14

    .line 291
    if-ltz p2, :cond_c

    .line 295
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mEdidStructureMetadata:Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 297
    return-object p0

    .line 292
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "edidStructureRevision must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "edidStructureVersion must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setManufactureDate(II)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 5

    .line 243
    const/4 v0, -0x1

    if-lt p1, v0, :cond_30

    const/16 v1, 0x35

    if-gt p1, v1, :cond_30

    .line 247
    if-eqz p1, :cond_28

    .line 250
    if-eq p2, v0, :cond_18

    const/16 v0, 0x7c6

    if-lt p2, v0, :cond_10

    goto :goto_18

    .line 251
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufactureYear must be >= 1990, or -1 if not available."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_18
    :goto_18
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 256
    return-object p0

    .line 248
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufactureWeek cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufactureWeek must be >= 1 and <= 53, or -1 if missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setManufacturerPnpId(Ljava/lang/String;)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 2

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mManufacturerPnpId:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public blacklist setModelYear(I)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 3

    .line 222
    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    const/16 v0, 0x7c6

    if-lt p1, v0, :cond_8

    goto :goto_10

    .line 223
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "modelYear must be >= 1990, or -1 if not available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_10
    :goto_10
    iput p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mModelYear:I

    .line 227
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 2

    .line 183
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mName:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public blacklist setProductId(Ljava/lang/String;)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 2

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mProductId:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public blacklist setVideoInputType(I)Landroid/hardware/display/DeviceProductInfo$Builder;
    .registers 2

    .line 312
    iput p1, p0, Landroid/hardware/display/DeviceProductInfo$Builder;->mVideoInputType:I

    .line 313
    return-object p0
.end method
