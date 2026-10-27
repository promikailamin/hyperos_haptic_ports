.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothCodecConfig$ChannelMode;,
        Landroid/bluetooth/BluetoothCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final whitelist BITS_PER_SAMPLE_16:I = 0x1

.field public static final whitelist BITS_PER_SAMPLE_24:I = 0x2

.field public static final whitelist BITS_PER_SAMPLE_32:I = 0x4

.field public static final whitelist BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_JOINT_STEREO:I = 0x4

.field public static final whitelist CHANNEL_MODE_MONO:I = 0x1

.field public static final whitelist CHANNEL_MODE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_STEREO:I = 0x2

.field public static final whitelist CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final whitelist CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SAMPLE_RATE_16000:I = 0x40

.field public static final whitelist SAMPLE_RATE_176400:I = 0x10

.field public static final whitelist SAMPLE_RATE_192000:I = 0x20

.field public static final whitelist SAMPLE_RATE_24000:I = 0x80

.field public static final whitelist SAMPLE_RATE_32000:I = 0x100

.field public static final whitelist SAMPLE_RATE_44100:I = 0x1

.field public static final whitelist SAMPLE_RATE_48000:I = 0x2

.field public static final whitelist SAMPLE_RATE_8000:I = 0x200

.field public static final whitelist SAMPLE_RATE_88200:I = 0x4

.field public static final whitelist SAMPLE_RATE_96000:I = 0x8

.field public static final whitelist SAMPLE_RATE_NONE:I = 0x0

.field public static final whitelist SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final whitelist SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x6

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x7

.field public static final whitelist SOURCE_CODEC_TYPE_CELT:I = 0x8

.field public static final whitelist SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final whitelist SOURCE_CODEC_TYPE_LC3:I = 0x5

.field public static final whitelist SOURCE_CODEC_TYPE_LDAC:I = 0x4

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV1:I = 0xe

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV2:I = 0xc

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV3:I = 0xd

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV5:I = 0x13

.field public static final whitelist SOURCE_CODEC_TYPE_MAX:I = 0xa

.field public static final whitelist SOURCE_CODEC_TYPE_SBC:I = 0x0

.field public static final whitelist SOURCE_QVA_CODEC_TYPE_MAX:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothCodecConfig"


# instance fields
.field private final greylist-max-o mBitsPerSample:I

.field private final greylist-max-o mChannelMode:I

.field private greylist-max-o mCodecPriority:I

.field private final greylist-max-o mCodecSpecific1:J

.field private final greylist-max-o mCodecSpecific2:J

.field private final greylist-max-o mCodecSpecific3:J

.field private final greylist-max-o mCodecSpecific4:J

.field private final greylist-max-o mCodecType:I

.field private blacklist mEncoderFormat:I

.field private final greylist-max-o mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 473
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 16
    .param p1, "codecType"    # I

    .line 333
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 337
    return-void
.end method

.method public constructor blacklist <init>(IIIIIJJJJ)V
    .registers 14
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 293
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 294
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 295
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 296
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 297
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 298
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 299
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 300
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 301
    return-void
.end method

.method public constructor blacklist <init>(IIIIIJJJJI)V
    .registers 15
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J
    .param p14, "encoderFormat"    # I

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 321
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 322
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 323
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 324
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 325
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 326
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 327
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 328
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 329
    iput p14, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    .line 330
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 349
    return-void
.end method

.method private static greylist-max-o appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "prevStr"    # Ljava/lang/String;
    .param p1, "capStr"    # Ljava/lang/String;

    .line 388
    if-nez p0, :cond_3

    .line 389
    return-object p1

    .line 391
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCodecName(I)Ljava/lang/String;
    .registers 3
    .param p0, "codecType"    # I

    .line 525
    sparse-switch p0, :sswitch_data_44

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :sswitch_1d
    const-string v0, "INVALID CODEC"

    return-object v0

    .line 544
    :sswitch_20
    const-string v0, "LHDC V5"

    return-object v0

    .line 550
    :sswitch_23
    const-string v0, "LHDC_V1"

    return-object v0

    .line 546
    :sswitch_26
    const-string v0, "LHDC_V3"

    return-object v0

    .line 548
    :sswitch_29
    const-string v0, "LHDC_V2"

    return-object v0

    .line 541
    :sswitch_2c
    const-string v0, "aptX TWS+"

    return-object v0

    .line 539
    :sswitch_2f
    const-string v0, "aptX Adaptive"

    return-object v0

    .line 537
    :sswitch_32
    const-string v0, "LC3"

    return-object v0

    .line 535
    :sswitch_35
    const-string v0, "LDAC"

    return-object v0

    .line 533
    :sswitch_38
    const-string v0, "aptX HD"

    return-object v0

    .line 531
    :sswitch_3b
    const-string v0, "aptX"

    return-object v0

    .line 529
    :sswitch_3e
    const-string v0, "AAC"

    return-object v0

    .line 527
    :sswitch_41
    const-string v0, "SBC"

    return-object v0

    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_41
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_35
        0x5 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0xc -> :sswitch_29
        0xd -> :sswitch_26
        0xe -> :sswitch_23
        0x13 -> :sswitch_20
        0xf4240 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static blacklist hasSingleBit(I)Z
    .registers 2
    .param p0, "valueSet"    # I

    .line 721
    if-eqz p0, :cond_a

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 353
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 354
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 355
    .local v0, "other":Landroid/bluetooth/BluetoothCodecConfig;
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_47

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    .line 365
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_48
    return v1
.end method

.method public whitelist getBitsPerSample()I
    .registers 2

    .line 612
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public whitelist getChannelMode()I
    .registers 2

    .line 620
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public whitelist getCodecPriority()I
    .registers 2

    .line 584
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public whitelist getCodecSpecific1()J
    .registers 3

    .line 640
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific2()J
    .registers 3

    .line 660
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific3()J
    .registers 3

    .line 680
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific4()J
    .registers 3

    .line 700
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public whitelist getCodecType()I
    .registers 2

    .line 564
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public whitelist getEncoderFormat()I
    .registers 3

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEncoderFormat mEncoderFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCodecType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCodecConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public blacklist hasSingleBitsPerSample()Z
    .registers 2

    .line 737
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleChannelMode()Z
    .registers 2

    .line 745
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleSampleRate()Z
    .registers 2

    .line 729
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 374
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 376
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 374
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMandatoryCodec()Z
    .registers 2

    .line 575
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 6
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 756
    if-eqz p1, :cond_2e

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v1, :cond_2e

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v1, :cond_2e

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v0, v1, :cond_2e

    iget-wide v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method public blacklist sameCodecSpecificParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 7
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 810
    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-eq v1, v2, :cond_a

    .line 811
    return v0

    .line 813
    :cond_a
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    sparse-switch v1, :sswitch_data_46

    goto :goto_44

    .line 817
    :sswitch_10
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_19

    .line 818
    return v0

    .line 821
    :cond_19
    :sswitch_19
    iget-wide v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_22

    .line 822
    return v0

    .line 829
    :cond_22
    :sswitch_22
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3a

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3a

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3b

    .line 832
    :cond_3a
    return v0

    .line 835
    :cond_3b
    :sswitch_3b
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    .line 836
    return v0

    .line 841
    :cond_44
    :goto_44
    const/4 v0, 0x1

    return v0

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_3b
        0x1 -> :sswitch_10
        0x4 -> :sswitch_10
        0x5 -> :sswitch_10
        0x6 -> :sswitch_19
        0xc -> :sswitch_22
        0xd -> :sswitch_22
        0xe -> :sswitch_22
        0x13 -> :sswitch_22
    .end sparse-switch
.end method

.method public blacklist setCodecPriority(I)V
    .registers 2
    .param p1, "codecPriority"    # I

    .line 596
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 597
    return-void
.end method

.method public whitelist setEncoderFormat(I)V
    .registers 4
    .param p1, "format"    # I

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEncoderFormat format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCodecType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCodecConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    .line 711
    return-void
.end method

.method public blacklist similarCodecFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 23
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5a

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_5a

    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    goto :goto_5a

    .line 779
    :cond_12
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 780
    .local v2, "sampleRate":I
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v3, :cond_1a

    if-nez v2, :cond_1c

    .line 782
    :cond_1a
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 784
    :cond_1c
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 785
    .local v3, "bitsPerSample":I
    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v4, :cond_28

    if-nez v3, :cond_25

    goto :goto_28

    :cond_25
    move/from16 v17, v3

    goto :goto_2c

    .line 787
    :cond_28
    :goto_28
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    move/from16 v17, v3

    .line 789
    .end local v3    # "bitsPerSample":I
    .local v17, "bitsPerSample":I
    :goto_2c
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 790
    .local v3, "channelMode":I
    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v4, :cond_38

    if-nez v3, :cond_35

    goto :goto_38

    :cond_35
    move/from16 v18, v3

    goto :goto_3c

    .line 792
    :cond_38
    :goto_38
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    move/from16 v18, v3

    .line 794
    .end local v3    # "channelMode":I
    .local v18, "channelMode":I
    :goto_3c
    new-instance v15, Landroid/bluetooth/BluetoothCodecConfig;

    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    move-object v3, v15

    move v6, v2

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v1, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v16}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v1

    return v1

    .line 777
    .end local v2    # "sampleRate":I
    .end local v17    # "bitsPerSample":I
    .end local v18    # "channelMode":I
    :cond_5a
    :goto_5a
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "sampleRateStr":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const-string v2, "NONE"

    if-nez v1, :cond_b

    .line 402
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_b
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_17

    .line 405
    const-string v1, "44100"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_17
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_23

    .line 408
    const-string v1, "48000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_23
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2f

    .line 411
    const-string v1, "88200"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_2f
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3b

    .line 414
    const-string v1, "96000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_3b
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_47

    .line 417
    const-string v1, "176400"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_47
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_53

    .line 420
    const-string v1, "192000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_53
    const/4 v1, 0x0

    .line 424
    .local v1, "bitsPerSampleStr":Ljava/lang/String;
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v4, :cond_5c

    .line 425
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    :cond_5c
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_67

    .line 428
    const-string v4, "16"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    :cond_67
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_73

    .line 431
    const-string v4, "24"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_73
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7f

    .line 434
    const-string v4, "32"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_7f
    const/4 v4, 0x0

    .line 438
    .local v4, "channelModeStr":Ljava/lang/String;
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v5, :cond_88

    .line 439
    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    :cond_88
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_93

    .line 442
    const-string v2, "MONO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    :cond_93
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9f

    .line 445
    const-string v2, "STEREO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{codecName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v5}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mCodecType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mCodecPriority:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mSampleRate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 451
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0x%x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "),mBitsPerSample:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 453
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "),mChannelMode:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 455
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),mCodecSpecific1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mEncoderFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 508
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 515
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 516
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 517
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mEncoderFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    return-void
.end method
