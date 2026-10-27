.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HD_AUDIO_ACQUIRED:I = 0x100

.field private static final blacklist FLAG_HD_SIS_ACQUIRED:I = 0x80

.field private static final greylist-max-o FLAG_LIVE:I = 0x1

.field private static final greylist-max-o FLAG_MUTED:I = 0x2

.field private static final blacklist FLAG_SIGNAL_ACQUIRED:I = 0x40

.field private static final greylist-max-o FLAG_STEREO:I = 0x20

.field private static final greylist-max-o FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final greylist-max-o FLAG_TRAFFIC_PROGRAM:I = 0x4

.field private static final greylist-max-o FLAG_TUNED:I = 0x10


# instance fields
.field private final blacklist mAlert:Landroid/hardware/radio/RadioAlert;

.field private final greylist-max-o mInfoFlags:I

.field private final greylist-max-o mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final greylist-max-o mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mRelatedContent:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final greylist-max-o mSignalQuality:I

.field private final greylist-max-o mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1831
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;II",
            "Landroid/hardware/radio/RadioMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1557
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    .line 1559
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;II",
            "Landroid/hardware/radio/RadioMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/radio/RadioAlert;",
            ")V"
        }
    .end annotation

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ProgramSelector;

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1582
    iput-object p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1583
    iput-object p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1584
    if-nez p4, :cond_18

    .line 1585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    goto :goto_1f

    .line 1587
    :cond_18
    const-string p1, "relatedContent"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1588
    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1590
    :goto_1f
    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1591
    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    .line 1592
    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1593
    if-nez p8, :cond_2c

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_2c
    iput-object p8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1594
    iput-object p9, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    .line 1595
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    sget-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1816
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1817
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1818
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    .line 1821
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1822
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1823
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 1824
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1825
    if-eqz v0, :cond_61

    sget-object v0, Landroid/hardware/radio/RadioAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert;

    :cond_61
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    .line 1826
    goto :goto_66

    .line 1827
    :cond_64
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    .line 1829
    :goto_66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1864
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1898
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1899
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1900
    :cond_a
    check-cast p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 1902
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v1, v3}, Landroid/hardware/radio/ProgramSelector;->strictEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 1903
    :cond_17
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 1904
    :cond_22
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    .line 1905
    :cond_2d
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    .line 1906
    :cond_38
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    if-eq v1, v3, :cond_3f

    return v2

    .line 1907
    :cond_3f
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    if-eq v1, v3, :cond_46

    return v2

    .line 1908
    :cond_46
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    .line 1909
    :cond_51
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    .line 1911
    :cond_5c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1912
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    iget-object p1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1914
    :cond_6b
    return v0
.end method

.method public whitelist getAlert()Landroid/hardware/radio/RadioAlert;
    .registers 2

    .line 1779
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    return-object v0
.end method

.method public whitelist getChannel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1660
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    long-to-int v0, v0

    return v0

    .line 1661
    :catch_9
    move-exception v0

    .line 1662
    const-string v0, "BroadcastRadio.manager"

    const-string v1, "Not an AM/FM program"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 1619
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/hardware/radio/RadioMetadata;
    .registers 2

    .line 1797
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public whitelist getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 1632
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getRelatedContent()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 1648
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist getSelector()Landroid/hardware/radio/ProgramSelector;
    .registers 2

    .line 1603
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public whitelist getSignalStrength()I
    .registers 2

    .line 1788
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    return v0
.end method

.method public whitelist getSubChannel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1675
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_b

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1677
    :catch_b
    move-exception v0

    .line 1679
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getVendorInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1811
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 1887
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1888
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1889
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v9, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 1888
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1892
    :cond_29
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1893
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 1892
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isDigital()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1705
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1706
    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 1708
    :cond_a
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    .line 1709
    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public whitelist isHdAudioAvailable()Z
    .registers 2

    .line 1766
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isHdSisAvailable()Z
    .registers 2

    .line 1760
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isLive()Z
    .registers 3

    .line 1720
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isMuted()Z
    .registers 2

    .line 1731
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isSignalAcquired()Z
    .registers 2

    .line 1754
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isStereo()Z
    .registers 2

    .line 1695
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isTrafficAnnouncementActive()Z
    .registers 2

    .line 1747
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isTrafficProgram()Z
    .registers 2

    .line 1739
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isTuned()Z
    .registers 2

    .line 1687
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramInfo [selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1872
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1873
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relatedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1874
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1877
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    :cond_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1882
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1844
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1845
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1846
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1847
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeTypedCollection(Landroid/os/Parcel;Ljava/util/Collection;)V

    .line 1848
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1851
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1852
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1853
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    if-nez v0, :cond_37

    .line 1854
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_40

    .line 1856
    :cond_37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1857
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1860
    :cond_40
    :goto_40
    return-void
.end method
