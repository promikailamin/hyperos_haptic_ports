.class public final Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mCaptureRequested:Z

.field private final blacklist mData:[B

.field private final blacklist mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

.field private final blacklist mMultipleTriggersAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1571
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    .line 1569
    return-void
.end method

.method private constructor blacklist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V
    .registers 6

    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    .line 1544
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    .line 1545
    const/4 p1, 0x0

    if-eqz p3, :cond_b

    goto :goto_d

    :cond_b
    new-array p3, p1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    :goto_d
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1546
    if-eqz p4, :cond_12

    goto :goto_14

    :cond_12
    new-array p4, p1, [B

    :goto_14
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    .line 1547
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    .line 1548
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BILandroid/hardware/soundtrigger/SoundTrigger-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 7

    .line 1629
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1630
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1631
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1632
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1633
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1634
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1635
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1650
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1663
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1664
    return v0

    .line 1665
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1666
    return v1

    .line 1667
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    if-nez v2, :cond_d

    .line 1668
    return v1

    .line 1669
    :cond_d
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1670
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    if-eq v2, v3, :cond_16

    .line 1671
    return v1

    .line 1673
    :cond_16
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    if-eq v2, v3, :cond_1d

    .line 1674
    return v1

    .line 1676
    :cond_1d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1677
    return v1

    .line 1679
    :cond_28
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1680
    return v1

    .line 1682
    :cond_33
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    if-eq v2, p1, :cond_3a

    .line 1683
    return v1

    .line 1685
    :cond_3a
    return v0
.end method

.method public whitelist getAudioCapabilities()I
    .registers 2

    .line 1625
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 1617
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    return-object v0
.end method

.method public whitelist getKeyphrases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 1691
    nop

    .line 1692
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1693
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    add-int/2addr v0, v2

    .line 1694
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1695
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 1696
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    add-int/2addr v0, v1

    .line 1697
    return v0
.end method

.method public whitelist isCaptureRequested()Z
    .registers 2

    .line 1587
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    return v0
.end method

.method public whitelist isMultipleTriggersAllowed()Z
    .registers 2

    .line 1597
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionConfig [captureRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multipleTriggersAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1657
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    .line 1658
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1655
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1641
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mCaptureRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1642
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mMultipleTriggersAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1643
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1644
    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1645
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->mAudioCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    return-void
.end method
