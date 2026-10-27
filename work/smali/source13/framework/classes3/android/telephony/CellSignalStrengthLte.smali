.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"

.field private static final blacklist MAX_LTE_RSRP:I = -0x2c

.field private static final blacklist MIN_LTE_RSRP:I = -0x8c

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_ASU_UNKNOWN:I = 0x63

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MAX_VALUE:I = 0x1f

.field private static final blacklist SIGNAL_STRENGTH_LTE_RSSI_VALID_ASU_MIN_VALUE:I = 0x0

.field public static final blacklist USE_RSRP:I = 0x1

.field public static final blacklist USE_RSRQ:I = 0x2

.field public static final blacklist USE_RSSNR:I = 0x4

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthLte;

.field private static final blacklist sRsrpBoost:I

.field private static final blacklist sRsrpThresholds:[I

.field private static final blacklist sRsrqThresholds:[I

.field private static final blacklist sRssnrThresholds:[I


# instance fields
.field private greylist-max-p mCqi:I

.field private blacklist mCqiTableIndex:I

.field private blacklist mLevel:I

.field private blacklist mParametersUseForLevel:I

.field private greylist-max-p mRsrp:I

.field private greylist-max-p mRsrq:I

.field private blacklist mRssi:I

.field private greylist-max-p mRssnr:I

.field private greylist-max-p mSignalStrength:I

.field private greylist-max-p mTimingAdvance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 222
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_26

    sput-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 230
    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 237
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 508
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    .line 601
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_26
    .array-data 4
        -0x73
        -0x69
        -0x5f
        -0x55
    .end array-data

    :array_32
    .array-data 4
        -0x13
        -0x11
        -0xe
        -0xc
    .end array-data

    :array_3e
    .array-data 4
        -0x3
        0x1
        0x5
        0xd
    .end array-data
.end method

.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 123
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIII)V
    .registers 15
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .line 165
    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .registers 10
    .param p1, "rssi"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqiTableIndex"    # I
    .param p6, "cqi"    # I
    .param p7, "timingAdvance"    # I

    .line 139
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 140
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 141
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 142
    const/16 v0, -0x8c

    const/16 v1, -0x2b

    invoke-static {p2, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 143
    const/16 v0, -0x22

    const/4 v1, 0x3

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 144
    const/16 v0, -0x14

    const/16 v1, 0x1e

    invoke-static {p4, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {p5, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 146
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-static {p6, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 147
    const/16 v1, 0x502

    invoke-static {p7, v0, v1}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 577
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 579
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    .line 591
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 169
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 171
    return-void
.end method

.method public static blacklist convertRssiAsuToDBm(I)I
    .registers 4
    .param p0, "rssiAsu"    # I

    .line 628
    const v0, 0x7fffffff

    const/16 v1, 0x63

    if-ne p0, v1, :cond_8

    .line 629
    return v0

    .line 631
    :cond_8
    if-ltz p0, :cond_14

    const/16 v1, 0x1f

    if-le p0, v1, :cond_f

    goto :goto_14

    .line 636
    :cond_f
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0

    .line 633
    :cond_14
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertRssiAsuToDBm: invalid RSSI in ASU="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellSignalStrengthLte"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v0
.end method

.method public static blacklist convertRssnrUnitFromTenDbToDB(I)I
    .registers 3
    .param p0, "rssnr"    # I

    .line 623
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private blacklist isLevelForParameter(I)Z
    .registers 3
    .param p1, "parameterType"    # I

    .line 257
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 618
    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .registers 4
    .param p1, "measure"    # I
    .param p2, "thresholds"    # [I

    .line 374
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 375
    const v0, 0x7fffffff

    .local v0, "level":I
    goto :goto_26

    .line 376
    .end local v0    # "level":I
    :cond_9
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_10

    .line 377
    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_26

    .line 378
    .end local v0    # "level":I
    :cond_10
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_17

    .line 379
    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_26

    .line 380
    .end local v0    # "level":I
    :cond_17
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_1e

    .line 381
    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_26

    .line 382
    .end local v0    # "level":I
    :cond_1e
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_25

    .line 383
    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_26

    .line 385
    .end local v0    # "level":I
    :cond_25
    const/4 v0, 0x0

    .line 387
    .restart local v0    # "level":I
    :goto_26
    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthLte;
    .registers 2

    .line 193
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 175
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 176
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 177
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 178
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 179
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 180
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 181
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 182
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 183
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 184
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 186
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    .line 187
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    .line 188
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 520
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 521
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    .line 523
    .local v0, "s":Landroid/telephony/CellSignalStrengthLte;
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 4

    .line 480
    const/16 v0, 0x63

    .line 481
    .local v0, "lteAsuLevel":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 482
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_c

    const/16 v0, 0x63

    goto :goto_1b

    .line 483
    :cond_c
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_12

    const/4 v0, 0x0

    goto :goto_1b

    .line 484
    :cond_12
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_19

    const/16 v0, 0x61

    goto :goto_1b

    .line 485
    :cond_19
    add-int/lit16 v0, v1, 0x8c

    .line 487
    :goto_1b
    return v0
.end method

.method public whitelist getCqi()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return v0
.end method

.method public whitelist getCqiTableIndex()I
    .registers 2

    .line 445
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 468
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 218
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    return v0
.end method

.method public whitelist getRsrp()I
    .registers 2

    .line 432
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public whitelist getRsrq()I
    .registers 2

    .line 397
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    return v0
.end method

.method public whitelist getRssnr()I
    .registers 2

    .line 421
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public whitelist getTimingAdvance()I
    .registers 2

    .line 499
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 504
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 505
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 504
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 513
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->sInvalid:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 3

    .line 199
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 200
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    .line 201
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 202
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 203
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 204
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    .line 205
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 206
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 208
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 210
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    .line 211
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    .line 212
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqiTableIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " miuiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOptimizedLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parametersUseForLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 14
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 264
    invoke-static {p1, p2, p0}, Landroid/telephony/MiuiSignalStrengthStub;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    .line 267
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 268
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 269
    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 270
    .local v1, "rsrpThresholds":[I
    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 271
    .local v2, "rsrqThresholds":[I
    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 272
    .local v3, "rssnrThresholds":[I
    const/4 v4, 0x0

    .local v4, "rsrpOnly":Z
    goto :goto_45

    .line 274
    .end local v1    # "rsrpThresholds":[I
    .end local v2    # "rsrqThresholds":[I
    .end local v3    # "rssnrThresholds":[I
    .end local v4    # "rsrpOnly":Z
    :cond_13
    const-string/jumbo v1, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthLte;->mParametersUseForLevel:I

    .line 279
    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 281
    .restart local v1    # "rsrpThresholds":[I
    if-nez v1, :cond_27

    sget-object v1, Landroid/telephony/CellSignalStrengthLte;->sRsrpThresholds:[I

    .line 286
    :cond_27
    const-string/jumbo v2, "lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 288
    .restart local v2    # "rsrqThresholds":[I
    if-nez v2, :cond_32

    sget-object v2, Landroid/telephony/CellSignalStrengthLte;->sRsrqThresholds:[I

    .line 293
    :cond_32
    const-string/jumbo v3, "lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 295
    .restart local v3    # "rssnrThresholds":[I
    if-nez v3, :cond_3d

    sget-object v3, Landroid/telephony/CellSignalStrengthLte;->sRssnrThresholds:[I

    .line 300
    :cond_3d
    const/4 v4, 0x0

    const-string/jumbo v5, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {p1, v5, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 304
    .restart local v4    # "rsrpOnly":Z
    :goto_45
    const/4 v5, 0x0

    .line 305
    .local v5, "rsrpBoost":I
    if-eqz p2, :cond_4c

    .line 306
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v5

    .line 309
    :cond_4c
    iget v6, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    add-int/2addr v6, v5

    const/16 v7, -0x8c

    const/16 v8, -0x2c

    invoke-static {v6, v7, v8}, Landroid/telephony/CellSignalStrengthLte;->inRangeOrUnavailable(III)I

    move-result v6

    .line 311
    .local v6, "rsrp":I
    const v7, 0x7fffffff

    if-eqz v4, :cond_65

    .line 312
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 314
    .local v8, "level":I
    if-eq v8, v7, :cond_65

    .line 315
    iput v8, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 316
    return-void

    .line 320
    .end local v8    # "level":I
    :cond_65
    const v8, 0x7fffffff

    .line 321
    .local v8, "rsrpLevel":I
    const v9, 0x7fffffff

    .line 322
    .local v9, "rsrqLevel":I
    const v10, 0x7fffffff

    .line 324
    .local v10, "rssnrLevel":I
    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 325
    invoke-direct {p0, v6, v1}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v8

    .line 330
    :cond_78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 331
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-direct {p0, v0, v2}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v9

    .line 336
    :cond_85
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthLte;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 337
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-direct {p0, v0, v3}, Landroid/telephony/CellSignalStrengthLte;->updateLevelWithMeasure(I[I)I

    move-result v10

    .line 343
    :cond_92
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 345
    if-ne v0, v7, :cond_c1

    .line 347
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    const/16 v7, -0x33

    if-le v0, v7, :cond_a6

    .line 348
    const/4 v0, 0x0

    .local v0, "rssiLevel":I
    goto :goto_bf

    .line 349
    .end local v0    # "rssiLevel":I
    :cond_a6
    const/16 v7, -0x59

    if-lt v0, v7, :cond_ac

    .line 350
    const/4 v0, 0x4

    .restart local v0    # "rssiLevel":I
    goto :goto_bf

    .line 351
    .end local v0    # "rssiLevel":I
    :cond_ac
    const/16 v7, -0x61

    if-lt v0, v7, :cond_b2

    .line 352
    const/4 v0, 0x3

    .restart local v0    # "rssiLevel":I
    goto :goto_bf

    .line 353
    .end local v0    # "rssiLevel":I
    :cond_b2
    const/16 v7, -0x67

    if-lt v0, v7, :cond_b8

    .line 354
    const/4 v0, 0x2

    .restart local v0    # "rssiLevel":I
    goto :goto_bf

    .line 355
    .end local v0    # "rssiLevel":I
    :cond_b8
    const/16 v7, -0x71

    if-lt v0, v7, :cond_be

    .line 356
    const/4 v0, 0x1

    .restart local v0    # "rssiLevel":I
    goto :goto_bf

    .line 358
    .end local v0    # "rssiLevel":I
    :cond_be
    const/4 v0, 0x0

    .line 361
    .restart local v0    # "rssiLevel":I
    :goto_bf
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    .line 363
    .end local v0    # "rssiLevel":I
    :cond_c1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 557
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqiTableIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mOptimizedLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    return-void
.end method
