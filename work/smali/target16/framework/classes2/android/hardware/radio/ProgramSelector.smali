.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$Identifier;,
        Landroid/hardware/radio/ProgramSelector$IdentifierType;,
        Landroid/hardware/radio/ProgramSelector$HdSubChannel;,
        Landroid/hardware/radio/ProgramSelector$ProgramType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final whitelist IDENTIFIER_TYPE_DAB_DMB_SID_EXT:I = 0xe

.field public static final whitelist IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final whitelist IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final whitelist IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final whitelist IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DAB_SID_EXT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final whitelist IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_LOCATION:I = 0xf

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_NAME:I = 0x2714

.field public static final whitelist IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_INVALID:I = 0x0

.field public static final whitelist IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final whitelist IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_END:I = 0x7cf

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_START:I = 0x3e8

.field public static final whitelist PROGRAM_TYPE_AM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_AM_HD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DAB:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DRMO:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM_HD:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_SXM:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUB_CHANNEL_HD_1:I = 0x1

.field public static final whitelist SUB_CHANNEL_HD_2:I = 0x2

.field public static final whitelist SUB_CHANNEL_HD_3:I = 0x4

.field public static final whitelist SUB_CHANNEL_HD_4:I = 0x8

.field public static final whitelist SUB_CHANNEL_HD_5:I = 0x10

.field public static final whitelist SUB_CHANNEL_HD_6:I = 0x20

.field public static final whitelist SUB_CHANNEL_HD_7:I = 0x40

.field public static final whitelist SUB_CHANNEL_HD_8:I = 0x80


# instance fields
.field private final greylist-max-o mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mProgramType:I

.field private final greylist-max-o mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mVendorIds:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 725
    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .registers 7

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const/4 v0, 0x0

    if-nez p3, :cond_8

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 444
    :cond_8
    if-nez p4, :cond_c

    new-array p4, v0, [J

    .line 445
    :cond_c
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 448
    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 449
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 450
    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 451
    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 452
    return-void

    .line 446
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "secondaryIds list must not contain nulls"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    .line 704
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 705
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 706
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    .line 710
    return-void

    .line 707
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "secondaryIds list must not contain nulls"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .registers 3

    .line 578
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .registers 10

    .line 615
    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p0, v0, :cond_17

    .line 617
    const p0, 0xc350

    if-ge p1, p0, :cond_12

    .line 618
    if-gtz p2, :cond_10

    move p0, v3

    goto :goto_17

    :cond_10
    move p0, v2

    goto :goto_17

    .line 620
    :cond_12
    if-gtz p2, :cond_16

    move p0, v4

    goto :goto_17

    :cond_16
    move p0, v1

    .line 624
    :cond_17
    :goto_17
    if-eqz p0, :cond_1e

    if-ne p0, v2, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v4

    .line 625
    :goto_1f
    if-eq p0, v2, :cond_26

    if-ne p0, v1, :cond_24

    goto :goto_26

    :cond_24
    move v2, v3

    goto :goto_27

    :cond_26
    :goto_26
    move v2, v4

    .line 626
    :goto_27
    if-nez v0, :cond_47

    if-nez v2, :cond_47

    if-ne p0, v4, :cond_2e

    goto :goto_47

    .line 627
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown band: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_47
    :goto_47
    if-ltz p2, :cond_9a

    const/16 p0, 0x8

    if-gt p2, p0, :cond_9a

    .line 632
    if-lez p2, :cond_5a

    if-eqz v2, :cond_52

    goto :goto_5a

    .line 633
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subchannels are not supported for non-HD radio"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 635
    :cond_5a
    :goto_5a
    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 641
    if-eqz v0, :cond_63

    move v1, v4

    .line 642
    :cond_63
    new-instance p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v5, p1

    invoke-direct {p0, v4, v5, v6}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    .line 644
    nop

    .line 645
    const/4 p1, 0x0

    if-lez p2, :cond_7a

    .line 651
    new-array v0, v4, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    sub-int/2addr p2, v4

    int-to-long v4, p2

    const/4 p2, 0x4

    invoke-direct {v2, p2, v4, v5}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v2, v0, v3

    goto :goto_7b

    .line 645
    :cond_7a
    move-object v0, p1

    .line 655
    :goto_7b
    new-instance p2, Landroid/hardware/radio/ProgramSelector;

    invoke-direct {p2, v1, p0, v0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object p2

    .line 636
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provided value is not a valid AM/FM frequency: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 630
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subchannel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o isValidAmFmFrequency(ZI)Z
    .registers 4

    .line 593
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    .line 594
    const/16 p0, 0x96

    if-le p1, p0, :cond_d

    const/16 p0, 0x7530

    if-gt p1, p0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 596
    :cond_f
    const p0, 0xea60

    if-le p1, p0, :cond_1a

    const p0, 0x1adb0

    if-ge p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 1

    .line 445
    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 1

    .line 706
    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$1(ILandroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 2

    .line 556
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p1

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 1

    .line 558
    new-array p0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 681
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 682
    :cond_4
    instance-of v0, p1, Landroid/hardware/radio/ProgramSelector;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 683
    :cond_a
    check-cast p1, Landroid/hardware/radio/ProgramSelector;

    .line 686
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 8

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_12
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 517
    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    if-ne v5, p1, :cond_23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 520
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p1
.end method

.method public whitelist getFirstId(I)J
    .registers 7

    .line 496
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    if-ne v0, p1, :cond_f

    iget-object p1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 497
    :cond_f
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 498
    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v4

    if-ne v4, p1, :cond_22

    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 497
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 500
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getProgramType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public whitelist getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getVendorIds()[J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 676
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist strictEquals(Ljava/lang/Object;)Z
    .registers 6

    .line 691
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 692
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 693
    :cond_a
    check-cast p1, Landroid/hardware/radio/ProgramSelector;

    .line 696
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    iget-object v3, p1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v3, v3

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 698
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object p1, p1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 699
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 698
    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    .line 696
    :goto_34
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramSelector(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 663
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    if-lez v1, :cond_2d

    .line 664
    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_2d
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    array-length v1, v1

    if-lez v1, :cond_41

    .line 667
    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_41
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist withSecondaryPreferred(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/ProgramSelector;
    .registers 6

    .line 553
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    .line 554
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 556
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 558
    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 554
    invoke-static {v0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;-><init>()V

    .line 558
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 560
    new-instance v0, Landroid/hardware/radio/ProgramSelector;

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 714
    iget p2, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 717
    iget-object p2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 718
    return-void
.end method
