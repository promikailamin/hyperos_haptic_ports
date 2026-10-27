.class public Landroid/hardware/radio/RadioManager$AmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$AmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mStereo:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1421
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIIIIZ)V
    .registers 7

    .line 1404
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    .line 1405
    move-object p1, p0

    iput-boolean p6, p1, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    .line 1406
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .registers 2

    .line 1398
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    .line 1399
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    .line 1400
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1417
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    .line 1418
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    .line 1419
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1440
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1460
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1461
    return v0

    .line 1462
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1463
    return v2

    .line 1464
    :cond_c
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    if-nez v1, :cond_11

    .line 1465
    return v2

    .line 1466
    :cond_11
    check-cast p1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    .line 1467
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result p1

    if-eq v1, p1, :cond_1c

    .line 1468
    return v2

    .line 1469
    :cond_1c
    return v0
.end method

.method public whitelist getStereo()Z
    .registers 2

    .line 1413
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1453
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v0

    .line 1454
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    add-int/2addr v0, v1

    .line 1455
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1434
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1435
    iget-boolean p2, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1436
    return-void
.end method
