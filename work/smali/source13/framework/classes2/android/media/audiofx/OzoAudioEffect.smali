.class public Landroid/media/audiofx/OzoAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "OzoAudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;,
        Landroid/media/audiofx/OzoAudioEffect$OzoParameters;
    }
.end annotation


# static fields
.field private static final blacklist OZO_EFFECT_TYPE:Ljava/util/UUID;

.field private static final blacklist OZO_EFFECT_UUID:Ljava/util/UUID;

.field private static final blacklist TAG:Ljava/lang/String; = "OzoAudioEffect"


# instance fields
.field private final blacklist OZO_CAPTURE_AUDIO_LEVEL:I

.field private final blacklist OZO_CAPTURE_MICBLOCKING_LEVEL:I

.field private final blacklist OZO_CAPTURE_WNR_LEVEL:I

.field private final blacklist OZO_PARAM_DEVICE_UUID:I

.field private final blacklist OZO_PARAM_GENERIC:I

.field private final blacklist OZO_PARAM_MICBLOCKING_MODE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const-string v0, "56d6b082-1a83-455a-84a8-9db3a35cf532"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_TYPE:Ljava/util/UUID;

    .line 34
    const-string v0, "7e384a3b-7850-4a64-a097-884250d8a737"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 385
    sget-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_TYPE:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_UUID:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 36
    const v0, 0x1b207

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_DEVICE_UUID:I

    .line 37
    const v0, 0x1b20f

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_WNR_LEVEL:I

    .line 38
    const v0, 0x1b211

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_AUDIO_LEVEL:I

    .line 39
    const v0, 0x1b212

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_MICBLOCKING_MODE:I

    .line 40
    const v0, 0x1b213

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_MICBLOCKING_LEVEL:I

    .line 42
    const v0, 0x1b214

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_GENERIC:I

    .line 386
    return-void
.end method

.method public static blacklist create(I)Landroid/media/audiofx/OzoAudioEffect;
    .registers 6
    .param p0, "audioSession"    # I

    .line 85
    const-string v0, "OzoAudioEffect"

    const/4 v1, 0x0

    .line 87
    .local v1, "ozo":Landroid/media/audiofx/OzoAudioEffect;
    :try_start_3
    new-instance v2, Landroid/media/audiofx/OzoAudioEffect;

    invoke-direct {v2, p0}, Landroid/media/audiofx/OzoAudioEffect;-><init>(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    move-object v1, v2

    .line 94
    :goto_9
    goto :goto_30

    .line 92
    :catch_a
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "not enough memory"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 90
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_11
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "not enough resources"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_9

    .line 88
    :catch_18
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implemented on this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9

    .line 95
    :goto_30
    return-object v1
.end method


# virtual methods
.method public blacklist disableFocus()I
    .registers 3

    .line 280
    const-string v0, "focus"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist disableNs()I
    .registers 3

    .line 207
    const-string v0, "ns"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist disableWnr()I
    .registers 3

    .line 149
    const-string/jumbo v0, "wnr"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist enableFocus()I
    .registers 3

    .line 269
    const-string v0, "focus"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist enableMicBlocking()I
    .registers 4

    .line 221
    const v0, 0x1b212

    :try_start_3
    const-string v1, "on"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 222
    :catch_10
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable mic blocking detection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist enableNs(Z)I
    .registers 4
    .param p1, "smart"    # Z

    .line 192
    const-string v0, "on"

    .line 193
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 194
    const-string v0, "smart"

    .line 196
    :cond_7
    const-string v1, "ns"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public blacklist enableWnr()I
    .registers 3

    .line 138
    const-string/jumbo v0, "wnr"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getAudioLevel()[I
    .registers 5

    .line 175
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 176
    .local v0, "value":[B
    const v1, 0x1b211

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    const/4 v2, 0x2

    if-ltz v1, :cond_20

    .line 177
    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    return-object v1

    .line 179
    :cond_20
    new-array v1, v2, [I

    fill-array-data v1, :array_26

    return-object v1

    :array_26
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public blacklist getDevice()Ljava/lang/String;
    .registers 3

    .line 125
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 126
    .local v0, "value":[B
    const v1, 0x1b207

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    .line 127
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist getMicBlocking(Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;

    .line 250
    const/16 v0, 0x44

    new-array v0, v0, [B

    .line 251
    .local v0, "value":[B
    const v1, 0x1b213

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    if-ltz v1, :cond_28

    .line 252
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 253
    .local v1, "nEvents":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x4

    .local v3, "offset":I
    :goto_14
    if-ge v2, v1, :cond_28

    .line 254
    invoke-static {v0, v3}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 255
    .local v4, "micIndex":I
    add-int/lit8 v5, v3, 0x4

    invoke-static {v0, v5}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v5

    .line 256
    .local v5, "level":I
    invoke-interface {p1, v4, v5}, Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;->onMicBlocking(II)V

    .line 253
    .end local v4    # "micIndex":I
    .end local v5    # "level":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_14

    .line 259
    .end local v1    # "nEvents":I
    .end local v2    # "i":I
    .end local v3    # "offset":I
    :cond_28
    return-void
.end method

.method public blacklist getWnrLevel()I
    .registers 3

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 161
    .local v0, "value":[B
    const v1, 0x1b20f

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    if-ltz v1, :cond_10

    .line 162
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1

    .line 164
    :cond_10
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist setDevice(Ljava/lang/String;)I
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 110
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 111
    .local v0, "uuid":[B
    const v1, 0x1b207

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v1
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return v1

    .line 112
    .end local v0    # "uuid":[B
    :catch_e
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set device ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, -0x4

    return v1
.end method

.method public blacklist setFocusAzimuth(D)I
    .registers 5
    .param p1, "azimuth"    # D

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-azimuth"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFocusElevation(D)I
    .registers 5
    .param p1, "elevation"    # D

    .line 316
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-elevation"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFocusGain(D)I
    .registers 5
    .param p1, "gain"    # D

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zoom"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFocusHeight(D)I
    .registers 5
    .param p1, "height"    # D

    .line 340
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFocusWidth(D)I
    .registers 5
    .param p1, "width"    # D

    .line 328
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-width"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 356
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "value2":Ljava/lang/String;
    const v1, 0x1b214

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v1
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_24} :catch_25

    return v1

    .line 358
    .end local v0    # "value2":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set Ozo parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, -0x4

    return v1
.end method
