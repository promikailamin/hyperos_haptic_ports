.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final whitelist CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_INVALID:I = 0x0

.field public static final blacklist CHANNEL_IN_2POINT0POINT2:I = 0x60000c

.field public static final blacklist CHANNEL_IN_2POINT1POINT2:I = 0x70000c

.field public static final blacklist CHANNEL_IN_3POINT0POINT2:I = 0x64000c

.field public static final blacklist CHANNEL_IN_3POINT1POINT2:I = 0x74000c

.field public static final blacklist CHANNEL_IN_5POINT1:I = 0x1700fc

.field public static final whitelist CHANNEL_IN_BACK:I = 0x20

.field public static final blacklist CHANNEL_IN_BACK_LEFT:I = 0x10000

.field public static final whitelist CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final blacklist CHANNEL_IN_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_IN_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_IN_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_IN_FRONT:I = 0x10

.field public static final greylist-max-o CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final whitelist CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final whitelist CHANNEL_IN_LEFT:I = 0x4

.field public static final whitelist CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final blacklist CHANNEL_IN_LOW_FREQUENCY:I = 0x100000

.field public static final whitelist CHANNEL_IN_MONO:I = 0x10

.field public static final whitelist CHANNEL_IN_PRESSURE:I = 0x400

.field public static final whitelist CHANNEL_IN_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final whitelist CHANNEL_IN_STEREO:I = 0xc

.field public static final blacklist CHANNEL_IN_TOP_LEFT:I = 0x200000

.field public static final blacklist CHANNEL_IN_TOP_RIGHT:I = 0x400000

.field public static final whitelist CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final whitelist CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final whitelist CHANNEL_IN_X_AXIS:I = 0x800

.field public static final whitelist CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final whitelist CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final blacklist CHANNEL_OUT_13POINT_360RA:I = 0x1cbd81c

.field public static final blacklist CHANNEL_OUT_22POINT2:I = 0x3fffffc

.field public static final whitelist CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT2:I = 0x3000fc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT4:I = 0xb40fc

.field public static final greylist-max-o CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final whitelist CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_OUT_7POINT1POINT2:I = 0x3018fc

.field public static final whitelist CHANNEL_OUT_7POINT1POINT4:I = 0xb58fc

.field public static final whitelist CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT4:I = 0xc0b58fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT6:I = 0xc3b58fc

.field public static final whitelist CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final whitelist CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final whitelist CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_CENTER:I = 0x800000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_LEFT:I = 0x400000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_RIGHT:I = 0x1000000

.field public static final whitelist CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_LEFT:I = 0x4000000

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_RIGHT:I = 0x8000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_A:I = 0x20000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_B:I = 0x10000000

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY_2:I = 0x2000000

.field public static final whitelist CHANNEL_OUT_MONO:I = 0x4

.field public static final whitelist CHANNEL_OUT_QUAD:I = 0xcc

.field public static final greylist-max-o CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final whitelist CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final whitelist CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final whitelist CHANNEL_OUT_STEREO:I = 0xc

.field public static final whitelist CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final whitelist CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final whitelist CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_LEFT:I = 0x100000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_RIGHT:I = 0x200000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ENCODING_AAC_ELD:I = 0xf

.field public static final whitelist ENCODING_AAC_HE_V1:I = 0xb

.field public static final whitelist ENCODING_AAC_HE_V2:I = 0xc

.field public static final whitelist ENCODING_AAC_LC:I = 0xa

.field public static final whitelist ENCODING_AAC_XHE:I = 0x10

.field public static final whitelist ENCODING_AC3:I = 0x5

.field public static final whitelist ENCODING_AC4:I = 0x11

.field public static final blacklist ENCODING_AMRNB:I = 0x64

.field public static final blacklist ENCODING_AMRWB:I = 0x65

.field public static final whitelist ENCODING_DEFAULT:I = 0x1

.field public static final whitelist ENCODING_DOLBY_MAT:I = 0x13

.field public static final whitelist ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final whitelist ENCODING_DRA:I = 0x1c

.field public static final whitelist ENCODING_DTS:I = 0x7

.field public static final whitelist ENCODING_DTS_HD:I = 0x8

.field public static final whitelist ENCODING_DTS_UHD:I = 0x1b

.field public static final blacklist ENCODING_EVRC:I = 0x66

.field public static final blacklist ENCODING_EVRCB:I = 0x67

.field public static final blacklist ENCODING_EVRCNW:I = 0x69

.field public static final blacklist ENCODING_EVRCWB:I = 0x68

.field public static final whitelist ENCODING_E_AC3:I = 0x6

.field public static final whitelist ENCODING_E_AC3_JOC:I = 0x12

.field public static final whitelist ENCODING_IEC61937:I = 0xd

.field public static final whitelist ENCODING_INVALID:I = 0x0

.field public static final blacklist ENCODING_LEGACY_SHORT_ARRAY_THRESHOLD:I = 0x14

.field public static final whitelist ENCODING_MP3:I = 0x9

.field public static final whitelist ENCODING_MPEGH_BL_L3:I = 0x17

.field public static final whitelist ENCODING_MPEGH_BL_L4:I = 0x18

.field public static final whitelist ENCODING_MPEGH_LC_L3:I = 0x19

.field public static final whitelist ENCODING_MPEGH_LC_L4:I = 0x1a

.field public static final whitelist ENCODING_OPUS:I = 0x14

.field public static final whitelist ENCODING_PCM_16BIT:I = 0x2

.field public static final whitelist ENCODING_PCM_24BIT_PACKED:I = 0x15

.field public static final whitelist ENCODING_PCM_32BIT:I = 0x16

.field public static final whitelist ENCODING_PCM_8BIT:I = 0x3

.field public static final whitelist ENCODING_PCM_FLOAT:I = 0x4

.field public static final greylist-max-o SAMPLE_RATE_HZ_MAX:I

.field public static final greylist-max-o SAMPLE_RATE_HZ_MIN:I

.field public static final whitelist SAMPLE_RATE_UNSPECIFIED:I

.field public static final greylist-max-o SURROUND_SOUND_ENCODING:[I


# instance fields
.field private final blacklist mChannelCount:I

.field private final greylist-max-o mChannelIndexMask:I

.field private final greylist-max-r mChannelMask:I

.field private final greylist-max-r mEncoding:I

.field private final blacklist mFrameSizeInBytes:I

.field private final greylist-max-o mPropertySetMask:I

.field private final greylist-max-r mSampleRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 611
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    .line 617
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    .line 1411
    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1472
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x11
        0x12
        0x13
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-r <init>(IIII)V
    .registers 11
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "channelIndexMask"    # I

    .line 979
    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 986
    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 10
    .param p1, "propertySetMask"    # I
    .param p2, "encoding"    # I
    .param p3, "sampleRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "channelIndexMask"    # I

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 991
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 992
    move v0, p2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 993
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_15

    .line 994
    move v2, p3

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    iput v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 995
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1e

    .line 996
    move v2, p4

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 997
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_27

    .line 998
    move v1, p5

    goto :goto_28

    :cond_27
    nop

    :goto_28
    iput v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1002
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 1003
    .local v1, "channelIndexCount":I
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    .line 1004
    .local v2, "channelCount":I
    if-nez v2, :cond_3e

    .line 1005
    move v2, v1

    goto :goto_43

    .line 1006
    :cond_3e
    if-eq v2, v1, :cond_43

    if-eqz v1, :cond_43

    .line 1007
    const/4 v2, 0x0

    .line 1009
    :cond_43
    :goto_43
    iput v2, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1011
    const/4 v3, 0x1

    .line 1013
    .local v3, "frameSizeInBytes":I
    :try_start_46
    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4a} :catch_4d

    mul-int v3, v0, v2

    .line 1016
    goto :goto_4e

    .line 1014
    :catch_4d
    move-exception v0

    .line 1019
    :goto_4e
    if-eqz v3, :cond_52

    move v0, v3

    goto :goto_53

    :cond_52
    const/4 v0, 0x1

    :goto_53
    iput v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    .line 1020
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/AudioFormat-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1402
    nop

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1402
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 1409
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist channelCountFromInChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .line 655
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static blacklist channelCountFromOutChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .line 665
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o convertChannelOutMaskToNativeMask(I)I
    .registers 2
    .param p0, "javaMask"    # I

    .line 674
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o convertNativeChannelMaskToOutMask(I)I
    .registers 2
    .param p0, "nativeMask"    # I

    .line 684
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o filterPublicFormats([I)[I
    .registers 5
    .param p0, "formats"    # [I

    .line 950
    if-nez p0, :cond_4

    .line 951
    const/4 v0, 0x0

    return-object v0

    .line 953
    :cond_4
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 954
    .local v0, "myCopy":[I
    const/4 v1, 0x0

    .line 955
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 956
    aget v3, v0, v2

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 957
    if-eq v1, v2, :cond_1c

    .line 958
    aget v3, v0, v2

    aput v3, v0, v1

    .line 960
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 955
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 963
    .end local v2    # "i":I
    :cond_21
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getBytesPerSample(I)I
    .registers 4
    .param p0, "audioFormat"    # I

    .line 751
    sparse-switch p0, :sswitch_data_2e

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :sswitch_1c
    const/16 v0, 0x17

    return v0

    .line 766
    :sswitch_1f
    const/16 v0, 0x3d

    return v0

    .line 764
    :sswitch_22
    const/16 v0, 0x20

    return v0

    .line 759
    :sswitch_25
    const/4 v0, 0x3

    return v0

    .line 762
    :sswitch_27
    const/4 v0, 0x4

    return v0

    .line 753
    :sswitch_29
    const/4 v0, 0x1

    return v0

    .line 757
    :sswitch_2b
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_29
        0x4 -> :sswitch_27
        0xd -> :sswitch_2b
        0x15 -> :sswitch_25
        0x16 -> :sswitch_27
        0x64 -> :sswitch_22
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o inChannelMaskFromOutChannelMask(I)I
    .registers 3
    .param p0, "outMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 633
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    .line 637
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :pswitch_12
    const/16 v0, 0xc

    return v0

    .line 639
    :pswitch_15
    const/16 v0, 0x10

    return v0

    .line 634
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static greylist-max-o isEncodingLinearFrames(I)Z
    .registers 4
    .param p0, "audioFormat"    # I

    .line 908
    packed-switch p0, :pswitch_data_20

    .line 941
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :pswitch_1c
    const/4 v0, 0x0

    return v0

    .line 916
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist isEncodingLinearPcm(I)Z
    .registers 4
    .param p0, "audioFormat"    # I

    .line 862
    sparse-switch p0, :sswitch_data_20

    .line 901
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :sswitch_1c
    const/4 v0, 0x0

    return v0

    .line 869
    :sswitch_1e
    const/4 v0, 0x1

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1c
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1c
        0xa -> :sswitch_1c
        0xb -> :sswitch_1c
        0xc -> :sswitch_1c
        0xd -> :sswitch_1c
        0xe -> :sswitch_1c
        0xf -> :sswitch_1c
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1c
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1c
        0x15 -> :sswitch_1e
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1c
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicEncoding(I)Z
    .registers 2
    .param p0, "audioFormat"    # I

    .line 824
    packed-switch p0, :pswitch_data_8

    .line 854
    const/4 v0, 0x0

    return v0

    .line 852
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o isValidEncoding(I)Z
    .registers 2
    .param p0, "audioFormat"    # I

    .line 781
    sparse-switch p0, :sswitch_data_8

    .line 817
    const/4 v0, 0x0

    return v0

    .line 815
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x1c -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o toDisplayName(I)Ljava/lang/String;
    .registers 2
    .param p0, "audioFormat"    # I

    .line 1521
    packed-switch p0, :pswitch_data_34

    .line 1553
    :pswitch_3
    const-string v0, "Unknown surround sound format"

    return-object v0

    .line 1551
    :pswitch_6
    const-string v0, "DRA"

    return-object v0

    .line 1549
    :pswitch_9
    const-string v0, "DTS UHD"

    return-object v0

    .line 1547
    :pswitch_c
    const-string v0, "MPEG-H 3D Audio low complexity profile level 4"

    return-object v0

    .line 1545
    :pswitch_f
    const-string v0, "MPEG-H 3D Audio low complexity profile level 3"

    return-object v0

    .line 1543
    :pswitch_12
    const-string v0, "MPEG-H 3D Audio baseline profile level 4"

    return-object v0

    .line 1541
    :pswitch_15
    const-string v0, "MPEG-H 3D Audio baseline profile level 3"

    return-object v0

    .line 1539
    :pswitch_18
    const-string v0, "Dolby MAT"

    return-object v0

    .line 1537
    :pswitch_1b
    const-string v0, "Dolby Atmos in Dolby Digital Plus"

    return-object v0

    .line 1535
    :pswitch_1e
    const-string v0, "Dolby AC-4"

    return-object v0

    .line 1533
    :pswitch_21
    const-string v0, "Dolby TrueHD"

    return-object v0

    .line 1531
    :pswitch_24
    const-string v0, "AAC"

    return-object v0

    .line 1529
    :pswitch_27
    const-string v0, "DTS HD"

    return-object v0

    .line 1527
    :pswitch_2a
    const-string v0, "DTS"

    return-object v0

    .line 1525
    :pswitch_2d
    const-string v0, "Dolby Digital Plus"

    return-object v0

    .line 1523
    :pswitch_30
    const-string v0, "Dolby Digital"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x5
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_24
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyEncoding(I)Ljava/lang/String;
    .registers 3
    .param p0, "enc"    # I

    .line 385
    packed-switch p0, :pswitch_data_6c

    .line 443
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 441
    :pswitch_17
    const-string v0, "ENCODING_DRA"

    return-object v0

    .line 439
    :pswitch_1a
    const-string v0, "ENCODING_DTS_UHD"

    return-object v0

    .line 437
    :pswitch_1d
    const-string v0, "ENCODING_MPEGH_LC_L4"

    return-object v0

    .line 435
    :pswitch_20
    const-string v0, "ENCODING_MPEGH_LC_L3"

    return-object v0

    .line 433
    :pswitch_23
    const-string v0, "ENCODING_MPEGH_BL_L4"

    return-object v0

    .line 431
    :pswitch_26
    const-string v0, "ENCODING_MPEGH_BL_L3"

    return-object v0

    .line 429
    :pswitch_29
    const-string v0, "ENCODING_PCM_32BIT"

    return-object v0

    .line 427
    :pswitch_2c
    const-string v0, "ENCODING_PCM_24BIT_PACKED"

    return-object v0

    .line 425
    :pswitch_2f
    const-string v0, "ENCODING_OPUS"

    return-object v0

    .line 423
    :pswitch_32
    const-string v0, "ENCODING_DOLBY_MAT"

    return-object v0

    .line 421
    :pswitch_35
    const-string v0, "ENCODING_E_AC3_JOC"

    return-object v0

    .line 419
    :pswitch_38
    const-string v0, "ENCODING_AC4"

    return-object v0

    .line 417
    :pswitch_3b
    const-string v0, "ENCODING_AAC_XHE"

    return-object v0

    .line 415
    :pswitch_3e
    const-string v0, "ENCODING_AAC_ELD"

    return-object v0

    .line 413
    :pswitch_41
    const-string v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    .line 411
    :pswitch_44
    const-string v0, "ENCODING_IEC61937"

    return-object v0

    .line 409
    :pswitch_47
    const-string v0, "ENCODING_AAC_HE_V2"

    return-object v0

    .line 407
    :pswitch_4a
    const-string v0, "ENCODING_AAC_HE_V1"

    return-object v0

    .line 405
    :pswitch_4d
    const-string v0, "ENCODING_AAC_LC"

    return-object v0

    .line 403
    :pswitch_50
    const-string v0, "ENCODING_MP3"

    return-object v0

    .line 401
    :pswitch_53
    const-string v0, "ENCODING_DTS_HD"

    return-object v0

    .line 399
    :pswitch_56
    const-string v0, "ENCODING_DTS"

    return-object v0

    .line 397
    :pswitch_59
    const-string v0, "ENCODING_E_AC3"

    return-object v0

    .line 395
    :pswitch_5c
    const-string v0, "ENCODING_AC3"

    return-object v0

    .line 393
    :pswitch_5f
    const-string v0, "ENCODING_PCM_FLOAT"

    return-object v0

    .line 391
    :pswitch_62
    const-string v0, "ENCODING_PCM_8BIT"

    return-object v0

    .line 389
    :pswitch_65
    const-string v0, "ENCODING_PCM_16BIT"

    return-object v0

    .line 387
    :pswitch_68
    const-string v0, "ENCODING_INVALID"

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_68
        :pswitch_3
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 1363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1364
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 1366
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioFormat;

    .line 1368
    .local v2, "that":Landroid/media/AudioFormat;
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 1371
    :cond_1c
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_26

    iget v4, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v5, v2, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v4, v5, :cond_45

    :cond_26
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_30

    iget v4, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v5, v2, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v4, v5, :cond_45

    :cond_30
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3a

    iget v4, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v5, v2, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v4, v5, :cond_45

    :cond_3a
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_46

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    :cond_46
    :goto_46
    return v0

    .line 1364
    .end local v2    # "that":Landroid/media/AudioFormat;
    :cond_47
    :goto_47
    return v1
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 1099
    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    return v0
.end method

.method public whitelist getChannelIndexMask()I
    .registers 2

    .line 1090
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public whitelist getChannelMask()I
    .registers 2

    .line 1078
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public whitelist getEncoding()I
    .registers 2

    .line 1057
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public whitelist getFrameSizeInBytes()I
    .registers 2

    .line 1118
    iget v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return v0
.end method

.method public greylist-max-o getPropertySetMask()I
    .registers 2

    .line 1123
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 1066
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1383
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1383
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o toLogFriendlyString()Ljava/lang/String;
    .registers 4

    .line 1128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1128
    const-string v1, "%dch %dHz %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1423
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 1426
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1427
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1423
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1394
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    return-void
.end method
