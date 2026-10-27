.class public Landroid/media/audiofx/MiSound;
.super Landroid/media/audiofx/AudioEffect;
.source "MiSound.java"


# static fields
.field public static final blacklist EARS_COMPENSATION_DISABLE:I = 0x0

.field public static final blacklist EARS_COMPENSATION_ENABLE:I = 0x1

.field private static final blacklist EFFECT_TYPE_MISOUND:Ljava/util/UUID;

.field public static final blacklist EQ_SOUND_PRESET_DEFAULT:I = 0x0

.field public static final blacklist EQ_SOUND_PRESET_SIXTY:I = 0x3

.field public static final blacklist EQ_SOUND_PRESET_THIRTY:I = 0x1

.field public static final blacklist EQ_SOUND_PRESET_THIRTY_SIXTY:I = 0x2

.field public static final blacklist HEADSETLIST_SIZE:I = 0x12c

.field private static final blacklist MISOUND_BAND_MAX_NUMBER:I = 0x6

.field public static final blacklist MISOUND_HEADSET_EM001:I = 0xf

.field public static final blacklist MISOUND_HEADSET_EM006:I = 0x12

.field public static final blacklist MISOUND_HEADSET_EM007:I = 0x10

.field public static final blacklist MISOUND_HEADSET_EM013:I = 0x13

.field public static final blacklist MISOUND_HEADSET_EM015:I = 0x14

.field public static final blacklist MISOUND_HEADSET_EM017:I = 0x15

.field public static final blacklist MISOUND_HEADSET_EM018:I = 0x16

.field public static final blacklist MISOUND_HEADSET_EM019:I = 0x17

.field public static final blacklist MISOUND_HEADSET_EM031:I = 0x18

.field public static final blacklist MISOUND_HEADSET_EM033:I = 0x19

.field public static final blacklist MISOUND_HEADSET_EM035:I = 0x1a

.field public static final blacklist MISOUND_HEADSET_EM037:I = 0x1b

.field public static final blacklist MISOUND_HEADSET_EM303:I = 0xd

.field public static final blacklist MISOUND_HEADSET_EM304:I = 0xe

.field public static final blacklist MISOUND_HEADSET_GENERAL:I = 0x5

.field public static final blacklist MISOUND_HEADSET_GENERAL_INEAR:I = 0x6

.field public static final blacklist MISOUND_HEADSET_HM004:I = 0x11

.field public static final blacklist MISOUND_HEADSET_MEP100:I = 0x1

.field public static final blacklist MISOUND_HEADSET_MEP200:I = 0x2

.field public static final blacklist MISOUND_HEADSET_MK101:I = 0x7

.field public static final blacklist MISOUND_HEADSET_MK301:I = 0x8

.field public static final blacklist MISOUND_HEADSET_MK303:I = 0x9

.field public static final blacklist MISOUND_HEADSET_MO701:I = 0xa

.field public static final blacklist MISOUND_HEADSET_MR102:I = 0xb

.field public static final blacklist MISOUND_HEADSET_NONE:I = 0x0

.field public static final blacklist MISOUND_HEADSET_PHD:I = 0xc

.field public static final blacklist MISOUND_HEADSET_PISTON100:I = 0x3

.field public static final blacklist MISOUND_HEADSET_PISTON200:I = 0x4

.field public static final blacklist MISOUND_MODE_MOVIE:I = 0x1

.field public static final blacklist MISOUND_MODE_MOVIE_CINEMA:I = 0x0

.field public static final blacklist MISOUND_MODE_MOVIE_CINIMA:I = 0x0

.field public static final blacklist MISOUND_MODE_MOVIE_STUDIO:I = 0x1

.field public static final blacklist MISOUND_MODE_MUSIC:I = 0x0

.field private static final blacklist MISOUND_PARAM_3DSURROUND:I = 0x14

.field private static final blacklist MISOUND_PARAM_ENABLE:I = 0x19

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_ENABLE:I = 0x9

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_EXAMPLE:I = 0xe

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_LEFT:I = 0xa

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_LEFT_SAVE:I = 0xc

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_RIGHT:I = 0xb

.field private static final blacklist MISOUND_PARAM_EQ_COMPENSATION_RIGHT_SAVE:I = 0xd

.field private static final blacklist MISOUND_PARAM_EQ_LEVEL:I = 0x2

.field private static final blacklist MISOUND_PARAM_HEADSETLIST:I = 0x13

.field private static final blacklist MISOUND_PARAM_HEADSET_TYPE:I = 0x1

.field private static final blacklist MISOUND_PARAM_HIFI_MODE:I = 0x8

.field private static final blacklist MISOUND_PARAM_MODE:I = 0x3

.field private static final blacklist MISOUND_PARAM_MOVIE:I = 0x5

.field private static final blacklist MISOUND_PARAM_MOVIE_MODE:I = 0x7

.field private static final blacklist MISOUND_PARAM_MOVIE_MODE_ENABLE:I = 0x12

.field private static final blacklist MISOUND_PARAM_MOVIE_SURROUND:I = 0x10

.field private static final blacklist MISOUND_PARAM_MOVIE_VOCAL:I = 0x11

.field private static final blacklist MISOUND_PARAM_MUSIC:I = 0x4

.field private static final blacklist MISOUND_PARAM_SCENARIO:I = 0xf

.field private static final blacklist MISOUND_PARAM_SOUNDID_ENABLE:I = 0x18

.field private static final blacklist MISOUND_PARAM_SOUNDID_GAIN:I = 0x17

.field public static final blacklist MISOUND_SCENARIO_AUTO:I = 0x4

.field public static final blacklist MISOUND_SCENARIO_DEFAULT:I = 0x0

.field public static final blacklist MISOUND_SCENARIO_MOVIE:I = 0x2

.field public static final blacklist MISOUND_SCENARIO_MUSIC:I = 0x1

.field public static final blacklist MISOUND_SCENARIO_VOCAL:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "MiSound"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    nop

    .line 23
    const-string v0, "5b8e36a5-144a-4c38-b1d7-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I

    .line 101
    sget-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist getEarsCompensationAllEQLeft()[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_16

    .line 357
    .local v1, "eq_value":[F
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 358
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->getEarsCompensationEQLeft(I)F

    move-result v3

    aput v3, v1, v2

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 360
    .end local v2    # "index":I
    :cond_14
    return-object v1

    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public blacklist getEarsCompensationAllEQRight()[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_16

    .line 424
    .local v1, "eq_value":[F
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 425
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->getEarsCompensationEQRight(I)F

    move-result v3

    aput v3, v1, v2

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 427
    .end local v2    # "index":I
    :cond_14
    return-object v1

    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public blacklist getEarsCompensationEQExample()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 289
    const/16 v0, 0xe

    .line 290
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 292
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 294
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getEarsCompensationEQLeft(I)F
    .registers 7
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "level":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 340
    .local v1, "param":[I
    const/16 v2, 0xa

    new-array v3, v2, [B

    .line 342
    .local v3, "value":[B
    const/4 v4, 0x0

    aput v2, v1, v4

    .line 343
    const/4 v2, 0x6

    if-le p1, v2, :cond_f

    .line 344
    const/4 p1, 0x6

    .line 345
    :cond_f
    const/4 v2, 0x1

    aput p1, v1, v2

    .line 346
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 348
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 349
    .local v2, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 351
    return v0
.end method

.method public blacklist getEarsCompensationEQRight(I)F
    .registers 7
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "level":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 407
    .local v1, "param":[I
    const/16 v2, 0xa

    new-array v2, v2, [B

    .line 409
    .local v2, "value":[B
    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v1, v3

    .line 410
    const/4 v3, 0x6

    if-le p1, v3, :cond_11

    .line 411
    const/4 p1, 0x6

    .line 412
    :cond_11
    const/4 v3, 0x1

    aput p1, v1, v3

    .line 413
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 415
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 416
    .local v3, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 418
    return v0
.end method

.method public blacklist getEarsCompensationOn()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 272
    const/16 v0, 0x9

    .line 273
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 275
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 277
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public whitelist getEnabled()Z
    .registers 6

    .line 119
    const/16 v0, 0x19

    .line 120
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 121
    .local v2, "value":[I
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 123
    const/4 v3, 0x0

    aget v4, v2, v3

    if-ne v4, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    return v1
.end method

.method public blacklist getHeadsetList()[I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 473
    const/16 v0, 0x12c

    new-array v0, v0, [B

    .line 474
    .local v0, "value":[B
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/MiSound;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 475
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    const/4 v4, 0x3

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v1, v5

    .line 479
    .local v1, "size":I
    new-array v5, v1, [I

    .line 480
    .local v5, "v":[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MiSound"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_45
    if-ge v6, v1, :cond_90

    .line 482
    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v8, v8, 0x4

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v3

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v4

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v5, v6

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getvalue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 488
    .end local v6    # "i":I
    :cond_90
    return-object v5
.end method

.method public blacklist getHeadsetType()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x1

    .line 186
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 188
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 190
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getLevel(I)F
    .registers 7
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "level":F
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 251
    .local v2, "param":[I
    const/16 v3, 0xa

    new-array v3, v3, [B

    .line 253
    .local v3, "value":[B
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 254
    const/4 v1, 0x1

    aput p1, v2, v1

    .line 255
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 257
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 258
    .local v1, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 260
    return v0
.end method

.method public blacklist getMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x3

    .line 136
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 138
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 140
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getMovie()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x5

    .line 170
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 172
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 174
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getMovieMode()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x7

    .line 440
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 442
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 444
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getMusic()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x4

    .line 153
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 155
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 157
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getScenario()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 463
    const/16 v0, 0xf

    .line 464
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 466
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 468
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getSoundIdEnable()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 195
    const/16 v0, 0x18

    .line 196
    .local v0, "param":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 197
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/MiSound;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 198
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public blacklist getSoundIdGain()[F
    .registers 7

    .line 221
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 222
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 223
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 224
    .local v2, "param":[I
    const/16 v3, 0xa

    new-array v3, v3, [B

    .line 226
    .local v3, "value":[B
    const/4 v4, 0x0

    const/16 v5, 0x17

    aput v5, v2, v4

    .line 227
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/MiSound;->getParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 230
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 231
    .local v4, "gainStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v0, v1

    .line 222
    .end local v2    # "param":[I
    .end local v3    # "value":[B
    .end local v4    # "gainStr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    .end local v1    # "i":I
    :cond_30
    return-object v0
.end method

.method public blacklist set3dSurround(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 514
    const/16 v0, 0x14

    .line 516
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 517
    return-void
.end method

.method public blacklist setEarsCompensationAllEQLeft([FI)V
    .registers 6
    .param p1, "level"    # [F
    .param p2, "band_num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    .line 326
    const/4 p2, 0x6

    .line 327
    :cond_4
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5
    if-ge v0, p2, :cond_21

    .line 328
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_13

    .line 329
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQLeftSave(IF)V

    goto :goto_1e

    .line 330
    :cond_13
    add-int/lit8 v1, p2, -0x1

    if-ne v0, v1, :cond_1e

    .line 331
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQLeft(IF)V

    .line 327
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 334
    .end local v0    # "index":I
    :cond_21
    return-void
.end method

.method public blacklist setEarsCompensationAllEQRight([FI)V
    .registers 6
    .param p1, "level"    # [F
    .param p2, "band_num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    .line 392
    const/4 p2, 0x6

    .line 393
    :cond_4
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5
    if-ge v0, p2, :cond_21

    .line 394
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_13

    .line 395
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQRightSave(IF)V

    goto :goto_1e

    .line 396
    :cond_13
    add-int/lit8 v1, p2, -0x1

    if-ne v0, v1, :cond_1e

    .line 397
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setEarsCompensationEQRight(IF)V

    .line 393
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 401
    .end local v0    # "index":I
    :cond_21
    return-void
.end method

.method public blacklist setEarsCompensationEQExample(I)V
    .registers 4
    .param p1, "example"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 282
    const/16 v0, 0xe

    .line 284
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 285
    return-void
.end method

.method public blacklist setEarsCompensationEQLeft(IF)V
    .registers 7
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 301
    .local v0, "param":[I
    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 302
    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    .line 303
    const/4 p1, 0x6

    .line 304
    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 305
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "levelStr1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 307
    .local v2, "value":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 308
    return-void
.end method

.method public blacklist setEarsCompensationEQLeftSave(IF)V
    .registers 7
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 314
    .local v0, "param":[I
    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 315
    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    .line 316
    const/4 p1, 0x6

    .line 317
    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 318
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "levelStr1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 320
    .local v2, "value":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 321
    return-void
.end method

.method public blacklist setEarsCompensationEQRight(IF)V
    .registers 7
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 367
    .local v0, "param":[I
    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 368
    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    .line 369
    const/4 p1, 0x6

    .line 370
    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 371
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "levelStr1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 373
    .local v2, "value":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 374
    return-void
.end method

.method public blacklist setEarsCompensationEQRightSave(IF)V
    .registers 7
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 380
    .local v0, "param":[I
    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 381
    const/4 v1, 0x6

    if-le p1, v1, :cond_c

    .line 382
    const/4 p1, 0x6

    .line 383
    :cond_c
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 384
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "levelStr1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 386
    .local v2, "value":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 387
    return-void
.end method

.method public blacklist setEarsCompensationOn(I)V
    .registers 4
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 265
    const/16 v0, 0x9

    .line 267
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 268
    return-void
.end method

.method public whitelist setEnabled(Z)I
    .registers 5
    .param p1, "enabled"    # Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSound"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 110
    :try_start_21
    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_25} :catch_26

    return v0

    .line 111
    :catch_26
    move-exception v0

    .line 112
    .local v0, "ie":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist setHeadsetType(I)V
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 181
    return-void
.end method

.method public blacklist setHifiMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 449
    const/16 v0, 0x8

    .line 451
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 452
    return-void
.end method

.method public blacklist setLevel(IF)V
    .registers 7
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 240
    .local v1, "param":[I
    const/4 v2, 0x0

    aput v0, v1, v2

    .line 241
    const/4 v0, 0x1

    aput p1, v1, v0

    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "levelStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 244
    .local v2, "value":[B
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 245
    return-void
.end method

.method public blacklist setMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x3

    .line 130
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 131
    return-void
.end method

.method public blacklist setMovie(I)V
    .registers 4
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x5

    .line 164
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 165
    return-void
.end method

.method public blacklist setMovieMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 432
    const/4 v0, 0x7

    .line 434
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 435
    return-void
.end method

.method public blacklist setMovieModeEnable(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 507
    const/16 v0, 0x12

    .line 509
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 510
    return-void
.end method

.method public blacklist setMovieSurroundLevel(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 493
    const/16 v0, 0x10

    .line 495
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 496
    return-void
.end method

.method public blacklist setMovieVocalLevel(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 500
    const/16 v0, 0x11

    .line 502
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 503
    return-void
.end method

.method public blacklist setMusic(I)V
    .registers 4
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x4

    .line 147
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 148
    return-void
.end method

.method public blacklist setScenario(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 456
    const/16 v0, 0xf

    .line 458
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 459
    return-void
.end method

.method public blacklist setSoundIdEnable(I)V
    .registers 4
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 203
    const/16 v0, 0x18

    .line 204
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/MiSound;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 205
    return-void
.end method

.method public blacklist setSoundIdGain([F)V
    .registers 7
    .param p1, "gainArray"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_47

    .line 210
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 211
    .local v1, "param":[I
    const/4 v2, 0x0

    const/16 v3, 0x17

    aput v3, v1, v2

    .line 212
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 213
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "gainStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " i "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setSoundIdGain"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 216
    .local v3, "value":[B
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/MiSound;->setParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/MiSound;->checkStatus(I)V

    .line 209
    .end local v1    # "param":[I
    .end local v2    # "gainStr":Ljava/lang/String;
    .end local v3    # "value":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    :cond_47
    return-void
.end method
