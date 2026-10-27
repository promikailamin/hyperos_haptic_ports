.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$Settings;
    }
.end annotation


# static fields
.field public static final whitelist PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final whitelist PARAM_BAND_LEVEL:I = 0x2

.field public static final whitelist PARAM_CENTER_FREQ:I = 0x3

.field public static final whitelist PARAM_CURRENT_PRESET:I = 0x6

.field public static final whitelist PARAM_GET_BAND:I = 0x5

.field public static final whitelist PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final whitelist PARAM_GET_PRESET_NAME:I = 0x8

.field public static final whitelist PARAM_LEVEL_RANGE:I = 0x1

.field public static final whitelist PARAM_NUM_BANDS:I = 0x0

.field private static final greylist-max-o PARAM_PROPERTIES:I = 0x9

.field public static final whitelist PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private greylist-max-o mNumBands:S

.field private greylist-max-o mNumPresets:I

.field private greylist-max-o mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;

.field private greylist-max-o mPresetNames:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 96
    const/4 p1, 0x0

    iput-short p1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 115
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    .line 141
    const-string v0, "Equalizer"

    if-nez p2, :cond_1f

    .line 142
    const-string p2, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1f
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    .line 147
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result p2

    iput p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 149
    iget p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz p2, :cond_5f

    .line 150
    iget p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    .line 151
    const/16 p2, 0x20

    new-array p2, p2, [B

    .line 152
    nop

    .line 153
    nop

    .line 154
    move v1, p1

    :goto_39
    iget v2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v1, v2, :cond_5f

    .line 155
    const/16 v2, 0x8

    filled-new-array {v2, v1}, [I

    move-result-object v2

    .line 156
    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    move-result v2

    .line 157
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 159
    :try_start_4a
    iget-object v3, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, p2, p1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_55} :catch_56

    .line 162
    goto :goto_5c

    .line 160
    :catch_56
    move-exception v2

    .line 161
    const-string v2, "preset name decode error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 165
    :cond_5f
    return-void
.end method


# virtual methods
.method public whitelist getBand(I)S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 299
    nop

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 302
    nop

    .line 303
    const/4 v1, 0x5

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 306
    const/4 p1, 0x0

    aget-short p1, v0, p1

    return p1
.end method

.method public whitelist getBandFreqRange(S)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 282
    nop

    .line 283
    const/4 v1, 0x4

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 286
    return-object v0
.end method

.method public whitelist getBandLevel(S)S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 236
    nop

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 239
    nop

    .line 240
    const/4 v1, 0x2

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 243
    const/4 p1, 0x0

    aget-short p1, v0, p1

    return p1
.end method

.method public whitelist getBandLevelRange()[S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 200
    return-object v0
.end method

.method public whitelist getCenterFreq(S)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 258
    nop

    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 261
    nop

    .line 262
    const/4 v1, 0x3

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 263
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 265
    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getCurrentPreset()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 319
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 320
    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public whitelist getNumberOfBands()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 176
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v0, :cond_7

    .line 177
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v0

    .line 179
    :cond_7
    nop

    .line 180
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 181
    const/4 v2, 0x1

    new-array v2, v2, [S

    .line 182
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 183
    aget-short v0, v2, v0

    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 184
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v0
.end method

.method public whitelist getNumberOfPresets()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [S

    .line 348
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 349
    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public whitelist getPresetName(S)Ljava/lang/String;
    .registers 3

    .line 362
    if-ltz p1, :cond_b

    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_b

    .line 363
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 365
    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method public whitelist getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 523
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 524
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 525
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .line 526
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    iput-short v4, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 527
    invoke-static {v0, v1}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 528
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v1, v1, [S

    iput-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 529
    nop

    :goto_2a
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v3, v1, :cond_3d

    .line 530
    iget-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v1, v3

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 532
    :cond_3d
    return-object v2
.end method

.method public whitelist setBandLevel(SS)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 216
    nop

    .line 217
    nop

    .line 219
    nop

    .line 220
    const/4 v0, 0x2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    .line 221
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    .line 222
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 223
    return-void
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .registers 4

    .line 432
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_16

    .line 434
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 435
    new-instance p1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer-IA;)V

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 436
    iget-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 438
    :cond_16
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 545
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_43

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ne v0, v1, :cond_43

    .line 550
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v0

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 551
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v1

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v0

    .line 552
    const/4 v1, 0x0

    :goto_22
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v1, v2, :cond_39

    .line 553
    iget-object v2, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v2, v2, v1

    .line 554
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v0

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 556
    :cond_39
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 557
    return-void

    .line 547
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings invalid band count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short p1, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist usePreset(S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    .line 335
    return-void
.end method
