.class public Lmiui/telephony/dtmf/DTMFUtil;
.super Ljava/lang/Object;
.source "DTMFUtil.java"


# static fields
.field private static final blacklist DECIBEL_THRESHOLD_LIST:[I

.field private static final blacklist DEFAULT_SAMPLE_RATE:I = 0x1f40

.field private static final blacklist FREQUENCE_INDEX_GAP:I = 0x5

.field private static final blacklist HEALTHY:I = 0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DTMFUtil"

.field private static final blacklist SAMPLE_RATE_LIST:[I

.field private static final blacklist STEP:I = 0x100

.field private static final blacklist TARGET_FREQUENCIES:[F

.field private static final blacklist TARGET_HIGH_FREQUENCY:F = 1075.0f

.field private static final blacklist TARGET_LOW_FREQUENCY:F = 600.0f

.field private static final blacklist VERSION:I = 0x2


# instance fields
.field private blacklist mHealthy:I

.field private blacklist mPreCalculatedCosines:[F

.field private blacklist mSampleRate:I

.field private blacklist mWnkList:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    .line 18
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    .line 21
    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x44160000    # 600.0f
        0x442e4000    # 697.0f
        0x44408000    # 770.0f
        0x44550000    # 852.0f
        0x446b4000    # 941.0f
        0x44866000    # 1075.0f
        0x44972000    # 1209.0f
        0x44a70000    # 1336.0f
        0x44b8a000    # 1477.0f
        0x44cc2000    # 1633.0f
    .end array-data

    :array_32
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0x7d00
        0xac44
    .end array-data

    :array_40
    .array-data 4
        0x17
        0x20
        0x1f
        0x22
        0x25
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 58
    const/16 v0, 0x1f40

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFUtil;-><init>(II)V

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "sampleRate"    # I
    .param p2, "healthy"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    .line 36
    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    .line 62
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    .line 63
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    .line 64
    if-lez p2, :cond_18

    move v0, p2

    goto :goto_19

    :cond_18
    const/4 v0, 0x3

    :goto_19
    iput v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    .line 65
    return-void
.end method

.method private blacklist bufferFilter([FI)[F
    .registers 11
    .param p1, "buffer"    # [F
    .param p2, "len"    # I

    .line 182
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 183
    return-object p1

    .line 185
    :cond_5
    new-array v0, v1, [F

    .line 186
    .local v0, "ret":[F
    const/4 v2, 0x0

    aget v3, p1, v2

    .line 187
    .local v3, "low":F
    const/4 v4, 0x1

    aget v5, p1, v4

    .line 188
    .local v5, "high":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_e
    array-length v7, p1

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_1d

    .line 189
    aget v7, p1, v6

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_1a

    .line 190
    aget v3, p1, v6

    .line 188
    :cond_1a
    add-int/lit8 v6, v6, 0x2

    goto :goto_e

    .line 193
    .end local v6    # "i":I
    :cond_1d
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_1e
    array-length v7, p1

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_2d

    .line 194
    aget v7, p1, v6

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_2a

    .line 195
    aget v5, p1, v6

    .line 193
    :cond_2a
    add-int/lit8 v6, v6, 0x2

    goto :goto_1e

    .line 198
    .end local v6    # "j":I
    :cond_2d
    aget v1, p1, v2

    cmpl-float v1, v3, v1

    if-nez v1, :cond_42

    aget v1, p1, v4

    cmpl-float v1, v5, v1

    if-nez v1, :cond_42

    .line 199
    aget v1, p1, v2

    aput v1, v0, v2

    .line 200
    aget v1, p1, v4

    aput v1, v0, v4

    .line 201
    return-object v0

    .line 203
    :cond_42
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist dtmfDetectAndValidate([BIZ)[F
    .registers 15
    .param p1, "audioDataList"    # [B
    .param p2, "bitPerSample"    # I
    .param p3, "sign"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "segfrom":I
    const/4 v1, 0x0

    .line 133
    .local v1, "segto":I
    const/4 v2, 0x0

    .line 134
    .local v2, "vcnt":I
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 135
    .local v3, "bufferSegment":[B
    iget v4, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    .line 136
    .local v4, "detectedBuffer":[F
    new-array v5, v5, [F

    .line 137
    .local v5, "detect":[F
    new-instance v6, Lmiui/telephony/dtmf/DTMFAudioInputStream;

    invoke-direct {v6, p1}, Lmiui/telephony/dtmf/DTMFAudioInputStream;-><init>([B)V

    .line 139
    .local v6, "streamReader":Lmiui/telephony/dtmf/DTMFAudioInputStream;
    new-instance v7, Lmiui/telephony/dtmf/DTMFDataConveter;

    invoke-direct {v7, p2, p3}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    .line 140
    .local v7, "Converter":Lmiui/telephony/dtmf/DTMFDataConveter;
    :goto_19
    iget v8, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ge v2, v8, :cond_4d

    .line 141
    array-length v8, p1

    if-lt v1, v8, :cond_21

    .line 142
    goto :goto_4d

    .line 144
    :cond_21
    move v0, v1

    .line 145
    add-int/lit16 v8, v1, 0x100

    array-length v9, p1

    if-le v8, v9, :cond_29

    array-length v8, p1

    goto :goto_2b

    .line 146
    :cond_29
    add-int/lit16 v8, v1, 0x100

    :goto_2b
    move v1, v8

    .line 147
    sub-int v8, v1, v0

    invoke-virtual {v6, v3, v8}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read([BI)I

    .line 149
    invoke-virtual {v7, v3}, Lmiui/telephony/dtmf/DTMFDataConveter;->byteToFloat([B)[F

    move-result-object v8

    .line 150
    .local v8, "floatbuff":[F
    invoke-direct {p0, v8}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfFrequenciesDetecter([F)[F

    move-result-object v5

    .line 151
    if-eqz v5, :cond_4c

    .line 152
    mul-int/lit8 v9, v2, 0x2

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v4, v9

    .line 153
    mul-int/lit8 v9, v2, 0x2

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget v10, v5, v10

    aput v10, v4, v9

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 156
    .end local v8    # "floatbuff":[F
    :cond_4c
    goto :goto_19

    .line 157
    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->close()V

    .line 158
    iget v8, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ne v2, v8, :cond_5b

    .line 159
    mul-int/lit8 v8, v2, 0x2

    invoke-direct {p0, v4, v8}, Lmiui/telephony/dtmf/DTMFUtil;->bufferFilter([FI)[F

    move-result-object v8

    return-object v8

    .line 161
    :cond_5b
    const/4 v8, 0x0

    return-object v8
.end method

.method private blacklist dtmfFrequenciesDetecter([F)[F
    .registers 19
    .param p1, "audioDataList"    # [F

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v3, v2

    new-array v3, v3, [Z

    .line 86
    .local v3, "detectFrequencies":[Z
    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 87
    .local v5, "outpair":[F
    const/4 v6, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    aput v7, v5, v6

    const/4 v8, 0x0

    aput v7, v5, v8

    .line 89
    iget v7, v0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {v0, v7}, Lmiui/telephony/dtmf/DTMFUtil;->getDecibelThreshold(I)I

    move-result v7

    .line 90
    .local v7, "threshold":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_25

    .line 91
    const-string v2, "DTMFUtil"

    const-string v4, "can not get threshold"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v5

    .line 95
    :cond_25
    const/4 v9, 0x0

    .local v9, "skn0":F
    const/4 v10, 0x0

    .local v10, "skn1":F
    const/4 v11, 0x0

    .line 96
    .local v11, "skn2":F
    array-length v2, v2

    new-array v2, v2, [F

    .line 97
    .local v2, "calculatedDual":[F
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2c
    sget-object v13, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v13, v13

    if-ge v12, v13, :cond_6f

    .line 98
    const/4 v13, 0x0

    move v11, v13

    move v10, v13

    move v9, v13

    .line 99
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_36
    array-length v14, v1

    if-ge v13, v14, :cond_48

    .line 100
    move v11, v10

    .line 101
    move v10, v9

    .line 102
    iget-object v14, v0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    aget v14, v14, v12

    mul-float/2addr v14, v10

    sub-float/2addr v14, v11

    aget v15, v1, v13

    add-float v9, v14, v15

    .line 99
    add-int/lit8 v13, v13, 0x1

    goto :goto_36

    .line 105
    .end local v13    # "i":I
    :cond_48
    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    aget v15, v15, v12

    mul-float/2addr v15, v10

    sub-float v15, v9, v15

    .line 106
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v9

    .end local v9    # "skn0":F
    .local v16, "skn0":F
    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v8, v13

    .line 107
    .local v8, "dbdata":D
    double-to-float v13, v8

    aput v13, v2, v12

    .line 109
    aget v13, v2, v12

    int-to-float v14, v7

    cmpl-float v13, v13, v14

    if-lez v13, :cond_69

    .line 110
    aput-boolean v6, v3, v12

    .line 97
    .end local v8    # "dbdata":D
    :cond_69
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_2c

    .line 114
    .end local v12    # "j":I
    .end local v16    # "skn0":F
    .restart local v9    # "skn0":F
    :cond_6f
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_70
    array-length v12, v3

    div-int/2addr v12, v4

    if-ge v8, v12, :cond_96

    .line 115
    add-int/lit8 v12, v8, 0x5

    sget-object v13, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v14, v13

    rem-int/2addr v12, v14

    .line 116
    .local v12, "matchIndex":I
    aget-boolean v14, v3, v8

    if-eqz v14, :cond_92

    aget-boolean v14, v3, v12

    if-eqz v14, :cond_92

    .line 117
    aget v14, v13, v8

    const/4 v15, 0x0

    aput v14, v5, v15

    .line 118
    aget v13, v13, v12

    aput v13, v5, v6

    .line 119
    invoke-direct {v0, v5}, Lmiui/telephony/dtmf/DTMFUtil;->isValidate([F)Z

    move-result v13

    if-eqz v13, :cond_93

    .line 120
    return-object v5

    .line 116
    :cond_92
    const/4 v15, 0x0

    .line 114
    .end local v12    # "matchIndex":I
    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    .line 125
    .end local v8    # "k":I
    :cond_96
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist getAudioFloatBuffer([FII)[F
    .registers 25
    .param p0, "dualFrequence"    # [F
    .param p1, "sampleRate"    # I
    .param p2, "time"    # I

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, p2

    div-int/lit16 v2, v2, 0x3e8

    .line 268
    .local v2, "sampleSize":I
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    .line 269
    const-string v3, "DTMFUtil"

    const-string v4, "parameter buffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v3, 0x0

    return-object v3

    .line 273
    :cond_15
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 274
    .local v3, "amplitudeF0":D
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 275
    .local v5, "amplitudeF1":D
    const/4 v7, 0x0

    aget v7, v0, v7

    float-to-double v7, v7

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v7, v9

    .line 276
    .local v7, "twoPiF0":D
    const/4 v11, 0x1

    aget v11, v0, v11

    float-to-double v11, v11

    mul-double/2addr v11, v9

    .line 277
    .local v11, "twoPiF1":D
    new-array v9, v2, [F

    .line 278
    .local v9, "buffer":[F
    const/4 v10, 0x0

    .local v10, "sample":I
    :goto_2b
    array-length v13, v9

    if-ge v10, v13, :cond_55

    .line 279
    int-to-double v13, v10

    move v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "sampleSize":I
    .end local v3    # "amplitudeF0":D
    .local v15, "sampleSize":I
    .local v16, "amplitudeF0":D
    int-to-double v2, v1

    div-double/2addr v13, v2

    .line 280
    .local v13, "time_detail":D
    mul-double v2, v7, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v18

    .line 281
    .local v2, "f0Component":D
    mul-double v20, v11, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    .line 282
    .local v20, "f1Component":D
    add-double v0, v2, v20

    double-to-float v0, v0

    aput v0, v9, v10

    .line 278
    .end local v2    # "f0Component":D
    .end local v13    # "time_detail":D
    .end local v20    # "f1Component":D
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move-wide/from16 v3, v16

    goto :goto_2b

    .line 284
    .end local v10    # "sample":I
    .end local v15    # "sampleSize":I
    .end local v16    # "amplitudeF0":D
    .local v2, "sampleSize":I
    .restart local v3    # "amplitudeF0":D
    :cond_55
    return-object v9
.end method

.method private blacklist getDecibelThreshold(I)I
    .registers 7
    .param p1, "sampleRate"    # I

    .line 221
    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v0, v0

    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    array-length v1, v1

    const/4 v2, -0x1

    const-string v3, "DTMFUtil"

    if-eq v0, v1, :cond_11

    .line 222
    const-string v0, "the number of SAMPLE_RATE_LIST and DECIBEL_THRESHOLD_LIST can not match"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v2

    .line 226
    :cond_11
    const/4 v0, 0x0

    .line 227
    .local v0, "it":I
    const/4 v0, 0x0

    :goto_13
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v4, v1

    if-ge v0, v4, :cond_20

    .line 228
    aget v4, v1, v0

    if-ne p1, v4, :cond_1d

    .line 229
    goto :goto_20

    .line 227
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 232
    :cond_20
    :goto_20
    array-length v1, v1

    if-lt v0, v1, :cond_29

    .line 233
    const-string v1, "can not find db threshold"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v2

    .line 236
    :cond_29
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    aget v1, v1, v0

    return v1
.end method

.method public static whitelist getDualFrequence(C)[F
    .registers 11
    .param p0, "button"    # C

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 289
    .local v0, "hzPair":[F
    const/high16 v1, 0x44550000    # 852.0f

    const v2, 0x44408000    # 770.0f

    const v3, 0x442e4000    # 697.0f

    const v4, 0x446b4000    # 941.0f

    const/high16 v5, 0x44a70000    # 1336.0f

    const v6, 0x44972000    # 1209.0f

    const v7, 0x44b8a000    # 1477.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_60

    .line 339
    :pswitch_1b
    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v8

    aput v1, v0, v9

    goto :goto_5e

    .line 327
    :pswitch_22
    aput v1, v0, v9

    .line 328
    aput v7, v0, v8

    .line 329
    goto :goto_5e

    .line 323
    :pswitch_27
    aput v1, v0, v9

    .line 324
    aput v5, v0, v8

    .line 325
    goto :goto_5e

    .line 319
    :pswitch_2c
    aput v1, v0, v9

    .line 320
    aput v6, v0, v8

    .line 321
    goto :goto_5e

    .line 315
    :pswitch_31
    aput v2, v0, v9

    .line 316
    aput v7, v0, v8

    .line 317
    goto :goto_5e

    .line 311
    :pswitch_36
    aput v2, v0, v9

    .line 312
    aput v5, v0, v8

    .line 313
    goto :goto_5e

    .line 307
    :pswitch_3b
    aput v2, v0, v9

    .line 308
    aput v6, v0, v8

    .line 309
    goto :goto_5e

    .line 303
    :pswitch_40
    aput v3, v0, v9

    .line 304
    aput v7, v0, v8

    .line 305
    goto :goto_5e

    .line 299
    :pswitch_45
    aput v3, v0, v9

    .line 300
    aput v5, v0, v8

    .line 301
    goto :goto_5e

    .line 295
    :pswitch_4a
    aput v3, v0, v9

    .line 296
    aput v6, v0, v8

    .line 297
    goto :goto_5e

    .line 291
    :pswitch_4f
    aput v4, v0, v9

    .line 292
    aput v5, v0, v8

    .line 293
    goto :goto_5e

    .line 331
    :pswitch_54
    aput v4, v0, v9

    .line 332
    aput v6, v0, v8

    .line 333
    goto :goto_5e

    .line 335
    :pswitch_59
    aput v4, v0, v9

    .line 336
    aput v7, v0, v8

    .line 337
    nop

    .line 341
    :goto_5e
    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x23
        :pswitch_59
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_54
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public static whitelist getTargetHighFrequency()F
    .registers 1

    .line 54
    const v0, 0x44866000    # 1075.0f

    return v0
.end method

.method public static whitelist getTargetLowFrequency()F
    .registers 1

    .line 50
    const/high16 v0, 0x44160000    # 600.0f

    return v0
.end method

.method public static whitelist getVersion()I
    .registers 1

    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist initPrecalculatedCosines()V
    .registers 9

    .line 166
    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    if-nez v0, :cond_c

    .line 167
    const-string v0, "DTMFUtil"

    const-string v1, "fail to dispatching funtion initPrecalculatedCosines: you need to set mSampleRate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 171
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v2, v1

    if-ge v0, v2, :cond_44

    .line 172
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    aget v6, v1, v0

    float-to-double v6, v6

    mul-double/2addr v6, v4

    iget v4, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v4, v4

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 174
    .local v4, "dbdata1":D
    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    double-to-float v3, v4

    aput v3, v2, v0

    .line 175
    const-wide v2, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    aget v1, v1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v2

    iget v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v1, v1

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    .line 177
    .local v1, "dbdata2":D
    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    double-to-float v6, v1

    aput v6, v3, v0

    .line 171
    .end local v1    # "dbdata2":D
    .end local v4    # "dbdata1":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 179
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private blacklist isValidate([F)Z
    .registers 10
    .param p1, "detect"    # [F

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 241
    const-string v1, "DTMFUtil"

    const-string v2, "null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v0

    .line 244
    :cond_b
    const/high16 v1, 0x43860000    # 268.0f

    .line 245
    .local v1, "gap":F
    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p1, v0

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v1

    if-gez v3, :cond_18

    .line 246
    return v0

    .line 249
    :cond_18
    const/4 v3, 0x0

    .line 250
    .local v3, "check1":I
    const/4 v4, 0x0

    .line 251
    .local v4, "check2":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    sget-object v6, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v7, v6

    if-ge v5, v7, :cond_33

    .line 252
    aget v7, p1, v0

    aget v6, v6, v5

    cmpl-float v7, v7, v6

    if-nez v7, :cond_29

    .line 253
    move v3, v5

    .line 255
    :cond_29
    aget v7, p1, v2

    cmpl-float v6, v7, v6

    if-nez v6, :cond_30

    .line 256
    move v4, v5

    .line 251
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 259
    .end local v5    # "i":I
    :cond_33
    sub-int v5, v4, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_39

    .line 260
    return v2

    .line 262
    :cond_39
    return v0
.end method


# virtual methods
.method public whitelist getHealthy()I
    .registers 2

    .line 77
    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 68
    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    return v0
.end method

.method public whitelist parseFrequency([BIZ)[F
    .registers 6
    .param p1, "byteBuffer"    # [B
    .param p2, "bitPerSample"    # I
    .param p3, "sign"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    if-nez p1, :cond_b

    .line 214
    const-string v0, "DTMFUtil"

    const-string v1, "parameter error: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfDetectAndValidate([BIZ)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist setHealthy(I)V
    .registers 2
    .param p1, "healthy"    # I

    .line 81
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    .line 82
    return-void
.end method

.method public whitelist setSampleRate(I)V
    .registers 2
    .param p1, "sampleRate"    # I

    .line 72
    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    .line 73
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    .line 74
    return-void
.end method
