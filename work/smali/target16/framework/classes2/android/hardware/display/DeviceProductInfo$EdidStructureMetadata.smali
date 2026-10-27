.class public final Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DeviceProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EdidStructureMetadata"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRevision:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 594
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata$1;

    invoke-direct {v0}, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput p1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    .line 574
    iput p2, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    .line 575
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    .line 580
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/DeviceProductInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 632
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 633
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 634
    :cond_a
    check-cast p1, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;

    .line 635
    iget v1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    iget v3, p1, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    if-ne v1, v3, :cond_19

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    iget p1, p1, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    if-ne v1, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0
.end method

.method public blacklist getRevision()I
    .registers 2

    .line 622
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    return v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 613
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 640
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdidStructureMetadata{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

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
    .registers 3

    .line 584
    iget p2, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    iget p2, p0, Landroid/hardware/display/DeviceProductInfo$EdidStructureMetadata;->mRevision:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    return-void
.end method
