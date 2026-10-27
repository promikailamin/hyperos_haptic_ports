.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
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
    name = "ModuleProperties"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final greylist-max-o mClassId:I

.field private final greylist-max-o mDabFrequencyTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mId:I

.field private final greylist-max-o mImplementor:Ljava/lang/String;

.field private final greylist-max-o mIsBgScanSupported:Z

.field private final greylist-max-o mIsCaptureSupported:Z

.field private final greylist-max-o mIsInitializationRequired:Z

.field private final greylist-max-o mNumAudioSources:I

.field private final greylist-max-o mNumTuners:I

.field private final greylist-max-o mProduct:Ljava/lang/String;

.field private final greylist-max-o mSerial:Ljava/lang/String;

.field private final greylist-max-o mServiceName:Ljava/lang/String;

.field private final greylist-max-o mSupportedIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSupportedProgramTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 523
    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ[",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            "Z[I[I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p2, "default"

    :cond_d
    iput-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 285
    iput p3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 286
    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 287
    iput-object p5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 288
    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 289
    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 290
    iput p8, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 291
    iput p9, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 292
    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 293
    iput-boolean p11, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 294
    iput-object p12, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 295
    iput-boolean p13, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 296
    invoke-static {p14}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 297
    invoke-static {p15}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 298
    if-eqz p16, :cond_5a

    .line 299
    invoke-interface/range {p16 .. p16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    goto :goto_3b

    .line 304
    :cond_5a
    if-eqz p16, :cond_66

    invoke-interface/range {p16 .. p16}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_66

    .line 305
    :cond_63
    move-object/from16 p1, p16

    goto :goto_67

    :cond_66
    :goto_66
    const/4 p1, 0x0

    :goto_67
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 306
    if-nez p17, :cond_71

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_73

    :cond_71
    move-object/from16 p1, p17

    :goto_73
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 307
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "default"

    :cond_15
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4b

    move v0, v2

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 509
    const-class v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 511
    array-length v3, v0

    new-array v3, v3, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 512
    move v3, v1

    :goto_6d
    array-length v4, v0

    if-ge v3, v4, :cond_7b

    .line 513
    iget-object v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    aget-object v5, v0, v3

    check-cast v5, Landroid/hardware/radio/RadioManager$BandDescriptor;

    aput-object v5, v4, v3

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 515
    :cond_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_82

    move v1, v2

    :cond_82
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    .line 518
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringIntMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a3

    const/4 v0, 0x0

    :cond_a3
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    .line 520
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    .line 521
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o arrayToSet([I)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static greylist-max-o setToArray(Ljava/util/Set;)[I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 314
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 585
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 586
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 587
    :cond_a
    check-cast p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 589
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 590
    :cond_15
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    .line 591
    :cond_20
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    if-eq v1, v3, :cond_27

    return v2

    .line 592
    :cond_27
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    .line 593
    :cond_32
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 594
    :cond_3d
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    .line 595
    :cond_48
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    .line 596
    :cond_53
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    if-eq v1, v3, :cond_5a

    return v2

    .line 597
    :cond_5a
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    if-eq v1, v3, :cond_61

    return v2

    .line 598
    :cond_61
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    iget-boolean v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    if-eq v1, v3, :cond_68

    return v2

    .line 599
    :cond_68
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    iget-boolean v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eq v1, v3, :cond_6f

    return v2

    .line 600
    :cond_6f
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    .line 601
    :cond_7a
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    iget-boolean v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    if-eq v1, v3, :cond_81

    return v2

    .line 602
    :cond_81
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    return v2

    .line 603
    :cond_8c
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    iget-object p1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    return v2

    .line 604
    :cond_97
    return v0
.end method

.method public whitelist getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public whitelist getClassId()I
    .registers 2

    .line 341
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    return v0
.end method

.method public whitelist getDabFrequencyTable()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    return v0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumAudioSources()I
    .registers 2

    .line 397
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    return v0
.end method

.method public whitelist getNumTuners()I
    .registers 2

    .line 384
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    return v0
.end method

.method public whitelist getProduct()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerial()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    return-object v0
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

    .line 485
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 577
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    .line 578
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    .line 579
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    iget-object v0, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 577
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBackgroundScanningSupported()Z
    .registers 2

    .line 433
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    return v0
.end method

.method public whitelist isCaptureSupported()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    return v0
.end method

.method public whitelist isInitializationRequired()Z
    .registers 2

    .line 410
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    return v0
.end method

.method public whitelist isProgramIdentifierSupported(I)Z
    .registers 3

    .line 458
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist isProgramTypeSupported(I)Z
    .registers 3

    .line 445
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImplementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumTuners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumAudioSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsInitializationRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCaptureSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBgScanSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 572
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 536
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsInitializationRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 548
    iget-boolean p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {p2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 550
    iget-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 551
    iget-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mDabFrequencyTable:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeStringIntMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 552
    iget-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 553
    return-void
.end method
