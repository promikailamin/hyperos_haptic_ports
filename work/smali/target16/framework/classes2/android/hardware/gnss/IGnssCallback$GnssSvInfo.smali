.class public Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssSvInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist azimuthDegrees:F

.field public blacklist basebandCN0DbHz:F

.field public blacklist cN0Dbhz:F

.field public blacklist carrierFrequencyHz:J

.field public blacklist constellation:I

.field public blacklist elevationDegrees:F

.field public blacklist svFlag:I

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 578
    new-instance v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 570
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 571
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 572
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 573
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 574
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 575
    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 638
    nop

    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 612
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f9

    .line 613
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 613
    return-void

    .line 631
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 615
    return-void

    .line 631
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 616
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 617
    return-void

    .line 631
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 619
    return-void

    .line 631
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 621
    return-void

    .line 631
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 623
    return-void

    .line 631
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 624
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 625
    return-void

    .line 631
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    return-void

    .line 631
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f7

    .line 630
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f1

    .line 633
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    nop

    .line 635
    return-void

    .line 631
    :cond_f1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 630
    :catchall_f7
    move-exception v2

    goto :goto_101

    .line 612
    :cond_f9
    :try_start_f9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_f7

    .line 630
    :goto_101
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10a

    .line 631
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_10a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 597
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 598
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 599
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 600
    iget-wide v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 601
    iget v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 603
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 604
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 606
    return-void
.end method
