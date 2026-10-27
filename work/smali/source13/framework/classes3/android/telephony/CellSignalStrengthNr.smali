.class public final Landroid/telephony/CellSignalStrengthNr;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthNr.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthNr$SignalLevelAndReportCriteriaSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CellSignalStrengthNr"

.field public static final blacklist UNKNOWN_ASU_LEVEL:I = 0x63

.field public static final blacklist USE_SSRSRP:I = 0x1

.field public static final blacklist USE_SSRSRQ:I = 0x2

.field public static final blacklist USE_SSSINR:I = 0x4

.field private static final blacklist VDBG:Z = false

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthNr;


# instance fields
.field private blacklist mCsiCqiReport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCsiCqiTableIndex:I

.field private blacklist mCsiRsrp:I

.field private blacklist mCsiRsrq:I

.field private blacklist mCsiSinr:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private blacklist mSsRsrp:I

.field private blacklist mSsRsrpThresholds:[I

.field private blacklist mSsRsrq:I

.field private blacklist mSsRsrqThresholds:[I

.field private blacklist mSsSinr:I

.field private blacklist mSsSinrThresholds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 526
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    .line 568
    new-instance v0, Landroid/telephony/CellSignalStrengthNr$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 159
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_2a

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_36

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 160
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->setDefaultValues()V

    .line 161
    return-void

    nop

    :array_1e
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_2a
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_36
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 16
    .param p1, "csiRsrp"    # I
    .param p2, "csiRsrq"    # I
    .param p3, "csiSinr"    # I
    .param p4, "ssRsrp"    # I
    .param p5, "ssRsrq"    # I
    .param p6, "ssSinr"    # I

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const v4, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;III)V

    .line 202
    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/util/List;III)V
    .registers 14
    .param p1, "csiRsrp"    # I
    .param p2, "csiRsrq"    # I
    .param p3, "csiSinr"    # I
    .param p4, "csiCqiTableIndex"    # I
    .param p6, "ssRsrp"    # I
    .param p7, "ssRsrq"    # I
    .param p8, "ssSinr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;III)V"
        }
    .end annotation

    .line 175
    .local p5, "csiCqiReport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_74

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_80

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 176
    const/16 v0, -0x9c

    const/16 v1, -0x1f

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 177
    const/16 v2, -0x14

    const/4 v3, -0x3

    invoke-static {p2, v2, v3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 178
    const/16 v2, -0x17

    const/16 v3, 0x17

    invoke-static {p3, v2, v3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 179
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {p4, v3, v4}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 180
    invoke-interface {p5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;-><init>()V

    .line 181
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 182
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 183
    invoke-static {p6, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 184
    const/16 v0, -0x2b

    const/16 v1, 0x14

    invoke-static {p7, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 185
    const/16 v0, 0x28

    invoke-static {p8, v2, v0}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 187
    return-void

    :array_74
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_80
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_8c
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 327
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_64

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_70

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 332
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    .line 340
    return-void

    :array_64
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_70
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_7c
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthNr-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthNr;)V
    .registers 4
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthNr;

    .line 498
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_4a

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 62
    new-array v1, v0, [I

    fill-array-data v1, :array_56

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_62

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 499
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 500
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 501
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 502
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 503
    iget-object v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 504
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 505
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 506
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 507
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 508
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 510
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    .line 511
    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    .line 512
    return-void

    :array_4a
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_56
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_62
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method public static blacklist flip(I)I
    .registers 2
    .param p0, "val"    # I

    .line 211
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_7

    neg-int v0, p0

    goto :goto_8

    :cond_7
    move v0, p0

    :goto_8
    return v0
.end method

.method private blacklist isLevelForParameter(I)Z
    .registers 3
    .param p1, "parameterType"    # I

    .line 380
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Byte;)Ljava/lang/Integer;
    .registers 4
    .param p0, "cqi"    # Ljava/lang/Byte;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .registers 4
    .param p1, "measure"    # I
    .param p2, "thresholds"    # [I

    .line 450
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_7

    .line 451
    const/4 v0, 0x0

    .local v0, "level":I
    goto :goto_24

    .line 452
    .end local v0    # "level":I
    :cond_7
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_e

    .line 453
    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_24

    .line 454
    .end local v0    # "level":I
    :cond_e
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_15

    .line 455
    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_24

    .line 456
    .end local v0    # "level":I
    :cond_15
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_1c

    .line 457
    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_24

    .line 458
    .end local v0    # "level":I
    :cond_1c
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_23

    .line 459
    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_24

    .line 461
    .end local v0    # "level":I
    :cond_23
    const/4 v0, 0x0

    .line 463
    .restart local v0    # "level":I
    :goto_24
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->copy()Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Landroid/telephony/CellSignalStrengthNr;
    .registers 2

    .line 517
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 536
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthNr;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 537
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    .line 538
    .local v0, "o":Landroid/telephony/CellSignalStrengthNr;
    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    if-ne v2, v3, :cond_44

    iget-object v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 540
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    if-ne v2, v3, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    nop

    .line 538
    :goto_45
    return v1

    .line 544
    .end local v0    # "o":Landroid/telephony/CellSignalStrengthNr;
    :cond_46
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 3

    .line 476
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v0

    .line 477
    .local v0, "nrDbm":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_c

    .line 478
    const/16 v1, 0x63

    .local v1, "asuLevel":I
    goto :goto_1b

    .line 479
    .end local v1    # "asuLevel":I
    :cond_c
    const/16 v1, -0x8c

    if-gt v0, v1, :cond_12

    .line 480
    const/4 v1, 0x0

    .restart local v1    # "asuLevel":I
    goto :goto_1b

    .line 481
    .end local v1    # "asuLevel":I
    :cond_12
    const/16 v1, -0x2b

    if-lt v0, v1, :cond_19

    .line 482
    const/16 v1, 0x61

    .restart local v1    # "asuLevel":I
    goto :goto_1b

    .line 484
    .end local v1    # "asuLevel":I
    :cond_19
    add-int/lit16 v1, v0, 0x8c

    .line 486
    .restart local v1    # "asuLevel":I
    :goto_1b
    return v1
.end method

.method public whitelist getCsiCqiReport()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCsiCqiTableIndex()I
    .registers 2

    .line 285
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    return v0
.end method

.method public whitelist getCsiRsrp()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    return v0
.end method

.method public whitelist getCsiRsrq()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    return v0
.end method

.method public whitelist getCsiSinr()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 494
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 364
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    return v0
.end method

.method public whitelist getSsRsrp()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public whitelist getSsRsrq()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    return v0
.end method

.method public whitelist getSsSinr()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 522
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 523
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 522
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 531
    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist setDefaultValues()V
    .registers 3

    .line 345
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    .line 346
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    .line 347
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    .line 348
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    .line 350
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    .line 351
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    .line 352
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 354
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 356
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    .line 357
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    .line 358
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    const-string v1, "CellSignalStrengthNr:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiTableIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssSinr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " miuiLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOptimizedLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parametersUseForLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 9
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 387
    invoke-static {p1, p2, p0}, Landroid/telephony/MiuiSignalStrengthStub;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    .line 388
    const/4 v0, 0x1

    if-nez p1, :cond_c

    .line 389
    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    goto :goto_2d

    .line 391
    :cond_c
    const-string/jumbo v1, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    .line 393
    const-string v1, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    .line 399
    const-string v1, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    .line 405
    const-string v1, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    .line 412
    :goto_2d
    const v1, 0x7fffffff

    .line 413
    .local v1, "ssRsrpLevel":I
    const v2, 0x7fffffff

    .line 414
    .local v2, "ssRsrqLevel":I
    const v3, 0x7fffffff

    .line 415
    .local v3, "ssSinrLevel":I
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "rsrpBoost":I
    if-eqz p2, :cond_43

    .line 418
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v0

    .line 420
    :cond_43
    iget v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    invoke-direct {p0, v4, v5}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v1

    .line 425
    .end local v0    # "rsrpBoost":I
    :cond_4c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 426
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget-object v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    invoke-direct {p0, v0, v4}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v2

    .line 431
    :cond_5b
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 432
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget-object v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    invoke-direct {p0, v0, v4}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v3

    .line 438
    :cond_6a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    .line 439
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 313
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 318
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return-void
.end method
